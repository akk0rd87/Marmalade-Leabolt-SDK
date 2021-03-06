/*
 * WARNING: this is an autogenerated file and will be overwritten by
 * the extension interface script.
 */
/*
 * This file contains the automatically generated loader-side
 * functions that form part of the extension.
 *
 * This file is awlays compiled into all loaders but compiles
 * to nothing if this extension is not enabled in the loader
 * at build time.
 */
#include "IwDebug.h"
#include "AppTrackerAndroid_autodefs.h"
#include "s3eEdk.h"
#include "AppTrackerAndroid.h"
//Declarations of Init and Term functions
extern s3eResult AppTrackerAndroidInit();
extern void AppTrackerAndroidTerminate();


// On platforms that use a seperate UI/OS thread we can autowrap functions
// here.   Note that we can't use the S3E_USE_OS_THREAD define since this
// code is oftern build standalone, outside the main loader build.
#if defined I3D_OS_IPHONE || defined I3D_OS_OSX || defined I3D_OS_LINUX || defined I3D_OS_WINDOWS

static s3eResult startSession_wrap(const char* api_key)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: startSession"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)startSession, 1, api_key);
}

static s3eResult closeSession_wrap()
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: closeSession"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)closeSession, 0);
}

static s3eResult pause_wrap()
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: pause"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)pause, 0);
}

static s3eResult resume_wrap()
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: resume"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)resume, 0);
}

static s3eResult event_wrap(const char* event_name)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: event"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)event, 1, event_name);
}

static s3eResult eventWithValue_wrap(const char* event_name, int event_value)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: eventWithValue"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)eventWithValue, 2, event_name, event_value);
}

static s3eResult loadModule_wrap(const char* location_code, const char* userData)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: loadModule"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)loadModule, 2, location_code, userData);
}

static s3eResult loadModuleToCache_wrap(const char* location_code, const char* userData)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: loadModuleToCache"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)loadModuleToCache, 2, location_code, userData);
}

static s3eResult destroyModule_wrap()
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: destroyModule"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)destroyModule, 0);
}

static s3eResult fixAdOrientation_wrap(int landscape_portrait_or_auto)
{
    IwTrace(APPTRACKERANDROID_VERBOSE, ("calling AppTrackerAndroid func on main thread: fixAdOrientation"));
    return (s3eResult)(intptr_t)s3eEdkThreadRunOnOS((s3eEdkThreadFunc)fixAdOrientation, 1, landscape_portrait_or_auto);
}

#define startSession startSession_wrap
#define closeSession closeSession_wrap
#define pause pause_wrap
#define resume resume_wrap
#define event event_wrap
#define eventWithValue eventWithValue_wrap
#define loadModule loadModule_wrap
#define loadModuleToCache loadModuleToCache_wrap
#define destroyModule destroyModule_wrap
#define fixAdOrientation fixAdOrientation_wrap

#endif

s3eResult AppTrackerAndroidRegister(AppTrackerAndroidCallback cbid, s3eCallback fn, void* pData)
{
    return s3eEdkCallbacksRegister(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_CALLBACK_MAX, cbid, fn, pData, 0);
};

s3eResult AppTrackerAndroidUnRegister(AppTrackerAndroidCallback cbid, s3eCallback fn)
{
    return s3eEdkCallbacksUnRegister(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_CALLBACK_MAX, cbid, fn);
}

void AppTrackerAndroidRegisterExt()
{
    /* fill in the function pointer struct for this extension */
    void* funcPtrs[12];
    funcPtrs[0] = (void*)AppTrackerAndroidRegister;
    funcPtrs[1] = (void*)AppTrackerAndroidUnRegister;
    funcPtrs[2] = (void*)startSession;
    funcPtrs[3] = (void*)closeSession;
    funcPtrs[4] = (void*)pause;
    funcPtrs[5] = (void*)resume;
    funcPtrs[6] = (void*)event;
    funcPtrs[7] = (void*)eventWithValue;
    funcPtrs[8] = (void*)loadModule;
    funcPtrs[9] = (void*)loadModuleToCache;
    funcPtrs[10] = (void*)destroyModule;
    funcPtrs[11] = (void*)fixAdOrientation;

    /*
     * Flags that specify the extension's use of locking and stackswitching
     */
    int flags[12] = { 0 };

    /*
     * Register the extension
     */
s3eEdkRegister("AppTrackerAndroid", funcPtrs, sizeof(funcPtrs), flags, AppTrackerAndroidInit, AppTrackerAndroidTerminate, 0);
}

#if !defined S3E_BUILD_S3ELOADER

#if defined S3E_EDK_USE_STATIC_INIT_ARRAY
int AppTrackerAndroidStaticInit()
{
    void** p = g_StaticInitArray;
    void* end = p + g_StaticArrayLen;
    while (*p) p++;
    if (p < end)
        *p = (void*)&AppTrackerAndroidRegisterExt;
    return 0;
}

int g_AppTrackerAndroidVal = AppTrackerAndroidStaticInit();

#elif defined S3E_EDK_USE_DLLS
S3E_EXTERN_C S3E_DLL_EXPORT void RegisterExt()
{
    AppTrackerAndroidRegisterExt();
}
#endif

#endif
