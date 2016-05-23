/*
Generic implementation of the AppTrackeriOS extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */

#include <stdlib.h>
#include "AppTrackeriOS_internal.h"
s3eResult AppTrackeriOSInit()
{
    //Add any generic initialisation code here
    return AppTrackeriOSInit_platform();
}

void AppTrackeriOSTerminate()
{
    //Add any generic termination code here
    AppTrackeriOSTerminate_platform();
}

s3eResult AppTrackeriOS_startSession(const char* apiKey)
{
	return AppTrackeriOS_startSession_platform(apiKey);
}

s3eResult AppTrackeriOS_closeSession()
{
	return AppTrackeriOS_closeSession_platform();
}

s3eResult AppTrackeriOS_event(const char* eventName)
{
	return AppTrackeriOS_event_platform(eventName);
}

s3eResult AppTrackeriOS_eventWithValue(const char* eventName, const char* valueString)
{
	return AppTrackeriOS_eventWithValue_platform(eventName, valueString);
}

s3eResult AppTrackeriOS_loadModule(const char* location)
{
	return AppTrackeriOS_loadModule_platform(location);
}

s3eResult AppTrackeriOS_loadModuleToCache(const char* location_code)
{
	return AppTrackeriOS_loadModuleToCache_platform(location_code);
}

s3eResult AppTrackeriOS_destroyModule()
{
	return AppTrackeriOS_destroyModule_platform();
}

s3eResult AppTrackeriOS_fixAdOrientation(int landscape_portrait_or_auto)
{
	return AppTrackeriOS_fixAdOrientation_platform(landscape_portrait_or_auto);
}

s3eResult AppTrackeriOS_setAgeRange(const char* ageRange)
{
	return AppTrackeriOS_setAgeRange_platform(ageRange);
}

s3eResult AppTrackeriOS_setGender(const char* gender)
{
	return AppTrackeriOS_setGender_platform(gender);
}

bool AppTrackeriOS_isAdReady(const char* placement)
{
    return AppTrackeriOS_isAdReady_platform(placement);
}

