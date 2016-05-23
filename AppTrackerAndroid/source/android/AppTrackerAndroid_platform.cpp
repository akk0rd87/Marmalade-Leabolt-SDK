/*AppTrackerAndroid
  

AppTrackers



 * android-specific implementation of the AppTrackerAndroid extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "AppTrackerAndroid_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_startSession;
static jmethodID g_closeSession;
static jmethodID g_pause;
static jmethodID g_resume;
static jmethodID g_event;
static jmethodID g_eventWithValue;
static jmethodID g_loadModule;
static jmethodID g_loadModuleToCache;
static jmethodID g_destroyModule;
static jmethodID g_fixAdOrientation;

void JNICALL AppTrackerAndroid_onModuleClosedCallback(JNIEnv* env, jobject obj);
void JNICALL AppTrackerAndroid_onModuleLoadedCallback(JNIEnv* env, jobject obj);
void JNICALL AppTrackerAndroid_onModuleFailedCallback(JNIEnv* env, jobject obj);
void JNICALL AppTrackerAndroid_onModuleCachedCallback(JNIEnv* env, jobject obj);
void JNICALL AppTrackerAndroid_onModuleClickedCallback(JNIEnv* env, jobject obj);
void JNICALL AppTrackerAndroid_onMediaFinishedCallback(JNIEnv* env, jobject obj);

s3eResult AppTrackerAndroidInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;

    const JNINativeMethod nativeMethods[] =
    {
        {"moduleLoaded", "()V",           (void*)&AppTrackerAndroid_onModuleLoadedCallback},
        {"moduleFailed", "()V",           (void*)&AppTrackerAndroid_onModuleFailedCallback},
        {"moduleClosed", "()V",           (void*)&AppTrackerAndroid_onModuleClosedCallback},
        {"moduleCached", "()V",           (void*)&AppTrackerAndroid_onModuleCachedCallback},
        {"moduleClicked", "()V",           (void*)&AppTrackerAndroid_onModuleClickedCallback},
        {"MediaFinished", "()V",           (void*)&AppTrackerAndroid_onMediaFinishedCallback}
    };
    
    const int numNativeMethods = sizeof(nativeMethods)/sizeof(nativeMethods[0]);
    
    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("AppTrackerAndroid");
    if (!cls)
        goto fail;

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_startSession = env->GetMethodID(cls, "startSession", "(Ljava/lang/String;)I");
    if (!g_startSession)
        goto fail;

    g_closeSession = env->GetMethodID(cls, "closeSession", "()I");
    if (!g_closeSession)
        goto fail;

    g_pause = env->GetMethodID(cls, "pause", "()I");
    if (!g_pause)
        goto fail;

    g_resume = env->GetMethodID(cls, "resume", "()I");
    if (!g_resume)
        goto fail;

    g_event = env->GetMethodID(cls, "event", "(Ljava/lang/String;)I");
    if (!g_event)
        goto fail;

    g_eventWithValue = env->GetMethodID(cls, "eventWithValue", "(Ljava/lang/String;I)I");
    if (!g_eventWithValue)
        goto fail;

    g_loadModule = env->GetMethodID(cls, "loadModule", "(Ljava/lang/String;Ljava/lang/String;)I");
    if (!g_loadModule)
        goto fail;

    g_loadModuleToCache = env->GetMethodID(cls, "loadModuleToCache", "(Ljava/lang/String;Ljava/lang/String;)I");
    if (!g_loadModuleToCache)
        goto fail;

    g_destroyModule = env->GetMethodID(cls, "destroyModule", "()I");
    if (!g_destroyModule)
        goto fail;

    g_fixAdOrientation = env->GetMethodID(cls, "fixAdOrientation", "(I)I");
    if (!g_fixAdOrientation)
        goto fail;

    if(env->RegisterNatives(cls, nativeMethods, numNativeMethods) != JNI_OK)
        goto fail;

    IwTrace(APPTRACKERANDROID, ("APPTRACKERANDROID init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(AppTrackerAndroid, ("One or more java methods could not be found"));
    }

    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);
    return S3E_RESULT_ERROR;

}


void AppTrackerAndroidTerminate_platform()
{
    // Add any platform-specific termination code here
}

s3eResult startSession_platform(const char* api_key)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring api_key_jstr = env->NewStringUTF(api_key);
    return (s3eResult)env->CallIntMethod(g_Obj, g_startSession, api_key_jstr);
}

s3eResult closeSession_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_closeSession);
}

s3eResult pause_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_pause);
}

s3eResult resume_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_resume);
}

s3eResult event_platform(const char* event_name)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring event_name_jstr = env->NewStringUTF(event_name);
    return (s3eResult)env->CallIntMethod(g_Obj, g_event, event_name_jstr);
}

s3eResult eventWithValue_platform(const char* event_name, int event_value)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring event_name_jstr = env->NewStringUTF(event_name);
    return (s3eResult)env->CallIntMethod(g_Obj, g_eventWithValue, event_name_jstr, event_value);
}


s3eResult loadModule_platform(const char* location_code,const char* userData)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring location_code_jstr = env->NewStringUTF(location_code);
    jstring userData_jstr = env->NewStringUTF(userData);
    return (s3eResult)env->CallIntMethod(g_Obj, g_loadModule, location_code_jstr,userData_jstr);
}

s3eResult loadModuleToCache_platform(const char* location_code,const char* userData)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring location_code_jstr = env->NewStringUTF(location_code);
    jstring userData_jstr = env->NewStringUTF(userData);
    return (s3eResult)env->CallIntMethod(g_Obj, g_loadModuleToCache, location_code_jstr,userData_jstr);
}

s3eResult destroyModule_platform()
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    return (s3eResult)env->CallIntMethod(g_Obj, g_destroyModule);
}

s3eResult fixAdOrientation_platform(int orientation)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
     
    return (s3eResult)env->CallIntMethod(g_Obj, g_fixAdOrientation, orientation);
}

void JNICALL AppTrackerAndroid_onModuleLoadedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULELOADED);
}

void JNICALL AppTrackerAndroid_onModuleClosedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULECLOSED);
}

void JNICALL AppTrackerAndroid_onModuleFailedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULEFAILED);
}

void JNICALL AppTrackerAndroid_onModuleCachedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULECACHED);
}

void JNICALL AppTrackerAndroid_onModuleClickedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULECLICKED);
}
void JNICALL AppTrackerAndroid_onMediaFinishedCallback(JNIEnv* env, jobject obj)
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERANDROID_HASH, APPTRACKERANDROID_MODULECLICKED);
}


