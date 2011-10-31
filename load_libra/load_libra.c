#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>

#define LOG_TAG "LoadLibra"
#include "cutils/log.h"
#include "cutils/misc.h"
#include "cutils/properties.h"

#define WIFI_DRIVER_LOADER_DELAY	1000000

static const char DRIVER_MODULE_PATH[]  = "/system/lib/modules/libra.ko";

extern void huawei_oem_rapi_streaming_function(int n, int p1, int p2, int p3, int *v1, int *v2, int *v3);
extern int init_module(void *, unsigned long, const char *);
extern int delete_module(const char *, unsigned int);

void getmac(char *mac_param)
{
    char x[6];
    int y;

    memset(x,0,6);
    y=0;    
    huawei_oem_rapi_streaming_function(3,0,0,0,0,&y,x);
    LOGI("huawei_oem_rapi_streaming_function %p %x %x",x,x[1],y);
    sprintf(mac_param,"mac_param=%02X:%02X:%02X:%02X:%02X:%02X",x[5],x[4],x[3],x[2],x[1],x[0]);
    LOGI("Got MAC Address: %s ",mac_param);
}

static int insmod(const char *filename, char *args)
{
    void *module;
    unsigned int size;
    int ret;
    LOGI("Loading module");
    module = load_file(filename, &size);
    if (!module)
        return -1;
    LOGI("Init module");
    ret = init_module(module, size, args);

    free(module);

    return ret;
}

static int rmmod(const char *modname)
{
    int ret = -1;
    int maxtry = 10;

    while (maxtry-- > 0) {
        ret = delete_module(modname, O_NONBLOCK | O_EXCL | O_TRUNC);
        if (ret < 0 && errno == EAGAIN)
            usleep(500000);
        else
            break;
    }

    if (ret != 0)
        LOGD("Unable to unload driver module \"%s\": %s\n",
             modname, strerror(errno));
    return ret;
}

static int write_int(char const* path, int value)
{
    int fd;
    static int already_warned = 0;

    fd = open(path, O_RDWR);
    if (fd >= 0) {
        char buffer[20];
        int bytes = sprintf(buffer, "%d\n", value);
        int amt = write(fd, buffer, bytes);
        close(fd);
        return amt == -1 ? -errno : 0;
    } else {
        if (already_warned == 0) {
            LOGE("write_int failed to open %s\n", path);
            already_warned = 1;
        }
        return -errno;
    }
}

int main(void)
{
    char mac_param[128];

    write_int("/sys/devices/platform/msm_sdcc.3/polling", 1);
    
    getmac(mac_param);
    LOGI("Loading Libra.ko");
    if ((insmod(DRIVER_MODULE_PATH, mac_param)) < 0){
        rmmod("librasdioif");
    } else {
        usleep(WIFI_DRIVER_LOADER_DELAY);
        property_set("wlan.driver.status", "ok");       
    }

    write_int("/sys/devices/platform/msm_sdcc.3/polling", 0);

    return 0;
}
