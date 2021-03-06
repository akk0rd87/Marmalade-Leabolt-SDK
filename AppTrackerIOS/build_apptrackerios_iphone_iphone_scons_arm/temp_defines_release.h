#ifndef I3D_ARCH_ARM
#   define I3D_ARCH_ARM 1
#endif
#ifndef I3D_OS_IPHONE
#   define I3D_OS_IPHONE 1
#endif
#ifndef I3D_PLATFORM_IPHONE
#   define I3D_PLATFORM_IPHONE 1
#endif
#ifndef IW_ASSERTION_CHANNEL_APPTRACKERIOS
#   define IW_ASSERTION_CHANNEL_APPTRACKERIOS 1
#endif
#ifndef IW_MKF_APPTRACKERIOS_BUILD
#   define IW_MKF_APPTRACKERIOS_BUILD 1
#endif
#ifndef IW_MKF_EDK
#   define IW_MKF_EDK 1
#endif
#ifndef IW_MKF_S3E_DEFAULT
#   define IW_MKF_S3E_DEFAULT 1
#endif
#ifndef IW_PLATFORM_IPHONE
#   define IW_PLATFORM_IPHONE 1
#endif
#ifndef IW_SDK
#   define IW_SDK 1
#endif
#ifndef IW_TRACE_CHANNEL_APPTRACKERIOS
#   define IW_TRACE_CHANNEL_APPTRACKERIOS 1
#endif
#ifndef IW_TRACE_CHANNEL_APPTRACKERIOS_VERBOSE
#   define IW_TRACE_CHANNEL_APPTRACKERIOS_VERBOSE 2
#endif
#ifndef S3E_BUILD_EXT
#   define S3E_BUILD_EXT 1
#endif
#ifndef S3E_EXT_APPTRACKERIOS
#   define S3E_EXT_APPTRACKERIOS 1
#endif
#ifndef __IPHONE_OS_VERSION_MIN_REQUIRED
#   define __IPHONE_OS_VERSION_MIN_REQUIRED 43000
#endif

/* including "extra_body" specified by the mkb plugin */

#if !defined I3D_ARCH_32_BIT && !defined I3D_ARCH_64_BIT
    #if defined I3D_ARCH_AARCH64 || defined I3D_ARCH_AMD64
        #define I3D_ARCH_64_BIT
    #else
        #define I3D_ARCH_32_BIT
    #endif
#endif
