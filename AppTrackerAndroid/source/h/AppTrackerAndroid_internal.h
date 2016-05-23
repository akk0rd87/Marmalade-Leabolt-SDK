/*
 * Internal header for the AppTrackerAndroid extension.
 *
 * This file should be used for any common function definitions etc that need to
 * be shared between the platform-dependent and platform-indepdendent parts of
 * this extension.
 */

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#ifndef APPTRACKERANDROID_INTERNAL_H
#define APPTRACKERANDROID_INTERNAL_H

#include "s3eTypes.h"
#include "AppTrackerAndroid.h"
#include "AppTrackerAndroid_autodefs.h"


/**
 * Initialise the extension.  This is called once then the extension is first
 * accessed by s3eregister.  If this function returns S3E_RESULT_ERROR the
 * extension will be reported as not-existing on the device.
 */
s3eResult AppTrackerAndroidInit();

/**
 * Platform-specific initialisation, implemented on each platform
 */
s3eResult AppTrackerAndroidInit_platform();

/**
 * Terminate the extension.  This is called once on shutdown, but only if the
 * extension was loader and Init() was successful.
 */
void AppTrackerAndroidTerminate();

/**
 * Platform-specific termination, implemented on each platform
 */
void AppTrackerAndroidTerminate_platform();
s3eResult startSession_platform(const char* api_key);

s3eResult closeSession_platform();

s3eResult pause_platform();

s3eResult resume_platform();

s3eResult event_platform(const char* event_name);

s3eResult eventWithValue_platform(const char* event_name, int event_value);

s3eResult loadModule_platform(const char* location_code, const char* userData);

s3eResult loadModuleToCache_platform(const char* location_code, const char* userData);

s3eResult destroyModule_platform();

s3eResult fixAdOrientation_platform(int landscape_portrait_or_auto);


#endif /* !APPTRACKERANDROID_INTERNAL_H */