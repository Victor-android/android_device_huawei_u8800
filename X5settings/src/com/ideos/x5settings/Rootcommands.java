package com.ideos.x5settings;

import java.io.DataOutputStream;
import android.util.Log;

public class Rootcommands {
	public static boolean runRootCommand(String command) {
	    Process process = null;
	    DataOutputStream os = null;
	            try {
	                    process = Runtime.getRuntime().exec("su");
	            os = new DataOutputStream(process.getOutputStream());
	            os.writeBytes(command+"\n");
	            os.writeBytes("exit\n");
	            os.flush();
	            process.waitFor();
	            } catch (Exception e) {
	                    Log.d("*** DEBUG ***", "Unexpected error: "+e.getMessage());
	                    return false;
	            }
	            finally {
	                    try {
	                            if (os != null) {
	                                    os.close();
	                            }
	                            process.destroy();
	                    } catch (Exception e) {
	                            //do nothing
	                    }
	            }
	            return true;
	
	    
	} 
}