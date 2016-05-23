/*
 * iphone-specific implementation of the AppTrackeriOS extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "AppTrackeriOS_internal.h"
#include <UiKit/UiKit.h> 
#include "AppTracker.h"

#include "s3eEdk.h"
#include "s3eEdk_iphone.h"

@interface MyDelegate :NSObject<AppModuleDelegate>
-(void) onModuleLoaded:(NSString *)placement;
-(void) onModuleClosed:(NSString *)placement;
-(void) onModuleClicked:(NSString *)placement;
-(void) onModuleCached:(NSString *)placement;
-(void) onModuleFailed:(NSString *)placement error:(NSString *)error cached:(BOOL)iscached;
-(void) onMediaFinished:(BOOL)viewCompleted;
@end

@implementation MyDelegate

-(void) onModuleLoaded:(NSString *)placement
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MODULELOADED);
    
}
-(void) onModuleClosed:(NSString *)placement
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MODULECLOSED);
}
-(void) onModuleClicked:(NSString *)placement
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MODULECLICKED);
}
-(void) onModuleCached:(NSString *)placement
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MODULECACHED);
}
-(void) onModuleFailed:(NSString *)placement error:(NSString *)error cached:(BOOL)iscached
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MODULEFAILED);
}
-(void) onMediaFinished:(BOOL)viewCompleted
{
    s3eEdkCallbacksEnqueue(S3E_EXT_APPTRACKERIOS_HASH,APPTRACKERIOS_MEDIAFINISHED);
}
@end

MyDelegate * g_MyDelegate;

s3eResult AppTrackeriOSInit_platform()
{
    g_MyDelegate = [[MyDelegate alloc]init];
    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;
}

void AppTrackeriOSTerminate_platform()
{ 
}

s3eResult AppTrackeriOS_startSession_platform(const char* apiKey)
{
    NSString* apiString = [NSString stringWithUTF8String:apiKey];
    [AppTracker setFramework:@"marmalade"];
    [AppTracker setAppModuleDelete:g_MyDelegate];
    [AppTracker startSession:apiString];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_closeSession_platform()
{
    [AppTracker closeSession];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_event_platform(const char* eventName)
{
    NSString* eventString = [NSString stringWithUTF8String:eventName];
    
    [AppTracker event:eventString];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_eventWithValue_platform(const char* eventName, const char* valueString)
{
    NSString* event1String = [NSString stringWithUTF8String:eventName];
    float valueInFloat = [[NSString stringWithUTF8String:valueString] floatValue];
    
    [AppTracker event:event1String value:valueInFloat];
    return S3E_RESULT_ERROR;
}

s3eResult transaction_platform(const char* eventName, const char* currency, const char* valueString)
{
    NSString* transactionString = [NSString stringWithUTF8String:eventName];
    NSString* curString = [NSString stringWithUTF8String:currency];
    float valueFloat = [[NSString stringWithUTF8String:valueString] floatValue];
    
    [AppTracker transaction:transactionString value:valueFloat currencyCode:curString];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_loadModule_platform(const char* location)
{
    NSString* locationString = [NSString stringWithUTF8String:location];
    
    [AppTracker loadModule:locationString viewController:s3eEdkGetUIViewController()];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_loadModuleToCache_platform(const char* location)
{
    NSString* locationString = [NSString stringWithUTF8String:location];
    
    [AppTracker loadModuleToCache:locationString];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_destroyModule_platform()
{
    [AppTracker destroyModule];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_fixAdOrientation_platform(int landscape_portrait_or_auto)
{
    
    if (landscape_portrait_or_auto == 1) {
        [AppTracker fixAdOrientation:AdOrientation_Landscape];
    } else if (landscape_portrait_or_auto == 2){
        [AppTracker fixAdOrientation:AdOrientation_Portrait];
    } else {
        [AppTracker fixAdOrientation:AdOrientation_AutoDetect];
    }
    
    return S3E_RESULT_ERROR;
}

s3eResult setLandscapeMode_platform(bool flag)
{
    //This is deprecated
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_setAgeRange_platform(const char* ageRange)
{
    NSString* ageRangeString = [NSString stringWithUTF8String:ageRange];
    
    [AppTracker setAgeRange:ageRangeString];
    return S3E_RESULT_ERROR;
}

s3eResult AppTrackeriOS_setGender_platform(const char* gender)
{
    NSString* genderString = [NSString stringWithUTF8String:gender];
    
    [AppTracker setGender:genderString];
    return S3E_RESULT_ERROR;
}

bool AppTrackeriOS_isAdReady_platform(const char* placement)
{
    NSString* locationString = [NSString stringWithUTF8String:placement];
    return [AppTracker isAdReady:locationString];
}
