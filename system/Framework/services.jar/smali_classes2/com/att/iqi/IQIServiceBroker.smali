.class public Lcom/att/iqi/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBroker$BinderService;,
        Lcom/att/iqi/IQIServiceBroker$ServiceState;
    }
.end annotation


# static fields
.field private static final CHANGE_IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final CHANGE_IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CHANGE_IQI_STATE"

.field private static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field private static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field private static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field private static final MSG_CHECK_VALID:I = 0x2

.field private static final MSG_SIM_INVALID:I = 0x3

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final PERMISSION_TOGGLE_DEBUG_STATE:Ljava/lang/String; = "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field private static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

.field private static sDebug:Z


# instance fields
.field private mApplicationEnabled:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field private mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field private mInitialServiceConnect:Z

.field private mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastServiceEnabled:Z

.field private final mMetricQueryCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricQueryCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetricSourcingCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricSourcingCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IProfileChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mServicePublished:Z

.field private mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field private final mServiceStateChangeList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/att/iqi/IServiceStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceStubForFailure:Lcom/att/iqi/IIQIService;

.field private mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.att.iqi"

    const-string v2, "com.att.iqi.service.IQService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    .line 103
    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    .line 106
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 108
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 110
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 113
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 122
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$1;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$2;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$2;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$3;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$3;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$4;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$4;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$5;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$5;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 226
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$6;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$6;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    .line 730
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$7;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$7;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 835
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$9;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$9;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 184
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v1

    const-string/jumbo v2, "log_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    .line 186
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->registerPackageMonitor()V

    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Lcom/att/iqi/IQIServiceBroker$ServiceState;

    .line 59
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/att/iqi/IQIServiceBroker;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/att/iqi/IQIServiceBroker;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IIQIService;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Lcom/att/iqi/IIQIService;

    .line 59
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object p1
.end method

