.class public Lcom/android/server/connectivity/WifiNetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "WifiNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/WifiNetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$Probe;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$NotEnabledState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedWaitAuthState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;
    }
.end annotation


# static fields
.field public static final CAPTIVE_PORTAL_FALLBACK_PROBE_SPECS:Ljava/lang/String; = "captive_portal_fallback_probe_specs"

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "captive_portal_user_agent"

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x9

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0xc

.field private static final CMD_CHINA_VALIDATION_CHECK_RESULT_NM:I = 0x3e9

.field private static final CMD_EVALUATE_PRIVATE_DNS:I = 0xf

.field private static final CMD_FORCE_REEVALUATION:I = 0x8

.field private static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0xb

.field private static final CMD_NETWORK_CONNECTED:I = 0x1

.field private static final CMD_NETWORK_DISCONNECTED:I = 0x7

.field private static final CMD_PRIVATE_DNS_SETTINGS_CHANGED:I = 0xd

.field private static final CMD_PROBE_COMPLETE:I = 0x10

.field private static final CMD_REEVALUATE:I = 0x6

.field private static final CMD_WANT_AS_IS_SELECTED:I = 0x16

.field private static final CONFIG_MAX_MATCHES_HTTP_CONTENT_LENGTH:I = 0x0

.field private static final CONFIG_MIN_MATCHES_HTTP_CONTENT_LENGTH:I = 0x0

.field private static final CONFIG_NETWORK_VALIDATION_FAILED_CONTENT_REGEXP:Ljava/lang/String; = "false"

.field private static final CONFIG_NETWORK_VALIDATION_SUCCESS_CONTENT_REGEXP:Ljava/lang/String; = "false"

.field private static final DBG:Z

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_HTTP_URL_CHINA:Ljava/lang/String; = "http://connectivity.samsung.com.cn/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field private static final EVENT_LINK_PROPERTIES_CHANGED:I = 0x13

.field private static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x14

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field static final MAX_PROBE_THREAD_POOL_SIZE:I = 0x5

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field private static final NETWORK_TEST_RESULT_PARTIAL_CONNECTIVITY:I = 0x2

.field private static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NETWORK_VALIDATION_PROBE_DNS:I = 0x4

.field private static final NETWORK_VALIDATION_PROBE_FALLBACK:I = 0x20

.field private static final NETWORK_VALIDATION_PROBE_HTTP:I = 0x8

.field private static final NETWORK_VALIDATION_PROBE_HTTPS:I = 0x10

.field private static final NETWORK_VALIDATION_PROBE_PRIVDNS:I = 0x40

.field private static final NETWORK_VALIDATION_RESULT_INVALID:I = 0x0

.field private static final NETWORK_VALIDATION_RESULT_PARTIAL:I = 0x2

.field private static final NETWORK_VALIDATION_RESULT_VALID:I = 0x1

.field private static final NO_UID:I = 0x0

.field private static final PRIVATE_DNS_PROBE_HOST_SUFFIX:Ljava/lang/String; = "-dnsotls-ds.metric.gstatic.com"

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final REEVALUDATE_DELAY_MS_FOR_VALIDATED_QC_STATE:I = 0x2710

.field private static final SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static TAG:Ljava/lang/String; = null

.field public static final TEST_CAPTIVE_PORTAL_HTTPS_URL:Ljava/lang/String; = "test_captive_portal_https_url"

.field public static final TEST_CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "test_captive_portal_http_url"

.field private static final TEST_URL_EXPIRATION_MS:J

.field public static final TEST_URL_EXPIRATION_TIME:Ljava/lang/String; = "test_url_expiration_time"

.field private static final WIFI_WCM_EVENT_ROAM_COMPLETE:Ljava/lang/String; = "wifi_wcm_event_roam_complete"

.field private static mValidationLogs:Landroid/net/util/SharedLog;

.field private static sInstance:Lcom/android/server/connectivity/WifiNetworkMonitor;


# instance fields
.field private mAcceptPartialConnectivity:Z

.field private mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

