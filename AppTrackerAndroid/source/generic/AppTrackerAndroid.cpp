/*
Generic implementation of the AppTrackerAndroid extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "AppTrackerAndroid_internal.h"
s3eResult AppTrackerAndroidInit()
{
    //Add any generic initialisation code here
    return AppTrackerAndroidInit_platform();
}

void AppTrackerAndroidTerminate()
{
    //Add any generic termination code here
    AppTrackerAndroidTerminate_platform();
}

s3eResult startSession(const char* api_key)
{
	return startSession_platform(api_key);
}

s3eResult closeSession()
{
	return closeSession_platform();
}

s3eResult pause()
{
	return pause_platform();
}

s3eResult resume()
{
	return resume_platform();
}

s3eResult event(const char* event_name)
{
	return event_platform(event_name);
}

s3eResult eventWithValue(const char* event_name, int event_value)
{
	return eventWithValue_platform(event_name, event_value);
}

s3eResult loadModule(const char* location_code, const char* userData)
{
	return loadModule_platform(location_code, userData);
}

s3eResult loadModuleToCache(const char* location_code, const char* userData)
{
	return loadModuleToCache_platform(location_code, userData);
}

s3eResult destroyModule()
{
	return destroyModule_platform();
}

s3eResult fixAdOrientation(int landscape_portrait_or_auto)
{
	return fixAdOrientation_platform(landscape_portrait_or_auto);
}