.method static synthetic access$1600(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 59
    invoke-static {p0}, Lcom/att/iqi/IQIServiceBroker;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 59
    invoke-static {p0}, Lcom/att/iqi/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 59
    invoke-static {p0}, Lcom/att/iqi/IQIServiceBroker;->printArtifactsVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 3
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 59
    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 1
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->unregisterReceivers()V

    return-void
.end method

.method static synthetic access$2000(Lcom/att/iqi/IQIServiceBroker;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Z

    .line 59
    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V

    return-void
.end method

.method static synthetic access$2102(Lcom/att/iqi/IQIServiceBroker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    return p1
.end method

.method static synthetic access$2200()Landroid/content/ComponentName;
    .registers 1

    .line 59
    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/att/iqi/IQIServiceBroker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/att/iqi/IQIServiceBroker;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->maybeIsValidKeyCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 59
    sput-boolean p0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    return p0
.end method

.method static synthetic access$500(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->checkPkgValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->appEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/att/iqi/IQIServiceBroker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/att/iqi/IQIServiceBroker;)V
    .registers 1
    .param p0, "x0"    # Lcom/att/iqi/IQIServiceBroker;

    .line 59
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->tryConnecting()V

    return-void
.end method

.method private appEnabled()Z
    .registers 8

    .line 648
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "packageName":Ljava/lang/String;
    monitor-enter p0

    .line 652
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 653
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_3f

    .line 654
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 655
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_3f

    .line 656
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v4, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    .line 657
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_3f

    .line 658
    const-string v4, "IQIServiceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-boolean v6, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v6, :cond_33

    const-string v6, "enabled"

    goto :goto_35

    :cond_33
    const-string v6, "disabled"

    :goto_35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 658
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_3f} :catch_42
    .catchall {:try_start_a .. :try_end_3f} :catchall_40

    .line 669
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3f
    goto :goto_6b

    .line 670
    :catchall_40
    move-exception v1

    goto :goto_6f

    .line 663
    :catch_42
    move-exception v2

    .line 664
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_43
    iput-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    .line 665
    sget-boolean v1, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v1, :cond_6b

    .line 666
    const-string v1, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find application information for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6b
    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_43 .. :try_end_6c} :catchall_40

    .line 671
    iget-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    return v1

    .line 670
    :goto_6f
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_40

    throw v1
.end method

.method private checkPkgValidity()Z
    .registers 13

    .line 605
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 608
    .local v1, "ret":Z
    monitor-enter p0

    .line 610
    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 611
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_55

    .line 612
    const/high16 v4, 0x8000000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 613
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 614
    .local v5, "si":Landroid/content/pm/SigningInfo;
    if-eqz v4, :cond_55

    if-eqz v5, :cond_55

    .line 615
    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_25
    if-ge v8, v7, :cond_53

    aget-object v9, v6, v8

    .line 616
    .local v9, "s":Landroid/content/pm/Signature;
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_46

    .line 617
    sget-boolean v10, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v10, :cond_40

    const-string v10, "IQIServiceBroker"

    const-string v11, "Valid signature"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_40
    iput v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    .line 619
    const/4 v1, 0x1

    .line 615
    .end local v9    # "s":Landroid/content/pm/Signature;
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 621
    .restart local v9    # "s":Landroid/content/pm/Signature;
    :cond_46
    sget-boolean v6, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v6, :cond_51

    const-string v6, "IQIServiceBroker"

    const-string v7, "Bad signature"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_51} :catch_58
    .catchall {:try_start_b .. :try_end_51} :catchall_56

    .line 622
    :cond_51
    :try_start_51
    monitor-exit p0

    return v2

    .line 625
    .end local v9    # "s":Landroid/content/pm/Signature;
    :cond_53
    monitor-exit p0

    return v1

    .line 642
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "si":Landroid/content/pm/SigningInfo;
    :cond_55
    goto :goto_c1

    .line 643
    :catchall_56
    move-exception v2

    goto :goto_c3

    .line 628
    :catch_58
    move-exception v3

    .line 629
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_7f

    .line 630
    const-string v4, "IQIServiceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find package information for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_7f
    iget v4, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_b6

    .line 634
    iget v4, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    .line 635
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_a7

    const-string v4, "IQIServiceBroker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry check package, attempt # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_a7
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    .line 637
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    .line 636
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c1

    .line 640
    :cond_b6
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_c1

    const-string v4, "IQIServiceBroker"

    const-string v5, "Retried several times already, give up"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c1
    :goto_c1
    monitor-exit p0

    .line 644
    return v2

    .line 643
    :goto_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_51 .. :try_end_c4} :catchall_56

    throw v2
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 872
    const-string v0, "IQIServiceBroker dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    const-string v0, "    --concierge: print IQIConcierge version"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v0, "    -v: print the version of all artifacts"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method private getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 814
    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method private getOrConnectService()Lcom/att/iqi/IIQIService;
    .registers 8

    .line 573
    monitor-enter p0

    .line 574
    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_9

    .line 575
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    .line 578
    :cond_9
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 579
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_46

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    .line 582
    .local v0, "shouldEnd":J
    const-wide/16 v2, 0xbb8

    .line 583
    .local v2, "waitTime":J
    :goto_1e
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 585
    :try_start_24
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28
    .catchall {:try_start_24 .. :try_end_27} :catchall_46

    .line 588
    goto :goto_34

    .line 586
    :catch_28
    move-exception v4

    .line 587
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_29
    sget-boolean v5, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v5, :cond_34

    const-string v5, "IQIServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v4, :cond_3c

    .line 591
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v4

    .line 594
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v4

    goto :goto_1e

    .line 596
    :cond_43
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 597
    .end local v0    # "shouldEnd":J
    .end local v2    # "waitTime":J
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private getServiceComponent()Landroid/content/ComponentName;
    .registers 2

    .line 601
    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method private maybeIsValidKeyCode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 166
    const-string v0, "^[#]+\\*23[\\d\\*#]+#$"

    .line 167
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private notifyServiceState(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 538
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IQIServiceBroker"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1b
    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mLastServiceEnabled:Z

    if-eq p1, v0, :cond_2f

    .line 542
    if-eqz p1, :cond_28

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mInitialServiceConnect:Z

    if-eqz v0, :cond_28

    .line 543
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->restoreCallbacks()V

    .line 545
    :cond_28
    if-eqz p1, :cond_2d

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mInitialServiceConnect:Z

    .line 548
    :cond_2d
    iput-boolean p1, p0, Lcom/att/iqi/IQIServiceBroker;->mLastServiceEnabled:Z

    .line 551
    :cond_2f
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    monitor-enter v0

    .line 552
    :try_start_32
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/att/iqi/IServiceStateChangeCallback;
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_58

    .line 554
    .local v2, "listener":Lcom/att/iqi/IServiceStateChangeCallback;
    :try_start_44
    invoke-interface {v2, p1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_58

    .line 557
    goto :goto_55

    .line 555
    :catch_48
    move-exception v3

    .line 556
    .local v3, "e":Ljava/lang/Exception;
    :try_start_49
    sget-boolean v4, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v4, :cond_55

    const-string v4, "IQIServiceBroker"

    const-string/jumbo v5, "notifyServiceState failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v2    # "listener":Lcom/att/iqi/IServiceStateChangeCallback;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_55
    :goto_55
    goto :goto_38

    .line 559
    :cond_56
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private static printArtifactsVersion(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 883
    invoke-static {p0}, Lcom/att/iqi/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    .line 884
    return-void
.end method

.method private static printConciergeVersion(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IQIConcierge version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/att/iqi/IQIConcierge;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method private registerPackageMonitor()V
    .registers 5

    .line 818
    new-instance v0, Lcom/att/iqi/IQIServiceBroker$8;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$8;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    .line 832
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 833
    return-void
.end method

.method private registerReceivers(Z)V
    .registers 8
    .param p1, "init"    # Z

    .line 849
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 851
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 852
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.att.iqi.permission.CHANGE_IQI_STATE"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 855
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_13
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, "keyCodeFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 858
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 859
    .local v2, "debugFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 861
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "userUnlockedFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    return-void
.end method

.method private restoreCallbacks()V
    .registers 9

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c8

    .line 773
    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 774
    .local v1, "msize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_4c

    .line 775
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 776
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_19
    if-ge v4, v3, :cond_3e

    .line 777
    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v5

    new-instance v6, Lcom/att/iqi/lib/Metric$ID;

    iget-object v7, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 778
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v7, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 779
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/att/iqi/IMetricQueryCallback;

    .line 777
    invoke-interface {v5, v6, v7}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 776
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 781
    .end local v4    # "j":I
    :cond_3e
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 774
    .end local v3    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 783
    .end local v1    # "msize":I
    .end local v2    # "i":I
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_c5

    .line 785
    :try_start_4d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_c8

    .line 786
    :try_start_50
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 787
    .local v1, "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_57
    if-ge v2, v1, :cond_6b

    .line 788
    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v3

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 789
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/att/iqi/IProfileChangedCallback;

    .line 788
    invoke-interface {v3, v4}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 791
    .end local v2    # "i":I
    :cond_6b
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 792
    .end local v1    # "count":I
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_c2

    .line 794
    :try_start_71
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_c8

    .line 795
    :try_start_74
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 796
    .local v1, "msize":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7b
    if-ge v2, v1, :cond_bd

    .line 797
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 798
    .restart local v3    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_8a
    if-ge v4, v3, :cond_af

    .line 799
    invoke-virtual {p0}, Lcom/att/iqi/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v5

    new-instance v6, Lcom/att/iqi/lib/Metric$ID;

    iget-object v7, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 800
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v7, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 801
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/att/iqi/IMetricSourcingCallback;

    .line 799
    invoke-interface {v5, v6, v7}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 798
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 803
    .end local v4    # "j":I
    :cond_af
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 796
    .end local v3    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 805
    .end local v1    # "msize":I
    .end local v2    # "i":I
    :cond_bd
    monitor-exit v0

    .line 810
    goto :goto_d4

    .line 805
    :catchall_bf
    move-exception v1

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_74 .. :try_end_c1} :catchall_bf

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :try_start_c1
    throw v1
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c2} :catch_c8

    .line 792
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :try_start_c4
    throw v1
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c8

    .line 783
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :catchall_c5
    move-exception v1

    :try_start_c6
    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    .end local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :try_start_c7
    throw v1
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c8} :catch_c8

    .line 806
    .restart local p0    # "this":Lcom/att/iqi/IQIServiceBroker;
    :catch_c8
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v1, :cond_d4

    .line 808
    const-string v1, "IQIServiceBroker"

    const-string v2, "Remote exception in restoreCallbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d4
    :goto_d4
    return-void
.end method

.method private shouldConnect()Z
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v0, :cond_16

    .line 676
    invoke-static {}, Lcom/att/iqi/IQIConcierge;->isServiceBindingAllowed()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 675
    :goto_17
    return v0
.end method

.method private final tryConnecting()V
    .registers 7

    .line 680
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Connecting to implementation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_b
    monitor-enter p0

    .line 682
    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_1d

    .line 683
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_1b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Already connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_1b
    monitor-exit p0

    return-void

    .line 686
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 688
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_35

    .line 689
    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_33

    const-string v2, "IQIServiceBroker"

    const-string v3, "No implementation service found"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_33
    monitor-exit p0

    return-void

    .line 692
    :cond_35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 694
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/att/iqi/IQIBridgeLoader;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_c6

    .line 696
    :try_start_41
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_a8

    .line 698
    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_68

    const-string v2, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to implementation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_68
    iget v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_9d

    .line 700
    iget v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    .line 701
    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_8f

    const-string v2, "IQIServiceBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry reconnecting, attempt # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_8f
    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 703
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    .line 702
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a8

    .line 706
    :cond_9d
    sget-boolean v2, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v2, :cond_a8

    .line 707
    const-string v2, "IQIServiceBroker"

    const-string v3, "Retried several times already, give up connecting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_a8} :catch_a9
    .catchall {:try_start_41 .. :try_end_a8} :catchall_c6

    .line 713
    :cond_a8
    :goto_a8
    goto :goto_c4

    .line 711
    :catch_a9
    move-exception v2

    .line 712
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_aa
    sget-boolean v3, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v3, :cond_c4

    const-string v3, "IQIServiceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forbidden to bind to implementation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_c4
    :goto_c4
    monitor-exit p0

    .line 715
    return-void

    .line 714
    :catchall_c6
    move-exception v0

    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_aa .. :try_end_c8} :catchall_c6

    throw v0