.field private mCaptivePortalFallbackSpecs:[Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

.field private mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private mCaptivePortalHttpUrls:[Ljava/net/URL;

.field private mCaptivePortalHttpsUrls:[Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private mCaptivePortalUserAgent:Ljava/lang/String;

.field private mCleartextDnsNetwork:Landroid/net/Network;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mEvaluateAttempts:I

.field private final mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

.field private final mEvaluationTimer:Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

.field private mIgnorePrivateIpResponse:Z

.field private mInitialPrivateIpCheckDone:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mIsMultiNetwork:Z

.field private mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

.field private mLastProbeTime:J

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

.field private mManualSelection:Z

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private mMultiNetworkIssuedUid:I

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

.field private mNextFallbackUrlIndex:I

.field private final mNotEnabledState:Lcom/android/internal/util/State;

.field private mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

.field private mPrivateDnsProviderHostname:Ljava/lang/String;

.field private mPrivateIpNoInternetEnabled:Z

.field private volatile mProbeToken:I

.field private final mProbingState:Lcom/android/internal/util/State;

.field private final mRandom:Ljava/util/Random;

.field private mReevaluateDelayMs:I

.field private mReevaluateToken:I

.field private mRunFullParallelCheck:Z

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserWantAsIs:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private final mValidatedWaitAuthState:Lcom/android/internal/util/State;

.field private final mWaitingForNextProbeState:Lcom/android/internal/util/State;

.field private mWasChinaMode:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 133
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    .line 134
    const-string v0, "WifiNetworkMonitor"

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    .line 1615
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TEST_URL_EXPIRATION_MS:J

    .line 1923
    const-string/jumbo v0, "http://www.qq.com"

    const-string/jumbo v1, "http://www.baidu.com"

    const-string/jumbo v2, "http://m.taobao.com"

    const-string/jumbo v3, "http://m.hao123.com"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Network;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 360
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 328
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I

    .line 333
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I

    .line 334
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 335
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 336
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedWaitAuthState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$ValidatedWaitAuthState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;

    .line 337
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 338
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 339
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 340
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbingState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbingState:Lcom/android/internal/util/State;

    .line 341
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$WaitingForNextProbeState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWaitingForNextProbeState:Lcom/android/internal/util/State;

    .line 342
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 343
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$NotEnabledState;

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$NotEnabledState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    .line 345
    iput-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    .line 347
    new-instance v2, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationTimer:Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    .line 348
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I

    .line 349
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I

    .line 351
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 352
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mAcceptPartialConnectivity:Z

    .line 355
    nop

    .line 356
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 484
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    .line 485
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWasChinaMode:Z

    .line 1185
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsMultiNetwork:Z

    .line 1186
    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMultiNetworkIssuedUid:I

    .line 1321
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mManualSelection:Z

    .line 1375
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z

    .line 1832
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 1833
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z

    .line 1834
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    .line 1840
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNextFallbackUrlIndex:I

    .line 1844
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I

    .line 1929
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z

    .line 1931
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    .line 1932
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIgnorePrivateIpResponse:Z

    .line 361
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    .line 362
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiManager()Landroid/net/wifi/WifiManager;

    .line 363
    new-instance v0, Lcom/android/internal/util/LocationPermissionChecker;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocationPermissionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWaitingForNextProbeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 377
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    .line 378
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 379
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 380
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRandom:Ljava/util/Random;

    .line 381
    return-void
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 132
    sget-boolean v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 132
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->updateConnectedNetworkAttributes(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedWaitAuthState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isPrivateDnsValidationRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkTestResultParcelable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/NetworkTestResultParcelable;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/WifiNetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hideProvisioningNotification()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/connectivity/WifiNetworkMonitor;Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastPortalProbeResult:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationTimer:Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3704(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I

    return p1
.end method

.method static synthetic access$3828(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mReevaluateDelayMs:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/connectivity/WifiNetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I

    return p1
.end method

.method static synthetic access$3908(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluateAttempts:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I

    return v0
.end method

.method static synthetic access$4204(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mProbeToken:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWasChinaMode:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getRoamEventfromWCM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setRoamEventFromWCM(I)V

    return-void
.end method

.method static synthetic access$4902(Lcom/android/server/connectivity/WifiNetworkMonitor;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # J

    .line 132
    iput-wide p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLastProbeTime:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/connectivity/WifiNetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Z

    .line 132
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/WifiNetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mAcceptPartialConnectivity:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWaitingForNextProbeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isCaptivePortal()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isCaptivePortalForChinaWifi()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->showProvisioningNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/WifiNetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/WifiNetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getDnsProbeTimeout()I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/WifiNetworkMonitor;)Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    return-object v0
.end method

.method static synthetic access$6100(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;

    .line 132
    invoke-static {p0, p1, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/WifiNetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->initialize()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/connectivity/WifiNetworkMonitor;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyProbeStatusChanged(II)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/NetworkTestResultParcelable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/NetworkTestResultParcelable;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->notifyNetworkTested(Landroid/net/NetworkTestResultParcelable;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndCheckSocketSetup(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 132
    invoke-static {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isConclusiveResult(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private checkConnectedState(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 13
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1194
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1195
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_e

    .line 1196
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "WifiConfiguration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void

    .line 1199
    :cond_e
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentSemWifiConfigurationFromKey(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    .line 1201
    .local v1, "semConfig":Lcom/samsung/android/wifi/SemWifiConfiguration;
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v2, v2, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 1202
    .local v2, "explicitlySelected":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 1203
    .local v3, "issuedUid":I
    sget-boolean v4, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v4, :cond_40

    .line 1204
    sget-object v4, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network selected by UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " explicitlySelected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_40
    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1209
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1210
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_77

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v6

    if-nez v6, :cond_5c

    if-eqz v5, :cond_77

    iget-object v6, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    .line 1211
    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->isNetworkSettingsPermissionExceptionPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1213
    :cond_5c
    const/4 v2, 0x0

    .line 1214
    sget-boolean v6, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v6, :cond_77

    .line 1215
    sget-object v6, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "explictlySelected Exception case for smarthings ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_77
    const-string v6, ",sLUid : "

    if-eqz v1, :cond_a7

    .line 1219
    sget-object v7, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "noInternetAccessExpected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", CUid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 1222
    :cond_a7
    sget-object v7, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "noInternetAccessExpected (no sem Config) : , CUid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_c8
    iput-boolean v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mManualSelection:Z

    .line 1227
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    if-eqz v6, :cond_12e

    .line 1228
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-direct {p0, v6, v3, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isMultiNetworkAvailableApp(IILjava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_e1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_df

    goto :goto_e1

    :cond_df
    move v6, v7

    goto :goto_e2

    :cond_e1
    :goto_e1
    move v6, v8

    .line 1229
    .local v6, "multiNetwork":Z
    :goto_e2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_e8

    move v7, v8

    :cond_e8
    and-int/2addr v6, v7

    .line 1231
    if-eqz v1, :cond_106

    iget-boolean v7, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-nez v7, :cond_106

    if-nez v6, :cond_106

    iget-boolean v7, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-nez v7, :cond_fd

    if-nez v2, :cond_106

    .line 1232
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isPoorNetworkTestEnabled()Z

    move-result v7

    if-nez v7, :cond_106

    .line 1233
    :cond_fd
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v8, v7, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 1234
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v8, v7, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    goto :goto_12e

    .line 1236
    :cond_106
    if-nez v2, :cond_124

    if-eqz v6, :cond_124

    .line 1237
    sget-object v7, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MultiNetwork - package : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iput-boolean v8, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsMultiNetwork:Z

    .line 1239
    iput v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMultiNetworkIssuedUid:I

    .line 1242
    :cond_124
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v2, v7, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 1243
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v8, v7, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 1246
    .end local v6    # "multiNetwork":Z
    :cond_12e
    :goto_12e
    return-void
.end method

.method private checkNetworkSettingsPermission(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1335
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private compareNetworkResults()V
    .registers 4

    .line 1405
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    if-eqz v0, :cond_1c

    iget v0, v0, Landroid/net/NetworkTestResultParcelable;->result:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 1407
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1408
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;Z)V

    goto :goto_2f

    .line 1417
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    if-eqz v0, :cond_26

    .line 1418
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;Z)V

    goto :goto_2f

    .line 1419
    :cond_26
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    if-eqz v0, :cond_2f

    .line 1420
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;Z)V

    .line 1423
    :cond_2f
    :goto_2f
    return-void
.end method

.method private evaluateCapportResult(Ljava/util/List;IZ)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 12
    .param p2, "numHttps"    # I
    .param p3, "hasCapport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;",
            ">;IZ)",
            "Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;"
        }
    .end annotation

    .line 2667
    .local p1, "probes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;>;"
    const/4 v0, 0x0

    .line 2668
    .local v0, "capportResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    const/4 v1, 0x0

    .line 2669
    .local v1, "httpPortalResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    const/4 v2, 0x0

    .line 2670
    .local v2, "httpSuccesses":I
    const/4 v3, 0x0

    .line 2671
    .local v3, "httpsSuccesses":I
    const/4 v4, 0x0

    .line 2673
    .local v4, "httpsFailures":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    .line 2676
    .local v6, "probe":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isConcludedFromHttps()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 2677
    invoke-virtual {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_24

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 2678
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 2680
    :cond_27
    invoke-virtual {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 2692
    move-object v1, v6

    goto :goto_37

    .line 2693
    :cond_2f
    invoke-virtual {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 2694
    add-int/lit8 v2, v2, 0x1

    .line 2697
    .end local v6    # "probe":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_37
    :goto_37
    goto :goto_9

    .line 2699
    :cond_38
    const/4 v5, 0x0

    if-eqz p3, :cond_3e

    if-nez v0, :cond_3e

    return-object v5

    .line 2701
    :cond_3e
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_47

    return-object v0

    .line 2703
    :cond_47
    if-eqz v1, :cond_4a

    return-object v1

    .line 2705
    :cond_4a
    if-lez v3, :cond_52

    .line 2706
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->success(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v5

    return-object v5

    .line 2709
    :cond_52
    if-ne v4, p2, :cond_59

    if-lez v2, :cond_59

    .line 2710
    sget-object v5, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PARTIAL:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v5

    .line 2713
    :cond_59
    return-object v5
.end method

.method private static extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5
    .param p0, "contentTypeHeader"    # Ljava/lang/String;

    .line 2504
    if-nez p0, :cond_5

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 2506
    :cond_5
    const/4 v0, 0x2

    const-string v1, "; *charset=\"?([^ ;\"]+)\"?"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2508
    .local v0, "charsetPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2509
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v2

    .line 2512
    :cond_19
    const/4 v2, 0x1

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_22} :catch_23

    return-object v2

    .line 2513
    :catch_23
    move-exception v2

    .line 2514
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v3
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .line 3304
    const/4 v0, 0x0

    .line 3305
    .local v0, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 3306
    .local v1, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 3307
    .local v2, "accountArray":[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_11

    .line 3308
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3310
    :cond_11
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountEmail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_2c
    return-object v0
.end method

.method private static getCaptivePortalApiUrl(Landroid/net/LinkProperties;)Landroid/net/Uri;
    .registers 2
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 2660
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getCaptivePortalApiUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalMode()I
    .registers 4

    .line 501
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .registers 4

    .line 1569
    const-string v0, "connectivity"

    const-string v1, "captive_portal_user_agent"

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentSemWifiConfigurationFromKey(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 8
    .param p1, "wifiConfigKey"    # Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 1306
    .local v0, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    .line 1308
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1309
    .local v2, "configurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiConfiguration;>;"
    if-nez v2, :cond_16

    .line 1310
    return-object v1

    .line 1313
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1314
    .local v4, "config":Lcom/samsung/android/wifi/SemWifiConfiguration;
    iget-object v5, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1315
    return-object v4

    .line 1317
    .end local v4    # "config":Lcom/samsung/android/wifi/SemWifiConfiguration;
    :cond_2f
    goto :goto_1a

    .line 1318
    :cond_30
    return-object v1
.end method

.method private getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 4

    .line 1298
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1299
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1300
    .local v1, "netId":I
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    return-object v2
.end method

.method private getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 3195
    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3196
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    move-object v1, p3

    :goto_9
    return-object v1
.end method

.method private getDnsProbeTimeout()I
    .registers 2

    .line 2307
    const/16 v0, 0x30d4

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/net/Network;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Handler;)Lcom/android/server/connectivity/WifiNetworkMonitor;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    const-class v0, Lcom/android/server/connectivity/WifiNetworkMonitor;

    monitor-enter v0

    .line 385
    :try_start_3
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->sInstance:Lcom/android/server/connectivity/WifiNetworkMonitor;

    if-nez v1, :cond_13

    .line 386
    new-instance v1, Lcom/android/server/connectivity/WifiNetworkMonitor;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor;-><init>(Landroid/content/Context;Landroid/net/Network;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 387
    .local v1, "WNM":Lcom/android/server/connectivity/WifiNetworkMonitor;
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->start()V

    .line 388
    sput-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->sInstance:Lcom/android/server/connectivity/WifiNetworkMonitor;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    .line 389
    monitor-exit v0

    return-object v1

    .line 391
    .end local v1    # "WNM":Lcom/android/server/connectivity/WifiNetworkMonitor;
    :cond_13
    :try_start_13
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->sInstance:Lcom/android/server/connectivity/WifiNetworkMonitor;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object v1

    .line 384
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "network":Landroid/net/Network;
    .end local p2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIssueUidForConnectingNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1249
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 1250
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1251
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    array-length v3, v0

    :goto_19
    if-ge v2, v3, :cond_37

    aget v4, v0, v2

    .line 1252
    .local v4, "uid":I
    const/16 v5, 0x3f2

    if-gt v4, v5, :cond_22

    goto :goto_34

    .line 1254
    :cond_22
    :try_start_22
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1255
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->isMultiNetworkAllowingSystemPackage(Ljava/lang/String;)Z

    move-result v6
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_30

    if-eqz v6, :cond_2f

    .line 1256
    return v4

    .line 1260
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2f
    goto :goto_34

    .line 1258
    :catch_30
    move-exception v5

    .line 1259
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1251
    .end local v4    # "uid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1262
    :cond_37
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_40

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    goto :goto_42

    :cond_40
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    :goto_42
    return v2
.end method

.method private getRoamEventfromWCM()Z
    .registers 5

    .line 2233
    const-string/jumbo v0, "wifi_wcm_event_roam_complete"

    .line 2234
    .local v0, "symbol":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2235
    .local v1, "defaultValue":I
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 2236
    .local v2, "mode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    return v3
.end method

.method private getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 1753
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_2b
    if-eqz v0, :cond_2f

    move-object v1, v0

    goto :goto_30

    :cond_2f
    move-object v1, p3

    :goto_30
    return-object v1
.end method

.method private getTestUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "key"    # Ljava/lang/String;

    .line 1618
    const-string v0, "connectivity"

    const-string/jumbo v1, "test_url_expiration_time"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1620
    .local v1, "strExpiration":Ljava/lang/String;
    if-nez v1, :cond_d

    return-object v2

    .line 1624
    :cond_d
    :try_start_d
    invoke-static {v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_29

    .line 1628
    .local v3, "expTime":J
    nop

    .line 1630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1631
    .local v5, "now":J
    cmp-long v7, v3, v5

    if-ltz v7, :cond_28

    sub-long v7, v3, v5

    sget-wide v9, Lcom/android/server/connectivity/WifiNetworkMonitor;->TEST_URL_EXPIRATION_MS:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_23

    goto :goto_28

    .line 1632
    :cond_23
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1631
    :cond_28
    :goto_28
    return-object v2

    .line 1625
    .end local v3    # "expTime":J
    .end local v5    # "now":J
    :catch_29
    move-exception v0

    .line 1626
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "Invalid test URL expiration time format"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1627
    return-object v2
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .registers 7
    .param p1, "netId"    # I

    .line 1286
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1287
    .local v0, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1288
    return-object v1

    .line 1290
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 1291
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_1f

    .line 1292
    return-object v3

    .line 1294
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1f
    goto :goto_e

    .line 1295
    :cond_20
    return-object v1
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 3

    .line 1275
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    .line 1276
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1278
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private static hasPrivateIpAddress([Ljava/net/InetAddress;)Z
    .registers 6
    .param p0, "addresses"    # [Ljava/net/InetAddress;

    .line 2315
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2316
    return v0

    .line 2318
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_22

    aget-object v3, p0, v2

    .line 2319
    .local v3, "address":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v3}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2320
    invoke-static {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isIPv6ULA(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_20

    .line 2318
    .end local v3    # "address":Ljava/net/InetAddress;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2321
    .restart local v3    # "address":Ljava/net/InetAddress;
    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 2324
    .end local v3    # "address":Ljava/net/InetAddress;
    :cond_22
    return v0
.end method

.method private hideProvisioningNotification()V
    .registers 3

    .line 447
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiNetworkMonitorCallbacks()Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->hideProvisioningNotification(Z)V

    .line 448
    return-void
.end method

.method private initialize()V
    .registers 3

    .line 1426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setCurrentWifiConnectionMode(I)V

    .line 1427
    new-instance v1, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;)V

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    .line 1428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 1429
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z

    .line 1430
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    .line 1431
    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNextFallbackUrlIndex:I

    .line 1432
    iput-boolean v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z

    .line 1433
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    .line 1434
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIgnorePrivateIpResponse:Z

    .line 1435
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWasChinaMode:Z

    .line 1436
    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsMultiNetwork:Z

    .line 1437
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMultiNetworkIssuedUid:I

    .line 1438
    return-void
.end method

.method private isCaptivePortal()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 14

    .line 1847
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isTestCaptivePortalServerHttpsUrlSet()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isTestCaptivePortalServerHttpUrlSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1848
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1850
    :cond_11
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 1851
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalHttpsUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpsUrls:[Ljava/net/URL;

    .line 1852
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalHttpUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpUrls:[Ljava/net/URL;

    .line 1853
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 1855
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    .line 1856
    sget-boolean v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Validation disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_39
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->success(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1860
    :cond_3e
    const/4 v0, 0x0

    .line 1861
    .local v0, "pacUrl":Ljava/net/URL;
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpsUrls:[Ljava/net/URL;

    .line 1862
    .local v2, "httpsUrls":[Ljava/net/URL;
    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpUrls:[Ljava/net/URL;

    .line 1881
    .local v3, "httpUrls":[Ljava/net/URL;
    iget-object v4, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    .line 1882
    .local v4, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v4, :cond_6a

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 1883
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1884
    if-nez v0, :cond_6a

    .line 1885
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    .line 1889
    :cond_6a
    if-nez v0, :cond_7f

    array-length v5, v3

    if-eqz v5, :cond_7a

    array-length v5, v2

    if-eqz v5, :cond_7a

    aget-object v5, v3, v1

    if-eqz v5, :cond_7a

    aget-object v5, v2, v1

    if-nez v5, :cond_7f

    .line 1891
    :cond_7a
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    .line 1894
    :cond_7f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1897
    .local v5, "startTime":J
    if-eqz v0, :cond_8c

    .line 1898
    const/4 v1, 0x0

    const/4 v7, 0x3

    invoke-direct {p0, v1, v0, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .local v1, "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    goto :goto_af

    .line 1900
    .end local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_8c
    iget-boolean v7, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_a0

    array-length v7, v2

    if-ne v7, v8, :cond_a0

    array-length v7, v3

    if-ne v7, v8, :cond_a0

    .line 1902
    aget-object v7, v2, v1

    aget-object v1, v3, v1

    invoke-direct {p0, v4, v7, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendHttpAndHttpsParallelWithFallbackProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .restart local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    goto :goto_af

    .line 1904
    .end local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_a0
    iget-boolean v7, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUseHttps:Z

    if-eqz v7, :cond_a9

    .line 1906
    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMultiParallelHttpAndHttpsProbes(Landroid/net/ProxyInfo;[Ljava/net/URL;[Ljava/net/URL;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .restart local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    goto :goto_af

    .line 1908
    .end local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_a9
    aget-object v1, v3, v1

    invoke-direct {p0, v4, v1, v8}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .line 1912
    .restart local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :goto_af
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1914
    .local v7, "endTime":J
    sget-object v9, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCaptivePortal: isSuccessful()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " isPortal()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " RedirectUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isPartialConnectivity()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPartialConnectivity()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " Time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v7, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1914
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    return-object v1
.end method

.method private isCaptivePortalForChinaWifi()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 15

    .line 1935
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isTestCaptivePortalServerHttpsUrlSet()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isTestCaptivePortalServerHttpUrlSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1936
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNotEnabledState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1938
    :cond_11
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 1939
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalHttpsUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpsUrls:[Ljava/net/URL;

    .line 1940
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalHttpUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalHttpUrls:[Ljava/net/URL;

    .line 1941
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 1943
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    .line 1944
    sget-boolean v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Validation disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_39
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->success(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1948
    :cond_3e
    const/4 v0, 0x0

    .line 1949
    .local v0, "pacUrl":Ljava/net/URL;
    const-string/jumbo v2, "http://connectivity.samsung.com.cn/generate_204"

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1953
    .local v2, "httpUrl":Ljava/net/URL;
    iget-boolean v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_5e

    .line 1954
    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 1955
    .local v3, "httpUrlCn":Ljava/net/URL;
    sget-object v5, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move-object v9, v3

    move-object v10, v4

    .local v4, "httpUrlCn2":Ljava/net/URL;
    goto :goto_86

    .line 1957
    .end local v3    # "httpUrlCn":Ljava/net/URL;
    .end local v4    # "httpUrlCn2":Ljava/net/URL;
    :cond_5e
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 1958
    .local v3, "rand":Ljava/util/Random;
    sget-object v5, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    array-length v6, v5

    .line 1959
    .local v6, "listSize":I
    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 1960
    .local v5, "index":I
    sget-object v7, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    rem-int v8, v5, v6

    aget-object v7, v7, v8

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 1961
    .local v7, "httpUrlCn":Ljava/net/URL;
    sget-object v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->SECONDARY_HTTP_URLS_CHINA:[Ljava/lang/String;

    add-int/2addr v5, v4

    rem-int v4, v5, v6

    aget-object v4, v8, v4

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move-object v10, v4

    move-object v9, v7

    .line 1981
    .end local v3    # "rand":Ljava/util/Random;
    .end local v5    # "index":I
    .end local v6    # "listSize":I
    .end local v7    # "httpUrlCn":Ljava/net/URL;
    .local v9, "httpUrlCn":Ljava/net/URL;
    .local v10, "httpUrlCn2":Ljava/net/URL;
    :goto_86
    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v11

    .line 1982
    .local v11, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v11, :cond_ad

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 1983
    invoke-virtual {v11}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1984
    if-nez v0, :cond_ad

    .line 1985
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    .line 1989
    :cond_ad
    if-nez v0, :cond_ba

    if-eqz v2, :cond_b5

    if-eqz v9, :cond_b5

    if-nez v10, :cond_ba

    .line 1990
    :cond_b5
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    .line 1993
    :cond_ba
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1996
    .local v12, "startTime":J
    if-eqz v0, :cond_c7

    .line 1997
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .local v1, "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    goto :goto_d2

    .line 2001
    .end local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_c7
    iget-boolean v8, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRunFullParallelCheck:Z

    move-object v3, p0

    move-object v4, v11

    move-object v5, v2

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendParallelHttpProbesForChinaWifi(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Z)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    .line 2004
    .restart local v1    # "result":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :goto_d2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2006
    .local v3, "endTime":J
    sget-object v5, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCaptivePortalForChinaWifi: isSuccessful()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isPortal()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " RedirectUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isPartialConnectivity()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPartialConnectivity()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " Time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2006
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    return-object v1
.end method

.method private static isConclusiveResult(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "result"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .param p1, "captivePortalApiUrl"    # Landroid/net/Uri;

    .line 2595
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2596
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isConcludedFromHttps()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 2595
    :goto_18
    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 2850
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static isIPv6ULA(Ljava/net/InetAddress;)Z
    .registers 4
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 2331
    instance-of v0, p0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 2332
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xfe

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    nop

    .line 2331
    :goto_14
    return v1
.end method

.method private isMultiNetworkAvailableApp(IILjava/lang/String;)Z
    .registers 8
    .param p1, "cuid"    # I
    .param p2, "issuedUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1266
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3f2

    if-le p1, v2, :cond_19

    if-gt p2, v2, :cond_9

    goto :goto_19

    .line 1270
    :cond_9
    if-eqz p3, :cond_14

    iget-object v3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    invoke-virtual {v3, p3}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->isMultiNetworkExceptionPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    .line 1271
    :cond_14
    if-le p2, v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0

    .line 1267
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mParam:Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;

    invoke-virtual {v2, p3}, Lcom/android/server/connectivity/WifiNetworkMonitor$ParameterManager;->isMultiNetworkAllowingSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    return v0

    .line 1268
    :cond_22
    return v1
.end method

.method private isOperatorFixed()Z
    .registers 7

    .line 3346
    const-string/jumbo v0, "mdc.singlesku"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3347
    .local v0, "isSupportTrueSingleSKU":Z
    const-string/jumbo v2, "mdc.singlesku.activated"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3348
    .local v2, "isTSSActivated":Z
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_2a

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportTrueSingleSKU "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    :cond_2a
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_45

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTSSActivated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_45
    if-eqz v0, :cond_4a

    if-nez v2, :cond_4a

    .line 3351
    return v1

    .line 3353
    :cond_4a
    if-eqz v0, :cond_57

    .line 3354
    sget-boolean v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v1, :cond_57

    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Support TSS model and TSS Activated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_57
    const/4 v1, 0x1

    return v1
.end method

.method private isPoorNetworkTestEnabled()Z
    .registers 4

    .line 1327
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    :cond_12
    return v2
.end method

.method private isPrivateDnsValidationRequired()Z
    .registers 4

    .line 3211
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3212
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3215
    :cond_6
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0xd

    .line 3216
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0xe

    .line 3217
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3219
    const/4 v1, 0x1

    return v1

    .line 3240
    :cond_20
    return v1
.end method

.method private isTSSAndOperatorNotFixed()Z
    .registers 5

    .line 3336
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportBlockSkipForSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3338
    .local v0, "isVendorSupportTSS":Z
    sget-boolean v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVendorSupportTSS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    :cond_25
    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isOperatorFixed()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 3340
    const/4 v1, 0x1

    return v1

    .line 3342
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method

.method private isTestCaptivePortalServerHttpsUrlSet()Z
    .registers 3

    .line 1649
    const-string/jumbo v0, "test_captive_portal_https_url"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "testUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isValidTestUrl(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isValidTestUrl(Ljava/lang/String;)Z
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .line 1637
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1641
    :cond_8
    :try_start_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_18

    return v0

    .line 1642
    :catchall_18
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing test URL"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    return v1
.end method

.method static synthetic lambda$sendMultiParallelHttpAndHttpsProbes$2(Ljava/util/concurrent/Future;)V
    .registers 2
    .param p0, "future"    # Ljava/util/concurrent/Future;

    .line 2652
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .registers 4

    .line 1582
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/URL;

    const-string/jumbo v1, "http://www.google.com/gen_204"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://play.googleapis.com/generate_204"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method private makeCaptivePortalHttpUrls()[Ljava/net/URL;
    .registers 4

    .line 1578
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URL;

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private makeCaptivePortalHttpsUrls()[Ljava/net/URL;
    .registers 4

    .line 1574
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/URL;

    const-string/jumbo v1, "https://www.google.com/generate_204"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private makeProbeConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2467
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2468
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2469
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2470
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2471
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2473
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 2474
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    :cond_27
    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 2854
    if-eqz p1, :cond_1d

    .line 2856
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    .line 2857
    :catch_8
    move-exception v0

    .line 2858
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2861
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private matchingAddressExists([Ljava/net/InetAddress;[Ljava/net/InetAddress;)Z
    .registers 11
    .param p1, "setA"    # [Ljava/net/InetAddress;
    .param p2, "setB"    # [Ljava/net/InetAddress;

    .line 2240
    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_6

    goto :goto_29

    .line 2243
    :cond_6
    array-length v1, p1

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_28

    aget-object v3, p1, v2

    .line 2244
    .local v3, "addressA":Ljava/net/InetAddress;
    array-length v4, p2

    move v5, v0

    :goto_e
    if-ge v5, v4, :cond_25

    aget-object v6, p2, v5

    .line 2245
    .local v6, "addressB":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_22

    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_22

    .line 2246
    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2247
    const/4 v0, 0x1

    return v0

    .line 2244
    .end local v6    # "addressB":Ljava/net/InetAddress;
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 2243
    .end local v3    # "addressA":Ljava/net/InetAddress;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2252
    :cond_28
    return v0

    .line 2241
    :cond_29
    :goto_29
    return v0
.end method

.method private nextFallbackSpec()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    .registers 4

    .line 2838
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackSpecs:[Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2839
    const/4 v0, 0x0

    return-object v0

    .line 2842
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackSpecs:[Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 2843
    .local v0, "idx":I
    aget-object v1, v1, v0

    return-object v1
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .registers 4

    .line 2829
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 2830
    const/4 v0, 0x0

    return-object v0

    .line 2832
    :cond_7
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 2833
    .local v0, "idx":I
    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNextFallbackUrlIndex:I

    iget-object v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNextFallbackUrlIndex:I

    .line 2834
    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private notifyNetworkTested(Landroid/net/NetworkTestResultParcelable;)V
    .registers 5
    .param p1, "result"    # Landroid/net/NetworkTestResultParcelable;

    .line 428
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->setWifiNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 431
    goto :goto_c

    .line 429
    :catch_4
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Error sending network test result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private notifyProbeStatusChanged(II)V
    .registers 6
    .param p1, "probesCompleted"    # I
    .param p2, "probesSucceeded"    # I

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiNetworkMonitorCallbacks()Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->notifyProbeStatusChanged(IIZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 439
    goto :goto_11

    .line 437
    :catch_9
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Error sending probe status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method private static readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "maxLength"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2482
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2483
    .local v0, "reader":Ljava/io/InputStreamReader;
    const/16 v1, 0x3e8

    new-array v1, v1, [C

    .line 2484
    .local v1, "buffer":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2485
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 2486
    .local v3, "totalReadLength":I
    :goto_f
    if-ge v3, p1, :cond_25

    .line 2487
    sub-int v4, p1, v3

    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2488
    .local v4, "availableLength":I
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    .line 2489
    .local v6, "currentLength":I
    if-gez v6, :cond_20

    goto :goto_25

    .line 2491
    :cond_20
    add-int/2addr v3, v6

    .line 2492
    invoke-virtual {v2, v1, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2493
    .end local v4    # "availableLength":I
    .end local v6    # "currentLength":I
    goto :goto_f

    .line 2494
    :cond_25
    :goto_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 3316
    const/4 v0, 0x0

    .line 3317
    .local v0, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 3318
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v2

    .line 3320
    .local v2, "flagResult":I
    if-ltz v2, :cond_36

    const/4 v3, 0x1

    if-gt v2, v3, :cond_36

    .line 3323
    if-ne v2, v3, :cond_51

    .line 3324
    const-string v3, "com.google"

    invoke-static {p0, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_51

    .line 3325
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_34

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_34
    const/4 v0, 0x1

    goto :goto_51

    .line 3329
    :cond_36
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_51

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :cond_51
    :goto_51
    sget-boolean v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v3, :cond_6c

    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_6c
    return v0
.end method

.method private sendDnsAndCheckSocketSetup(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 2172
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2177
    .local v0, "host":Ljava/lang/String;
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2178
    .local v1, "resolvedAddr":[Ljava/net/InetAddress;
    iget-boolean v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x3

    if-eq p3, v2, :cond_24

    const/4 v2, 0x2

    if-eq p3, v2, :cond_24

    if-nez p1, :cond_24

    .line 2181
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hasPrivateIpAddress([Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2182
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PRIVATE_IP:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v2

    .line 2184
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->checkSocketSetup(Ljava/net/URL;ILcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    return-object v2
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 2263
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "host":Ljava/lang/String;
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2271
    .local v1, "resolvedAddr":[Ljava/net/InetAddress;
    iget-boolean v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    if-ne p3, v2, :cond_25

    if-nez p1, :cond_25

    iget-boolean v2, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIgnorePrivateIpResponse:Z

    if-nez v2, :cond_25

    .line 2272
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hasPrivateIpAddress([Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2273
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PRIVATE_IP:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v2

    .line 2275
    :cond_25
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    return-object v2
.end method

.method private sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 7
    .param p1, "host"    # Ljava/lang/String;

    .line 2287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2288
    return-object v1

    .line 2291
    :cond_8
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v0

    .line 2295
    .local v0, "watch":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getDnsProbeTimeout()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbeWithTimeout(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_19
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_19} :catch_1b

    .line 2296
    .local v1, "addresses":[Ljava/net/InetAddress;
    const/4 v2, 0x1

    .line 2300
    .local v2, "result":I
    goto :goto_20

    .line 2297
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "result":I
    :catch_1b
    move-exception v1

    .line 2298
    .local v1, "e":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    .line 2299
    .local v2, "addresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    move-object v1, v2

    move v2, v3

    .line 2301
    .local v1, "addresses":[Ljava/net/InetAddress;
    .local v2, "result":I
    :goto_20
    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->stop()J

    move-result-wide v3

    .line 2303
    .local v3, "latency":J
    return-object v1
.end method

.method private sendDnsProbeWithTimeout(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2281
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCleartextDnsNetwork:Landroid/net/Network;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$DnsUtils;->getAllByName(Landroid/net/DnsResolver;Landroid/net/Network;Ljava/lang/String;III)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private sendHttpAndHttpsParallelWithFallbackProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 18
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrl"    # Ljava/net/URL;
    .param p3, "httpUrl"    # Ljava/net/URL;

    .line 2738
    move-object v8, p0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x2

    invoke-direct {v0, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v0

    .line 2741
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v0, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_3a

    iget-boolean v0, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    if-nez v0, :cond_3a

    if-nez p1, :cond_3a

    .line 2742
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2743
    .local v0, "httpResolvedAddr":[Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hasPrivateIpAddress([Ljava/net/InetAddress;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2744
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2745
    .local v1, "httpsResolvedAddr":[Ljava/net/InetAddress;
    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->matchingAddressExists([Ljava/net/InetAddress;[Ljava/net/InetAddress;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 2746
    iput-boolean v11, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIgnorePrivateIpResponse:Z

    .line 2747
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Different PRIVATE IP for different URL, ignore Private IP responses."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    .end local v1    # "httpsResolvedAddr":[Ljava/net/InetAddress;
    :cond_38
    iput-boolean v11, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    .line 2753
    .end local v0    # "httpResolvedAddr":[Ljava/net/InetAddress;
    :cond_3a
    iget-object v0, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCaptivePortalApiUrl(Landroid/net/LinkProperties;)Landroid/net/Uri;

    move-result-object v12

    .line 2754
    .local v12, "capportApiUrl":Landroid/net/Uri;
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;

    const/4 v6, 0x2

    move-object v1, v0

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    move-object/from16 v5, p2

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/util/concurrent/CountDownLatch;Landroid/net/ProxyInfo;Ljava/net/URL;ILandroid/net/Uri;)V

    move-object v13, v0

    .line 2756
    .local v13, "httpsProbe":Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;

    const/4 v6, 0x1

    move-object v1, v0

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Ljava/util/concurrent/CountDownLatch;Landroid/net/ProxyInfo;Ljava/net/URL;ILandroid/net/Uri;)V

    .line 2760
    .local v1, "httpProbe":Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;
    const/4 v2, 0x0

    :try_start_58
    invoke-virtual {v13}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->start()V

    .line 2761
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->start()V

    .line 2762
    const-wide/16 v3, 0xbb8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_65} :catch_fe

    .line 2766
    nop

    .line 2768
    invoke-virtual {v13}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    .line 2769
    .local v3, "httpsResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v4

    .line 2772
    .local v4, "httpResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-static {v4, v12}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isConclusiveResult(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2774
    return-object v4

    .line 2777
    :cond_75
    invoke-static {v3, v12}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isConclusiveResult(Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2779
    return-object v3

    .line 2787
    :cond_7c
    iget-boolean v0, v8, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    if-eqz v0, :cond_90

    invoke-virtual {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isDnsPrivateIpResponse()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2788
    const-string v0, "DNS response to the URL is private IP"

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2789
    invoke-static {v9}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2793
    :cond_90
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->nextFallbackSpec()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    move-result-object v5

    .line 2794
    .local v5, "probeSpec":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v0

    goto :goto_9f

    :cond_9b
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v0

    :goto_9f
    move-object v6, v0

    .line 2795
    .local v6, "fallbackUrl":Ljava/net/URL;
    const/4 v0, 0x0

    .line 2796
    .local v0, "fallbackProbeResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    if-eqz v6, :cond_b1

    .line 2797
    const/4 v7, 0x4

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    .line 2799
    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 2800
    return-object v0

    .line 2799
    :cond_af
    move-object v7, v0

    goto :goto_b2

    .line 2796
    :cond_b1
    move-object v7, v0

    .line 2805
    .end local v0    # "fallbackProbeResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .local v7, "fallbackProbeResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :goto_b2
    :try_start_b2
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->join()V

    .line 2808
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2809
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2812
    :cond_c4
    invoke-virtual {v13}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->join()V

    .line 2815
    nop

    .line 2816
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_dd

    if-eqz v7, :cond_db

    .line 2817
    invoke-virtual {v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_db

    goto :goto_dd

    :cond_db
    move v11, v2

    goto :goto_de

    :cond_dd
    :goto_dd
    nop

    :goto_de
    move v0, v11

    .line 2818
    .local v0, "isHttpSuccessful":Z
    invoke-virtual {v13}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isFailed()Z

    move-result v9

    if-eqz v9, :cond_ee

    if-eqz v0, :cond_ee

    .line 2819
    sget-object v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->PARTIAL:Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    return-object v2

    .line 2821
    :cond_ee
    invoke-virtual {v13}, Lcom/android/server/connectivity/WifiNetworkMonitor$ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2
    :try_end_f2
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_f2} :catch_f3

    return-object v2

    .line 2822
    .end local v0    # "isHttpSuccessful":Z
    :catch_f3
    move-exception v0

    .line 2823
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v9, "Error: http or https probe wait interrupted!"

    invoke-static {v9}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2824
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    return-object v2

    .line 2763
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "httpsResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .end local v4    # "httpResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .end local v5    # "probeSpec":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;
    .end local v6    # "fallbackUrl":Ljava/net/URL;
    .end local v7    # "fallbackProbeResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :catch_fe
    move-exception v0

    .line 2764
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v3, "Error: probes wait interrupted!"

    invoke-static {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2765
    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    return-object v2
.end method

.method private sendHttpProbe(Ljava/net/URL;ILcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 29
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    .line 2341
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "false"

    const/4 v5, 0x0

    .line 2342
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v6, 0x257

    .line 2343
    .local v6, "httpResponseCode":I
    const/4 v7, 0x0

    .line 2344
    .local v7, "redirectUrl":Ljava/lang/String;
    new-instance v8, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    invoke-virtual {v8}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v8

    .line 2345
    .local v8, "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    const/16 v9, -0x7f

    invoke-static {v9}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v9

    .line 2350
    .local v9, "oldTag":I
    const/4 v11, 0x3

    if-ne v3, v11, :cond_23

    const/4 v12, 0x1

    goto :goto_24

    :cond_23
    const/4 v12, 0x0

    .line 2351
    .local v12, "followRedirect":Z
    :goto_24
    :try_start_24
    invoke-direct {v1, v2, v12}, Lcom/android/server/connectivity/WifiNetworkMonitor;->makeProbeConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;

    move-result-object v13

    move-object v5, v13

    .line 2353
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2356
    .local v13, "requestHeader":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2358
    .local v14, "requestTimestamp":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_1a4
    .catchall {:try_start_24 .. :try_end_39} :catchall_1a0

    move/from16 v6, v16

    .line 2359
    :try_start_3b
    const-string/jumbo v10, "location"

    invoke-virtual {v5, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_42} :catch_19a
    .catchall {:try_start_3b .. :try_end_42} :catchall_194

    move-object v7, v10

    .line 2362
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 2364
    .local v17, "responseTimestamp":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_51} :catch_18c
    .catchall {:try_start_43 .. :try_end_51} :catchall_184

    move-object/from16 v20, v7

    move-object v11, v8

    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v11, "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v20, "redirectUrl":Ljava/lang/String;
    sub-long v7, v17, v14

    :try_start_56
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ret="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " request="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2364
    invoke-static {v3, v2, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2375
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_163

    .line 2376
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v21
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_85} :catch_17c
    .catchall {:try_start_56 .. :try_end_85} :catchall_174

    move-wide/from16 v23, v21

    .line 2377
    .local v23, "contentLength":J
    const/4 v8, 0x3

    if-ne v3, v8, :cond_a3

    .line 2378
    :try_start_8a
    const-string v0, "PAC fetch 200 response interpreted as 204 response."

    invoke-static {v3, v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 2380
    const/16 v6, 0xcc

    move-object/from16 v23, v11

    goto/16 :goto_169

    .line 2427
    .end local v12    # "followRedirect":Z
    .end local v13    # "requestHeader":Ljava/lang/String;
    .end local v14    # "requestTimestamp":J
    .end local v17    # "responseTimestamp":J
    .end local v23    # "contentLength":J
    :catchall_95
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    goto/16 :goto_1d9

    .line 2420
    :catch_9c
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    goto/16 :goto_1a7

    .line 2381
    .restart local v12    # "followRedirect":Z
    .restart local v13    # "requestHeader":Ljava/lang/String;
    .restart local v14    # "requestTimestamp":J
    .restart local v17    # "responseTimestamp":J
    .restart local v23    # "contentLength":J
    :cond_a3
    const-wide/16 v21, -0x1

    move-wide/from16 v7, v23

    .end local v23    # "contentLength":J
    .local v7, "contentLength":J
    cmp-long v19, v7, v21

    if-nez v19, :cond_c7

    .line 2385
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v10, -0x1

    if-ne v0, v10, :cond_c1

    .line 2386
    const-string v0, "Empty 200 response interpreted as failed response."

    invoke-static {v3, v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_bb} :catch_9c
    .catchall {:try_start_8a .. :try_end_bb} :catchall_95

    .line 2388
    const/16 v6, 0x257

    move-object/from16 v23, v11

    goto/16 :goto_169

    .line 2385
    :cond_c1
    move/from16 v21, v6

    move-object/from16 v23, v11

    goto/16 :goto_167

    .line 2390
    :cond_c7
    :try_start_c7
    invoke-virtual {v1, v7, v8}, Lcom/android/server/connectivity/WifiNetworkMonitor;->matchesHttpContentLength(J)Z

    move-result v19

    if-eqz v19, :cond_144

    .line 2391
    new-instance v10, Ljava/io/BufferedInputStream;
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cf} :catch_17c
    .catchall {:try_start_c7 .. :try_end_cf} :catchall_174

    move/from16 v21, v6

    .end local v6    # "httpResponseCode":I
    .local v21, "httpResponseCode":I
    :try_start_d1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v10

    .line 2392
    .local v6, "is":Ljava/io/InputStream;
    long-to-int v10, v7

    .line 2393
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v22
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_de} :catch_13b
    .catchall {:try_start_d1 .. :try_end_de} :catchall_132

    move-object/from16 v23, v11

    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v23, "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :try_start_e0
    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/WifiNetworkMonitor;->extractCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    .line 2392
    invoke-static {v6, v10, v11}, Lcom/android/server/connectivity/WifiNetworkMonitor;->readAsString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    .line 2394
    .local v10, "content":Ljava/lang/String;
    invoke-virtual {v1, v10, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f2

    .line 2396
    const/16 v0, 0x257

    move v11, v0

    .end local v21    # "httpResponseCode":I
    .local v0, "httpResponseCode":I
    goto :goto_fe

    .line 2397
    .end local v0    # "httpResponseCode":I
    .restart local v21    # "httpResponseCode":I
    :cond_f2
    invoke-virtual {v1, v10, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f6} :catch_15d
    .catchall {:try_start_e0 .. :try_end_f6} :catchall_156

    if-eqz v0, :cond_fc

    .line 2399
    const/16 v0, 0xcc

    move v11, v0

    .end local v21    # "httpResponseCode":I
    .restart local v0    # "httpResponseCode":I
    goto :goto_fe

    .line 2397
    .end local v0    # "httpResponseCode":I
    .restart local v21    # "httpResponseCode":I
    :cond_fc
    move/from16 v11, v21

    .line 2402
    .end local v21    # "httpResponseCode":I
    .local v11, "httpResponseCode":I
    :goto_fe
    const/16 v0, 0xc8

    if-eq v11, v0, :cond_130

    .line 2403
    :try_start_102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "200 response with Content-length ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", content matches custom regexp, interpreted as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_123} :catch_12a
    .catchall {:try_start_102 .. :try_end_123} :catchall_124

    goto :goto_130

    .line 2427
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "contentLength":J
    .end local v10    # "content":Ljava/lang/String;
    .end local v12    # "followRedirect":Z
    .end local v13    # "requestHeader":Ljava/lang/String;
    .end local v14    # "requestTimestamp":J
    .end local v17    # "responseTimestamp":J
    :catchall_124
    move-exception v0

    move v6, v11

    move-object/from16 v7, v20

    goto/16 :goto_1d9

    .line 2420
    :catch_12a
    move-exception v0

    move v6, v11

    move-object/from16 v7, v20

    goto/16 :goto_1a7

    .line 2409
    .restart local v7    # "contentLength":J
    .restart local v12    # "followRedirect":Z
    .restart local v13    # "requestHeader":Ljava/lang/String;
    .restart local v14    # "requestTimestamp":J
    .restart local v17    # "responseTimestamp":J
    :cond_130
    :goto_130
    move v6, v11

    goto :goto_169

    .line 2427
    .end local v7    # "contentLength":J
    .end local v12    # "followRedirect":Z
    .end local v13    # "requestHeader":Ljava/lang/String;
    .end local v14    # "requestTimestamp":J
    .end local v17    # "responseTimestamp":J
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v11, "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    :catchall_132
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    move/from16 v6, v21

    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto/16 :goto_1d9

    .line 2420
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catch_13b
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    move/from16 v6, v21

    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto/16 :goto_1a7

    .line 2409
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v6, "httpResponseCode":I
    .restart local v7    # "contentLength":J
    .restart local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v12    # "followRedirect":Z
    .restart local v13    # "requestHeader":Ljava/lang/String;
    .restart local v14    # "requestTimestamp":J
    .restart local v17    # "responseTimestamp":J
    :cond_144
    move/from16 v21, v6

    move-object/from16 v23, v11

    .end local v6    # "httpResponseCode":I
    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    const-wide/16 v0, 0x4

    cmp-long v0, v7, v0

    if-gtz v0, :cond_167

    .line 2414
    :try_start_14e
    const-string v0, "200 response with Content-length <= 4 interpreted as failed response."

    invoke-static {v3, v2, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_153} :catch_15d
    .catchall {:try_start_14e .. :try_end_153} :catchall_156

    .line 2417
    const/16 v6, 0x257

    .end local v21    # "httpResponseCode":I
    .restart local v6    # "httpResponseCode":I
    goto :goto_169

    .line 2427
    .end local v6    # "httpResponseCode":I
    .end local v7    # "contentLength":J
    .end local v12    # "followRedirect":Z
    .end local v13    # "requestHeader":Ljava/lang/String;
    .end local v14    # "requestTimestamp":J
    .end local v17    # "responseTimestamp":J
    .restart local v21    # "httpResponseCode":I
    :catchall_156
    move-exception v0

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_1d9

    .line 2420
    :catch_15d
    move-exception v0

    move-object/from16 v7, v20

    move/from16 v6, v21

    goto :goto_1a7

    .line 2375
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v12    # "followRedirect":Z
    .restart local v13    # "requestHeader":Ljava/lang/String;
    .restart local v14    # "requestTimestamp":J
    .restart local v17    # "responseTimestamp":J
    :cond_163
    move/from16 v21, v6

    move-object/from16 v23, v11

    .line 2427
    .end local v6    # "httpResponseCode":I
    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .end local v12    # "followRedirect":Z
    .end local v13    # "requestHeader":Ljava/lang/String;
    .end local v14    # "requestTimestamp":J
    .end local v17    # "responseTimestamp":J
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :cond_167
    :goto_167
    move/from16 v6, v21

    .end local v21    # "httpResponseCode":I
    .restart local v6    # "httpResponseCode":I
    :goto_169
    if-eqz v5, :cond_16e

    .line 2428
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2430
    :cond_16e
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2431
    move-object/from16 v7, v20

    goto :goto_1c5

    .line 2427
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catchall_174
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    .end local v6    # "httpResponseCode":I
    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1d9

    .line 2420
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catch_17c
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v23, v11

    move-object/from16 v7, v20

    .end local v6    # "httpResponseCode":I
    .end local v11    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1a7

    .line 2427
    .end local v20    # "redirectUrl":Ljava/lang/String;
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .local v7, "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catchall_184
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    .end local v6    # "httpResponseCode":I
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v20    # "redirectUrl":Ljava/lang/String;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1d9

    .line 2420
    .end local v20    # "redirectUrl":Ljava/lang/String;
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catch_18c
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    .end local v6    # "httpResponseCode":I
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v20    # "redirectUrl":Ljava/lang/String;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1a7

    .line 2427
    .end local v20    # "redirectUrl":Ljava/lang/String;
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catchall_194
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v23, v8

    .end local v6    # "httpResponseCode":I
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1d9

    .line 2420
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catch_19a
    move-exception v0

    move/from16 v21, v6

    move-object/from16 v23, v8

    .end local v6    # "httpResponseCode":I
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v21    # "httpResponseCode":I
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1a7

    .line 2427
    .end local v21    # "httpResponseCode":I
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v6    # "httpResponseCode":I
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catchall_1a0
    move-exception v0

    move-object/from16 v23, v8

    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    goto :goto_1d9

    .line 2420
    .end local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .restart local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :catch_1a4
    move-exception v0

    move-object/from16 v23, v8

    .line 2421
    .end local v8    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    :goto_1a7
    :try_start_1a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Probe failed with exception "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_1bb
    .catchall {:try_start_1a7 .. :try_end_1bb} :catchall_1d8

    .line 2423
    nop

    .line 2427
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_1c1

    .line 2428
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2430
    :cond_1c1
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2431
    nop

    .line 2434
    :goto_1c5
    if-nez v4, :cond_1d3

    .line 2435
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    shl-int/2addr v8, v3

    invoke-direct {v0, v6, v7, v1, v8}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 2438
    :cond_1d3
    invoke-virtual {v4, v6, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2427
    :catchall_1d8
    move-exception v0

    :goto_1d9
    if-eqz v5, :cond_1de

    .line 2428
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2430
    :cond_1de
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2431
    throw v0
.end method

.method private sendMultiParallelHttpAndHttpsProbes(Landroid/net/ProxyInfo;[Ljava/net/URL;[Ljava/net/URL;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 21
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrls"    # [Ljava/net/URL;
    .param p3, "httpUrls"    # [Ljava/net/URL;

    .line 2607
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    array-length v0, v8

    array-length v1, v9

    add-int v10, v0, v1

    .line 2609
    .local v10, "num":I
    nop

    .line 2610
    const/4 v0, 0x5

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2609
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 2611
    .local v11, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v0, v11}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    move-object v12, v0

    .line 2613
    .local v12, "ecs":Ljava/util/concurrent/CompletionService;, "Ljava/util/concurrent/CompletionService<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;>;"
    iget-object v0, v7, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCaptivePortalApiUrl(Landroid/net/LinkProperties;)Landroid/net/Uri;

    move-result-object v13

    .line 2614
    .local v13, "capportApiUrl":Landroid/net/Uri;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 2624
    .local v14, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;>;>;"
    const/4 v0, 0x0

    :try_start_27
    aget-object v5, v9, v0

    .line 2625
    .local v5, "urlMaybeWithCapport":Ljava/net/URL;
    array-length v15, v9

    move v6, v0

    :goto_2b
    if-ge v6, v15, :cond_49

    aget-object v4, v9, v6

    .line 2626
    .local v4, "url":Ljava/net/URL;
    new-instance v3, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v0, v3

    move-object/from16 v3, p1

    move/from16 v16, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$i5wrIjMHynzgGKxku5yBCoHrtVs;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Landroid/net/Uri;)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2625
    nop

    .end local v4    # "url":Ljava/net/URL;
    add-int/lit8 v6, v16, 0x1

    const/4 v0, 0x0

    goto :goto_2b

    .line 2630
    :cond_49
    array-length v0, v8

    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v0, :cond_61

    aget-object v2, v8, v1

    .line 2631
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$n1xkPvPXWMQj31orOMUTLuzWxAA;
    :try_end_51
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_51} :catch_a7
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_51} :catch_9a
    .catchall {:try_start_27 .. :try_end_51} :catchall_96

    move-object/from16 v4, p1

    :try_start_53
    invoke-direct {v3, v7, v4, v2, v13}, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$n1xkPvPXWMQj31orOMUTLuzWxAA;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    .line 2632
    invoke-interface {v12, v3}, Ljava/util/concurrent/CompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 2631
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2630
    nop

    .end local v2    # "url":Ljava/net/URL;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 2635
    :cond_61
    move-object/from16 v4, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2636
    .local v0, "completedProbes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    if-ge v1, v10, :cond_91

    .line 2637
    invoke-interface {v12}, Ljava/util/concurrent/CompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    array-length v2, v8

    if-eqz v13, :cond_7d

    const/4 v3, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/connectivity/WifiNetworkMonitor;->evaluateCapportResult(Ljava/util/List;IZ)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2
    :try_end_82
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_53 .. :try_end_82} :catch_94
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_82} :catch_92
    .catchall {:try_start_53 .. :try_end_82} :catchall_b9

    .line 2640
    .local v2, "res":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    if-eqz v2, :cond_8e

    .line 2642
    nop

    .line 2652
    sget-object v3, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;

    invoke-interface {v14, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2653
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2642
    return-object v2

    .line 2636
    .end local v2    # "res":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .end local v0    # "completedProbes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;>;"
    .end local v1    # "i":I
    .end local v5    # "urlMaybeWithCapport":Ljava/net/URL;
    :cond_91
    goto :goto_9d

    .line 2647
    :catch_92
    move-exception v0

    goto :goto_9d

    .line 2645
    :catch_94
    move-exception v0

    goto :goto_aa

    .line 2652
    :catchall_96
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_ba

    .line 2647
    :catch_9a
    move-exception v0

    move-object/from16 v4, p1

    .line 2652
    :goto_9d
    nop

    :goto_9e
    sget-object v0, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;

    invoke-interface {v14, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2653
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2654
    goto :goto_b3

    .line 2645
    :catch_a7
    move-exception v0

    move-object/from16 v4, p1

    .line 2646
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :goto_aa
    :try_start_aa
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Error sending probes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b9

    .line 2652
    nop

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_9e

    .line 2656
    :goto_b3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2652
    :catchall_b9
    move-exception v0

    :goto_ba
    sget-object v1, Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$WifiNetworkMonitor$CTx2PlHd_MFd5mb3oubat2KpF_s;

    invoke-interface {v14, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2653
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2654
    throw v0
.end method

.method private sendParallelHttpProbesForChinaWifi(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Z)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 26
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpUrl"    # Ljava/net/URL;
    .param p3, "httpUrlCn"    # Ljava/net/URL;
    .param p4, "httpUrlCn2"    # Ljava/net/URL;
    .param p5, "runFullParallelCheck"    # Z

    .line 2019
    move-object/from16 v11, p0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v12, v0

    .line 2020
    .local v12, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v13, v0

    .line 2022
    .local v13, "latch2":Ljava/util/concurrent/CountDownLatch;
    const/4 v14, 0x0

    .line 2023
    .local v14, "PROBE_TYPE_CN_DEFAULT":I
    const/4 v15, 0x1

    .line 2024
    .local v15, "PROBE_TYPE_CN_1":I
    const/16 v16, 0x2

    .line 2063
    .local v16, "PROBE_TYPE_CN_2":I
    iget-boolean v0, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    if-eqz v0, :cond_45

    iget-boolean v0, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    if-nez v0, :cond_45

    if-nez p1, :cond_45

    .line 2064
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 2065
    .local v0, "httpResolvedAddr":[Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hasPrivateIpAddress([Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2066
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendDnsProbe(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 2067
    .local v2, "httpCnResolvedAddr":[Ljava/net/InetAddress;
    invoke-direct {v11, v0, v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->matchingAddressExists([Ljava/net/InetAddress;[Ljava/net/InetAddress;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 2068
    iput-boolean v1, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIgnorePrivateIpResponse:Z

    .line 2069
    sget-object v3, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v4, "Different PRIVATE IP for different URL, ignore Private IP responses."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    .end local v2    # "httpCnResolvedAddr":[Ljava/net/InetAddress;
    :cond_43
    iput-boolean v1, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mInitialPrivateIpCheckDone:Z

    .line 2075
    .end local v0    # "httpResolvedAddr":[Ljava/net/InetAddress;
    :cond_45
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v17, v0

    .line 2076
    .local v17, "httpProbe":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v18, v0

    .line 2077
    .local v18, "httpProbeCn":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;ZLjava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 2079
    .local v1, "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    if-eqz p5, :cond_85

    .line 2081
    :try_start_71
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->start()V

    .line 2082
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_79} :catch_7a

    .line 2086
    goto :goto_85

    .line 2083
    :catch_7a
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Error: probes wait interrupted!"

    invoke-static {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2085
    invoke-static {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    return-object v2

    .line 2089
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_85
    :goto_85
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v5

    .line 2092
    .local v5, "httpResult":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 2094
    return-object v5

    .line 2096
    :cond_90
    invoke-virtual {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2098
    return-object v5

    .line 2103
    :cond_97
    iget-boolean v0, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    const-string v6, "DNS response to the URL is private IP - CHINA WIFI"

    if-eqz v0, :cond_ab

    .line 2104
    invoke-virtual {v5}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isDnsPrivateIpResponse()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2105
    invoke-static {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2106
    invoke-static {v4}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2110
    :cond_ab
    :try_start_ab
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->start()V

    .line 2111
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->start()V

    .line 2112
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_b6} :catch_17d

    .line 2116
    nop

    .line 2118
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v2

    .line 2119
    .local v2, "httpResultCn":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v3

    .line 2121
    .local v3, "httpResultCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    if-eqz p5, :cond_130

    .line 2123
    invoke-virtual {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-virtual {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 2124
    iget-object v7, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 2125
    .local v7, "redirectUrlStr":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 2126
    .local v8, "redirectUrl2Str":Ljava/lang/String;
    if-eqz v7, :cond_12a

    if-eqz v8, :cond_12a

    .line 2128
    :try_start_d5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2129
    .local v0, "redirectUrl":Ljava/net/URL;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2130
    .local v9, "redirectUrl2":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 2132
    sget-object v4, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f4
    .catch Ljava/net/MalformedURLException; {:try_start_d5 .. :try_end_f4} :catch_10f

    move-object/from16 v19, v1

    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .local v19, "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :try_start_f6
    const-string v1, "RDTTSL - "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Ljava/net/MalformedURLException; {:try_start_f6 .. :try_end_109} :catch_10a

    .line 2134
    return-object v2

    .line 2136
    .end local v0    # "redirectUrl":Ljava/net/URL;
    .end local v9    # "redirectUrl2":Ljava/net/URL;
    :catch_10a
    move-exception v0

    goto :goto_112

    .line 2130
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v0    # "redirectUrl":Ljava/net/URL;
    .restart local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v9    # "redirectUrl2":Ljava/net/URL;
    :cond_10c
    move-object/from16 v19, v1

    .line 2138
    .end local v0    # "redirectUrl":Ljava/net/URL;
    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .end local v9    # "redirectUrl2":Ljava/net/URL;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    goto :goto_132

    .line 2136
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :catch_10f
    move-exception v0

    move-object/from16 v19, v1

    .line 2137
    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :goto_112
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendParallelHttpProbesForChinaWifi MalformedURLException: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 2126
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :cond_12a
    move-object/from16 v19, v1

    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    goto :goto_132

    .line 2123
    .end local v7    # "redirectUrlStr":Ljava/lang/String;
    .end local v8    # "redirectUrl2Str":Ljava/lang/String;
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :cond_12d
    move-object/from16 v19, v1

    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    goto :goto_132

    .line 2121
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :cond_130
    move-object/from16 v19, v1

    .line 2143
    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :goto_132
    iget-boolean v0, v11, Lcom/android/server/connectivity/WifiNetworkMonitor;->mPrivateIpNoInternetEnabled:Z

    if-eqz v0, :cond_14b

    .line 2144
    invoke-virtual {v2}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isDnsPrivateIpResponse()Z

    move-result v0

    if-nez v0, :cond_142

    invoke-virtual {v3}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->isDnsPrivateIpResponse()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 2145
    :cond_142
    invoke-static {v6}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2146
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2148
    :cond_14b
    iget v0, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0x257

    if-ne v0, v1, :cond_16a

    iget v0, v3, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    if-eq v0, v1, :cond_156

    goto :goto_16a

    .line 2158
    :cond_156
    :try_start_156
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->join()V

    .line 2161
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;->result()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_156 .. :try_end_15d} :catch_15e

    return-object v0

    .line 2162
    :catch_15e
    move-exception v0

    .line 2163
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Error: http or https probe wait interrupted!"

    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 2164
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1

    .line 2150
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_16a
    :goto_16a
    iget v0, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    if-eq v0, v1, :cond_171

    iget-object v0, v2, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    goto :goto_173

    :cond_171
    iget-object v0, v3, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 2151
    .local v0, "respondedUrl":Ljava/lang/String;
    :goto_173
    new-instance v1, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    const/16 v4, 0xcc

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v4, v6, v0, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2153
    .local v1, "probeResultSuccess":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    return-object v1

    .line 2113
    .end local v0    # "respondedUrl":Ljava/lang/String;
    .end local v2    # "httpResultCn":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .end local v3    # "httpResultCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .end local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .local v1, "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    :catch_17d
    move-exception v0

    move-object/from16 v19, v1

    .line 2114
    .end local v1    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v19    # "httpProbeCn2":Lcom/android/server/connectivity/WifiNetworkMonitor$1ProbeThread;
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Error: probes wait interrupted! - CHINA WIFI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;->failed(I)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v1

    return-object v1
.end method

.method private setNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V
    .registers 4
    .param p1, "p"    # Landroid/net/NetworkTestResultParcelable;

    .line 1359
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1360
    return-void

    .line 1362
    :cond_6
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1366
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    if-nez v0, :cond_13

    iget v0, p1, Landroid/net/NetworkTestResultParcelable;->result:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    .line 1373
    :cond_12
    return-void

    .line 1368
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->compareNetworkResults()V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1370
    iput-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1371
    return-void
.end method

.method private setRoamEventFromWCM(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 2230
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_wcm_event_roam_complete"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2231
    return-void
.end method

.method private setWifiNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V
    .registers 5
    .param p1, "p"    # Landroid/net/NetworkTestResultParcelable;

    .line 1384
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    .line 1385
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1386
    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1387
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->compareNetworkResults()V

    .line 1388
    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1389
    return-void

    .line 1391
    :cond_10
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1395
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    if-nez v0, :cond_1d

    iget v0, p1, Landroid/net/NetworkTestResultParcelable;->result:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    .line 1402
    :cond_1c
    return-void

    .line 1397
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->compareNetworkResults()V

    .line 1398
    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWifiNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1399
    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkMonitorResult:Landroid/net/NetworkTestResultParcelable;

    .line 1400
    return-void
.end method

.method private showProvisioningNotification(Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiNetworkMonitorCallbacks()Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 444
    return-void
.end method

.method private syncGetCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .line 1282
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method private updateConnectedNetworkAttributes(Landroid/os/Message;)V
    .registers 4
    .param p1, "connectedMsg"    # Landroid/os/Message;

    .line 471
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 473
    .local v0, "attrs":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 474
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    iput-object v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 475
    return-void
.end method

.method private static validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p0, "probeType"    # I
    .param p1, "url"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .line 3200
    invoke-static {p0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    .line 3201
    .local v0, "probeName":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "%s %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3202
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 3203
    return-void
.end method

.method private static validationLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 3206
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidationLogs:Landroid/net/util/SharedLog;

    invoke-virtual {v0, p0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 3208
    return-void
.end method


# virtual methods
.method protected checkSocketSetup(Ljava/net/URL;ILcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 21
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;

    .line 2189
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 2190
    .local v4, "socket":Ljava/net/Socket;
    const/16 v5, 0x257

    .line 2191
    .local v5, "httpResponseCode":I
    const/4 v6, 0x0

    .line 2192
    .local v6, "redirectUrl":Ljava/lang/String;
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor$1;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;->start()Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;

    move-result-object v8

    .line 2193
    .local v8, "probeTimer":Lcom/android/server/connectivity/WifiNetworkMonitor$Stopwatch;
    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v9

    .line 2197
    .local v9, "oldTag":I
    :try_start_1a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_a6
    .catchall {:try_start_1a .. :try_end_1e} :catchall_a0

    .line 2199
    .local v10, "requestTimestamp":J
    move-object/from16 v12, p0

    :try_start_20
    iget-object v0, v12, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x50

    invoke-virtual {v0, v13, v14}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    move-object v4, v0

    .line 2202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 2204
    .local v13, "responseTimestamp":J
    const/16 v5, 0xcc

    .line 2205
    sget-boolean v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->DBG:Z

    if-eqz v0, :cond_6b

    .line 2206
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSocketSetup:  time="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_47} :catch_9e
    .catchall {:try_start_20 .. :try_end_47} :catchall_9c

    move-object/from16 v16, v6

    .end local v6    # "redirectUrl":Ljava/lang/String;
    .local v16, "redirectUrl":Ljava/lang/String;
    sub-long v6, v13, v10

    :try_start_4b
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms  ret="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  socket="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2206
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 2205
    .end local v16    # "redirectUrl":Ljava/lang/String;
    .restart local v6    # "redirectUrl":Ljava/lang/String;
    :cond_6b
    move-object/from16 v16, v6

    .line 2209
    .end local v6    # "redirectUrl":Ljava/lang/String;
    .restart local v16    # "redirectUrl":Ljava/lang/String;
    :goto_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v13, v10

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms ret="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [checkSocketSetup] socket="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2209
    invoke-static {v2, v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_99} :catch_9a
    .catchall {:try_start_4b .. :try_end_99} :catchall_d8

    .end local v10    # "requestTimestamp":J
    .end local v13    # "responseTimestamp":J
    goto :goto_c0

    .line 2212
    :catch_9a
    move-exception v0

    goto :goto_ab

    .line 2218
    .end local v16    # "redirectUrl":Ljava/lang/String;
    .restart local v6    # "redirectUrl":Ljava/lang/String;
    :catchall_9c
    move-exception v0

    goto :goto_a3

    .line 2212
    :catch_9e
    move-exception v0

    goto :goto_a9

    .line 2218
    :catchall_a0
    move-exception v0

    move-object/from16 v12, p0

    :goto_a3
    move-object/from16 v16, v6

    .end local v6    # "redirectUrl":Ljava/lang/String;
    .restart local v16    # "redirectUrl":Ljava/lang/String;
    goto :goto_d9

    .line 2212
    .end local v16    # "redirectUrl":Ljava/lang/String;
    .restart local v6    # "redirectUrl":Ljava/lang/String;
    :catch_a6
    move-exception v0

    move-object/from16 v12, p0

    :goto_a9
    move-object/from16 v16, v6

    .line 2213
    .end local v6    # "redirectUrl":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "redirectUrl":Ljava/lang/String;
    :goto_ab
    :try_start_ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSocketSetup failed with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_ab .. :try_end_bf} :catchall_d8

    .line 2214
    nop

    .line 2218
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c0
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2219
    nop

    .line 2222
    if-nez v3, :cond_d2

    .line 2223
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v5, v10, v6, v7}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 2225
    :cond_d2
    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10}, Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 2218
    :catchall_d8
    move-exception v0

    :goto_d9
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2219
    throw v0
.end method

.method public forceReevaluation(I)V
    .registers 4
    .param p1, "responsibleUid"    # I

    .line 453
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(III)V

    .line 454
    return-void
.end method

.method public getCurrentWifiConnectionMode()I
    .registers 2

    .line 507
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    return v0
.end method

.method protected getEvaluationState()Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;
    .registers 2

    .line 1749
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mEvaluationState:Lcom/android/server/connectivity/WifiNetworkMonitor$EvaluationState;

    return-object v0
.end method

.method public getManualSelection()Z
    .registers 2

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mManualSelection:Z

    return v0
.end method

.method public getSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 1759
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserWantAsIs()Z
    .registers 2

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z

    return v0
.end method

.method public getWifiNetworkMonitorCallbacks()Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;
    .registers 2

    .line 1341
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    return-object v0
.end method

.method public isMultiNetwork()I
    .registers 2

    .line 1188
    iget-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsMultiNetwork:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 1189
    :cond_6
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mMultiNetworkIssuedUid:I

    return v0
.end method

.method public isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 3259
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 3262
    :cond_4
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 3263
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0xe

    .line 3264
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3266
    return v3

    .line 3277
    :cond_1e
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3278
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3279
    return v3

    .line 3282
    :cond_32
    return v0
.end method

.method public isSetupWizardSecurityBlockActivated()Z
    .registers 3

    .line 3295
    const-string/jumbo v0, "persist.sys.setupwizard"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 3296
    iget-object v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isTSSAndOperatorNotFixed()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 3298
    :cond_20
    return v1
.end method

.method public isTestCaptivePortalServerHttpUrlSet()Z
    .registers 3

    .line 1654
    const-string/jumbo v0, "test_captive_portal_http_url"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    .local v0, "testUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isValidTestUrl(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidationRequired(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 3291
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isWifiNetworkMonitorActivated()Z
    .registers 3

    .line 511
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCurrentWifiConnectionMode()I

    move-result v0

    .line 512
    .local v0, "mode":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 523
    const/4 v1, 0x0

    return v1

    .line 516
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public synthetic lambda$sendMultiParallelHttpAndHttpsProbes$0$WifiNetworkMonitor(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Landroid/net/Uri;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "urlMaybeWithCapport"    # Ljava/net/URL;
    .param p4, "capportApiUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2626
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;

    .line 2627
    invoke-virtual {p2, p3}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, p4

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpProbe;->sendProbe()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    .line 2626
    return-object v0
.end method

.method public synthetic lambda$sendMultiParallelHttpAndHttpsProbes$1$WifiNetworkMonitor(Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "capportApiUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2632
    new-instance v0, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;-><init>(Lcom/android/server/connectivity/WifiNetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor$HttpsProbe;->sendProbe()Lcom/android/server/connectivity/WifiNetworkMonitor$CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method public launchCaptivePortalApp()V
    .registers 2

    .line 960
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(I)V

    .line 961
    return-void
.end method

.method matchesHttpContent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "resString"    # Ljava/lang/String;

    .line 2444
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 2445
    :catch_5
    move-exception v0

    .line 2446
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern syntax exception occurs when matching the resource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2448
    const/4 v1, 0x0

    return v1
.end method

.method matchesHttpContentLength(J)Z
    .registers 9
    .param p1, "contentLength"    # J

    .line 2455
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_8

    return v3

    .line 2456
    :cond_8
    const-wide/32 v4, 0x7fffffff

    cmp-long v2, p1, v4

    if-lez v2, :cond_27

    .line 2457
    sget-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "matchesHttpContentLength : Get invalid contentLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    return v3

    .line 2460
    :cond_27
    cmp-long v2, p1, v0

    if-lez v2, :cond_30

    cmp-long v0, p1, v0

    if-gez v0, :cond_30

    const/4 v3, 0x1

    :cond_30
    return v3
.end method

.method public notifyCaptivePortalAppFinished(I)V
    .registers 3
    .param p1, "response"    # I

    .line 967
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(II)V

    .line 968
    return-void
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 460
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 461
    return-void
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 467
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 468
    return-void
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 407
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 409
    return-void
.end method

.method public notifyNetworkDisconnected()V
    .registers 2

    .line 423
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(I)V

    .line 424
    return-void
.end method

.method public notifyNetworkMonitorResult(Landroid/net/NetworkTestResultParcelable;)V
    .registers 5
    .param p1, "p"    # Landroid/net/NetworkTestResultParcelable;

    .line 1348
    const/16 v0, 0x3e9

    if-eqz p1, :cond_8

    .line 1349
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1a

    .line 1351
    :cond_8
    sget-object v1, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "NetworkMonitor Result null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    new-instance v1, Landroid/net/NetworkTestResultParcelable;

    invoke-direct {v1}, Landroid/net/NetworkTestResultParcelable;-><init>()V

    .line 1353
    .local v1, "invalidResult":Landroid/net/NetworkTestResultParcelable;
    const/4 v2, -0x1

    iput v2, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    .line 1354
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 1356
    .end local v1    # "invalidResult":Landroid/net/NetworkTestResultParcelable;
    :goto_1a
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Landroid/net/shared/PrivateDnsConfig;)V
    .registers 3
    .param p1, "newCfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 3249
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->removeMessages(I)V

    .line 3251
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 3252
    return-void
.end method

.method public notifyWantAsIsCalled(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 415
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 417
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->hideProvisioningNotification()V

    .line 418
    return-void
.end method

.method public setCurrentWifiConnectionMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 487
    iget v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mWasChinaMode:Z

    .line 491
    :cond_b
    iput p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCurrentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->getCaptivePortalMode()I

    move-result v0

    if-nez v0, :cond_2e

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    goto :goto_34

    .line 496
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->isWifiNetworkMonitorActivated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 498
    :goto_34
    return-void
.end method

.method public setNetwork(Landroid/net/Network;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;Landroid/net/util/SharedLog;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "callbacks"    # Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;
    .param p4, "validationLogs"    # Landroid/net/util/SharedLog;

    .line 395
    iput-object p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 396
    iput-object p3, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mCallbacks:Lcom/android/server/ConnectivityService$WifiNetworkMonitorCallbacks;

    .line 397
    sput-object p4, Lcom/android/server/connectivity/WifiNetworkMonitor;->mValidationLogs:Landroid/net/util/SharedLog;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNetworkMonitor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/WifiNetworkMonitor;->TAG:Ljava/lang/String;

    .line 399
    invoke-direct {p0}, Lcom/android/server/connectivity/WifiNetworkMonitor;->initialize()V

    .line 400
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/WifiNetworkMonitor;->checkConnectedState(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 401
    return-void
.end method

.method public setUserWantAsIs(Z)V
    .registers 2
    .param p1, "userWantAsIs"    # Z

    .line 1380
    iput-boolean p1, p0, Lcom/android/server/connectivity/WifiNetworkMonitor;->mUserWantAsIs:Z

    .line 1381
    return-void
.end method
