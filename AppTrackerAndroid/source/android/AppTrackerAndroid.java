/*AppTrackerAndroid

/* 
java implementation of the AppTrackers extension.

Add android-specific functionality here.

These functions are called via JNI from native code.
*/
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
import com.ideaworks3d.marmalade.LoaderAPI;
import com.ideaworks3d.marmalade.LoaderActivity;
import android.content.Context;
import com.apptracker.android.track.AppTracker;
import com.apptracker.android.listener.AppModuleListener;
import com.apptracker.android.util.AppLog;

class AppTrackerAndroid
{
    private String API_key = null;
    private static Context ctx = null;
    private String event_string = null;
    private float event_float = (float)0.0;
    private int event_int = 0;
    private String code_string = null;
    private String user_Data = null;

    private native void moduleLoaded();
    private native void moduleFailed();
    private native void moduleClosed();
    private native void moduleCached();
    private native void moduleClicked();
    private native void MediaFinished();

    private AppModuleListener listener = new AppModuleListener () {
    public void onModuleLoaded(String placement){
        moduleLoaded();
    }
    public void onModuleFailed(String placement,String error,boolean fromCache){
        moduleFailed();
    }
    public void onModuleClosed(String placement){
        moduleClosed();
    }
    public void onModuleCached(String placement){
        moduleCached();
    }
    public void onModuleClicked(String placement) {moduleClicked();}
    public void onMediaFinished(boolean arg) {MediaFinished();}

   };

    public int startSession(String api_key)
    {
    API_key = api_key;
    ctx = (Context)LoaderActivity.m_Activity;
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    AppTracker.setModuleListener(listener);
                                    AppTracker.startSession(ctx,API_key);
                                    //AppTracker.startSession(LoaderActivity.m_Activity, API_key, listener);
                                }        
                            });
        return 0;
    }

    public int closeSession()
    {
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.closeSession(ctx,true);
                                }        
                            });
        return 0;
    }

    public int pause()
    {
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.pause(ctx);
                                }        
                            });
        return 0;
    }

    public int resume()
    {
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.resume(ctx);
                                }        
                            });
        return 0;
    }

    public int event(String event_name)
    {
    event_string = event_name;
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.event(ctx,event_string);
                                }        
                            });
        return 0;
    }

    public int eventWithValue(String event_name, int event_value)
    {
    event_string = event_name;
    event_int = event_value;
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.event(ctx,event_string,event_int);
                                }        
                            });
        return 0;
    }


    public int loadModule(String location_code, String userData )
    {
    code_string = location_code;
    user_Data =userData;
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.loadModule(LoaderActivity.m_Activity,code_string,user_Data);
                                }        
                            });
        return 0;
    }

    public int loadModuleToCache(String location_code, String userData )
    {
    code_string = location_code;
    user_Data =userData;
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.loadModuleToCache(LoaderActivity.m_Activity,code_string,user_Data);
                                }        
                            });
        return 0;
    }

    public int destroyModule()
    {
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.destroyModule();
                                }        
                            });
        return 0;
    }

    public int fixAdOrientation(final int orientation)
    {
    LoaderActivity.m_Activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {                           
                                    AppTracker.fixAdOrientation(orientation);
                                }        
                            });
        return 0;
        
    }
}