.end method

.method private unregisterReceivers()V
    .registers 3

    .line 866
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 867
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 868
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 869
    return-void
.end method


# virtual methods
.method public final getBrokeredService()Lcom/att/iqi/IIQIService;
    .registers 2

    .line 563
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 564
    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getOrConnectService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    .line 565
    .local v0, "service":Lcom/att/iqi/IIQIService;
    if-eqz v0, :cond_d

    .line 566
    return-object v0

    .line 569
    .end local v0    # "service":Lcom/att/iqi/IIQIService;
    :cond_d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 522
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 523
    const/16 v0, 0x258

    if-ne p1, v0, :cond_32

    .line 524
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "IQIServiceBroker"

    const-string v1, "Third party apps ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_12
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 527
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/att/iqi/IQIConcierge;->init(Landroid/content/Context;)V

    .line 531
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 532
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 535
    .end local v0    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_32
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 219
    new-instance v0, Lcom/att/iqi/IQIServiceBroker$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$1;)V

    const-string/jumbo v1, "iqi"

    invoke-virtual {p0, v1, v0}, Lcom/att/iqi/IQIServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    .line 221
    return-void
.end method

.method public final tryDisconnecting()V
    .registers 3

    .line 718
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Disconnecting from implementation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_b
    monitor-enter p0

    .line 720
    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_1d

    .line 721
    sget-boolean v0, Lcom/att/iqi/IQIServiceBroker;->sDebug:Z

    if-eqz v0, :cond_1b

    const-string v0, "IQIServiceBroker"

    const-string v1, "Already disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_1b
    monitor-exit p0

    return-void

    .line 724
    :cond_1d
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/att/iqi/IQIServiceBroker;->notifyServiceState(Z)V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 727
    monitor-exit p0

    .line 728
    return-void

    .line 727
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v0
.end method
