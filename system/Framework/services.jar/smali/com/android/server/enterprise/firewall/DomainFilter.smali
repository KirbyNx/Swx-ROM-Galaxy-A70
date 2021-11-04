.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;,
        Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;,
        Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;,
        Lcom/android/server/enterprise/firewall/DomainFilter$Injector;,
        Lcom/android/server/enterprise/firewall/DomainFilter$Operation;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field public static final ALL:Ljava/lang/String; = "ALL"

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_MAX:I = 0x11170

.field private static final DBG:Z = false

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "connectivitycheck.gstatic.com"

.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final EMPTY_DATABASE:I = 0x0

.field private static final INVALID_NETID:I = -0x1

.field private static final MSG_RELEASE_NETWORK:I = 0x0

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final PORTAL_HOSTS_TOKEN:Ljava/lang/String; = ","

.field private static final REPORT_CACHE_SIZE:I = 0x5

.field private static TAG:Ljava/lang/String;

.field private static mConnectivityService:Landroid/net/IConnectivityManager;


# instance fields
.field private mBootFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDnsManager:Lcom/android/server/connectivity/DnsManager;

.field private mDnsResolver:Landroid/net/IDnsResolver;

.field private mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExceptionListLock:Ljava/lang/Object;

.field private mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field private mInitDaemonCacheThread:Ljava/lang/Thread;

.field final mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

.field private mIsExceptionListApplied:Z

.field private mNetdService:Landroid/net/INetd;

.field private mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field private mNetworkIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkIdListLock:Ljava/lang/Object;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field private mReportCacheIndex:I

.field private mServer:Ljava/lang/String;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    const-string v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firewallRulesApplier"    # Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 292
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$Injector;)V

    .line 293
    return-void
.end method

.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$Injector;)V
    .registers 13
    .param p1, "injector"    # Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 171
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 173
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 179
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 184
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$3;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 2575
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$5;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 297
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 298
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 299
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 300
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetworkIdInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 301
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DomainFilterHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 303
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetworkManagementHandler(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 304
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getUserIdMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 308
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v1, "filterPkg":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 316
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v2, "filterUser":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 322
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v3, "filterBoot":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v4, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mBootFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 328
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    .local v4, "filterPortal":Landroid/content/IntentFilter;
    const-string v5, "com.samsung.android.knox.intent.action.CAPTIVE_PORTAL_DETECTED_INTERNAL"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPortalFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 333
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "captive_portal_server"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 335
    if-nez v5, :cond_109

    .line 336
    const-string v5, "connectivitycheck.gstatic.com"

    iput-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 340
    :cond_109
    new-instance v5, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 353
    .local v5, "taskInitDaemonCache":Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInitDaemonCacheThread:Ljava/lang/Thread;

    .line 354
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    .line 356
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;II)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getPackageFromRunningProcesses(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;)[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/enterprise/firewall/DomainFilter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/enterprise/firewall/DomainFilter;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    iget v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/firewall/DomainFilter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworkId(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/firewall/DomainFilter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->extractHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->addHostToCaptivePortalWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/DomainFilter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addHostToCaptivePortalWhitelist(Ljava/lang/String;)V
    .registers 10
    .param p1, "portalHost"    # Ljava/lang/String;

    .line 2512
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveCaptivePortalHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2513
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    :cond_15
    return-void
.end method

.method private checkAdminInDatabase(I)I
    .registers 8
    .param p1, "adminUid"    # I

    .line 1442
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1443
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string v3, "adminUid"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1445
    .local v1, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_24

    .line 1446
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v2, v5, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1448
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_24

    .line 1450
    return v4

    .line 1453
    :cond_24
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_32

    .line 1455
    const/4 v2, 0x1

    return v2

    .line 1458
    :cond_32
    const/4 v2, -0x1

    return v2
.end method

.method private clearReportForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1816
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1817
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1818
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1819
    return-void
.end method

.method private concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "operation"    # I
    .param p3, "headerSize"    # I
    .param p4, "listType"    # Ljava/lang/String;
    .param p5, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1370
    .local p2, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    array-length v5, v5

    .line 1371
    .local v5, "argSize":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .local v6, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1373
    .local v7, "listValuesSize":I
    if-eqz v4, :cond_20

    .line 1374
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .line 1376
    :cond_20
    if-eqz v4, :cond_a3

    add-int v8, p3, v7

    add-int/2addr v8, v5

    const v9, 0x11170

    if-ge v8, v9, :cond_2c

    goto/16 :goto_a3

    .line 1382
    :cond_2c
    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1383
    .local v10, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 1384
    .local v11, "counter":I
    :goto_37
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_af

    .line 1385
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1386
    .local v12, "newList":Ljava/lang/StringBuilder;
    add-int v13, p3, v5

    .line 1387
    .local v13, "totalTemp":I
    :goto_44
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_8c

    .line 1388
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    array-length v14, v14

    .line 1389
    .local v14, "valueSize":I
    add-int v15, v13, v14

    if-ge v15, v9, :cond_8c

    .line 1390
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_6b

    .line 1391
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    .line 1393
    :cond_6b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :goto_85
    add-int/lit8 v11, v11, 0x1

    .line 1396
    add-int/2addr v13, v14

    .line 1400
    .end local v14    # "valueSize":I
    const v9, 0x11170

    goto :goto_44

    .line 1401
    :cond_8c
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1402
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1403
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    .line 1405
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1406
    .end local v12    # "newList":Ljava/lang/StringBuilder;
    .end local v13    # "totalTemp":I
    const v9, 0x11170

    goto :goto_37

    .line 1377
    .end local v10    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "counter":I
    :cond_a3
    :goto_a3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1378
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    .line 1408
    :cond_af
    return-void
.end method

.method private connectNativeNetdService()V
    .registers 4

    .line 2611
    const/4 v0, 0x0

    .line 2613
    .local v0, "nativeServiceAvailable":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 2614
    if-nez v1, :cond_13

    .line 2615
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "connectNativeNetdService() - netd is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    return-void

    .line 2618
    :cond_13
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v1

    goto :goto_1a

    .line 2619
    :catch_19
    move-exception v1

    :goto_1a
    nop

    .line 2620
    if-nez v0, :cond_24

    .line 2621
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "connectNativeNetdService() - Can\'t connect to NativeNetdService netd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_24
    return-void
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1527
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1528
    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1529
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1531
    :cond_18
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1519
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, ";"

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_13

    .line 1522
    :cond_b
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1523
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1520
    :cond_13
    :goto_13
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private delayTransaction(I)V
    .registers 5
    .param p1, "timeInMs"    # I

    .line 1435
    int-to-long v0, p1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    .line 1438
    goto :goto_d

    .line 1436
    :catch_5
    move-exception v0

    .line 1437
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "delayTransaction() - failed to delay transaction "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_d
    return-void
.end method

.method static enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V
    .registers 11
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
    .param p1, "enable"    # Z

    .line 1612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1614
    .local v0, "token":J
    if-nez p0, :cond_a

    .line 1633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1614
    return-void

    .line 1616
    :cond_a
    :try_start_a
    const-string v2, "NAPProfileTable"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_4b
    .catchall {:try_start_a .. :try_end_11} :catchall_49

    const/4 v3, 0x0

    if-lez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    move v2, v3

    .line 1617
    .local v2, "isNapEnable":Z
    :goto_17
    if-nez v2, :cond_44

    .line 1618
    const-string/jumbo v4, "net.knox.nap"

    if-eqz p1, :cond_24

    .line 1619
    :try_start_1e
    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 1621
    :cond_24
    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :goto_29
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 1624
    .local v4, "networks":[Landroid/net/Network;
    if-eqz v4, :cond_44

    .line 1625
    array-length v5, v4

    :goto_34
    if-ge v3, v5, :cond_44

    aget-object v6, v4, v3

    .line 1626
    .local v6, "network":Landroid/net/Network;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v7

    iget v8, v6, Landroid/net/Network;->netId:I

    invoke-interface {v7, v8, p1}, Landroid/net/IConnectivityManager;->updateDnsUidForNetwork(IZ)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_41} :catch_4b
    .catchall {:try_start_1e .. :try_end_41} :catchall_49

    .line 1625
    .end local v6    # "network":Landroid/net/Network;
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1633
    .end local v2    # "isNapEnable":Z
    .end local v4    # "networks":[Landroid/net/Network;
    :cond_44
    nop

    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    goto :goto_64

    .line 1633
    :catchall_49
    move-exception v2

    goto :goto_65

    .line 1630
    :catch_4b
    move-exception v2

    .line 1631
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4c
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to enable nap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_49

    .line 1633
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_45

    .line 1635
    :goto_64
    return-void

    .line 1633
    :goto_65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1634
    throw v2
.end method

.method private declared-synchronized executeDomainFilterCommands(ILjava/util/ArrayList;)V
    .registers 11
    .param p1, "operation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1411
    const/4 v0, 0x3

    .line 1412
    .local v0, "maxTries":I
    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_52

    .line 1413
    .local v1, "argsArray":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "count":I
    :goto_c
    const/4 v3, 0x3

    if-gt v2, v3, :cond_49

    .line 1415
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 1416
    if-eqz v4, :cond_21

    .line 1418
    invoke-interface {v4, p1, v1}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V

    .line 1420
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->delayTransaction(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_22
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_1f} :catch_22
    .catchall {:try_start_f .. :try_end_1f} :catchall_52

    .line 1421
    monitor-exit p0

    return-void

    .line 1427
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_21
    goto :goto_46

    .line 1423
    :catch_22
    move-exception v4

    .line 1424
    .local v4, "e":Ljava/lang/Exception;
    :try_start_23
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeDomainFilterCommands() - attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->delayTransaction(I)V

    .line 1413
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1430
    .end local v2    # "count":I
    :cond_49
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "executeDomainFilterCommands() - Transaction failed. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_23 .. :try_end_50} :catchall_52

    .line 1431
    monitor-exit p0

    return-void

    .line 1410
    .end local v0    # "maxTries":I
    .end local v1    # "argsArray":[Ljava/lang/String;
    .end local p1    # "operation":I
    .end local p2    # "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private extractHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "urlString"    # Ljava/lang/String;

    .line 2537
    const/4 v0, 0x0

    .line 2538
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2540
    .local v1, "url":Ljava/net/URL;
    if-eqz p1, :cond_28

    .line 2542
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_b

    move-object v1, v2

    .line 2545
    goto :goto_22

    .line 2543
    :catch_b
    move-exception v2

    .line 2544
    .local v2, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractHost() - Invalid url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_22
    if-eqz v1, :cond_28

    .line 2548
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2552
    :cond_28
    return-object v0
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 453
    .local v0, "token":J
    const/4 v2, 0x0

    .line 455
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    const/16 v4, 0x80

    .line 456
    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_19
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    move-object v2, v3

    .line 460
    nop

    :goto_13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    goto :goto_24

    .line 460
    :catchall_17
    move-exception v3

    goto :goto_32

    .line 457
    :catch_19
    move-exception v3

    .line 458
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1a
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getApplicationUid() - exception getting package info "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    .line 460
    nop

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_13

    .line 463
    :goto_24
    if-eqz v2, :cond_30

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2b

    goto :goto_30

    .line 465
    :cond_2b
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    .line 464
    :cond_30
    :goto_30
    const/4 v3, -0x1

    return v3

    .line 460
    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    throw v3
.end method

.method private static getConnectivityService()Landroid/net/IConnectivityManager;
    .registers 2

    .line 2213
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_12

    .line 2214
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2215
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 2216
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 2219
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_12
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private getDnsResolver()Landroid/net/IDnsResolver;
    .registers 2

    .line 2205
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    if-nez v0, :cond_11

    .line 2206
    nop

    .line 2207
    const-string v0, "dnsresolver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 2209
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    return-object v0
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "rule"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .line 444
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 445
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 447
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method private getNetworkIdInfoIndex(I)I
    .registers 6
    .param p1, "netId"    # I

    .line 2181
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2182
    return v1

    .line 2183
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2184
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 2185
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v3

    if-ne p1, v3, :cond_26

    .line 2186
    monitor-exit v0

    return v2

    .line 2184
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2188
    .end local v2    # "i":I
    :cond_29
    monitor-exit v0

    .line 2189
    return v1

    .line 2188
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 2194
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    .line 2195
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2196
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 2197
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 2200
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 2

    .line 1336
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    .line 1337
    return-object v0

    .line 1338
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 1339
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 1340
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_1c

    .line 1341
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 1344
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method private getPackageFromRunningProcesses(II)Ljava/lang/String;
    .registers 20
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 2397
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    if-gez v2, :cond_21

    .line 2398
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageFromRunningProcesses() - Invalid PID provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return-object v0

    .line 2402
    :cond_21
    if-gez v3, :cond_3b

    .line 2403
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackageFromRunningProcesses() - Invalid UID provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    return-object v0

    .line 2407
    :cond_3b
    const/4 v4, 0x0

    .line 2408
    .local v4, "actvMngr":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    .line 2409
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2411
    .local v6, "token":J
    :try_start_41
    iget-object v8, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    .line 2412
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    move-object v4, v8

    .line 2413
    if-eqz v4, :cond_53

    .line 2414
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_d3

    move-object v5, v8

    .line 2417
    :cond_53
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2418
    nop

    .line 2420
    if-eqz v5, :cond_d2

    .line 2421
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2422
    .local v9, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v10, :cond_d1

    .line 2423
    iget-object v8, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v8, :cond_72

    .line 2424
    goto :goto_d2

    .line 2427
    :cond_72
    iget-object v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-ne v0, v8, :cond_7e

    .line 2428
    iget-object v0, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v10

    return-object v0

    .line 2433
    :cond_7e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2434
    .local v0, "selection":Landroid/content/ContentValues;
    nop

    .line 2435
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2434
    invoke-static {v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v11, "#SelectClause#"

    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    const-string/jumbo v8, "packageName"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    .line 2438
    .local v11, "columns":[Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2439
    const-string v13, "DomainFilterTable"

    invoke-virtual {v12, v13, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 2440
    .local v12, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v12, :cond_cb

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_cb

    .line 2441
    iget-object v13, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 2442
    .local v13, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_cb

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2443
    .local v15, "cv":Landroid/content/ContentValues;
    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2444
    .local v10, "pkgDb":Ljava/lang/String;
    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c9

    .line 2445
    return-object v10

    .line 2447
    .end local v10    # "pkgDb":Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    :cond_c9
    const/4 v10, 0x0

    goto :goto_b2

    .line 2450
    .end local v13    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_cb
    iget-object v8, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    return-object v8

    .line 2452
    .end local v0    # "selection":Landroid/content/ContentValues;
    .end local v9    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v11    # "columns":[Ljava/lang/String;
    .end local v12    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_d1
    goto :goto_5d

    .line 2454
    :cond_d2
    :goto_d2
    return-object v0

    .line 2417
    :catchall_d3
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2418
    throw v0
.end method

.method private hasAnyRuleInDatabase()Z
    .registers 4

    .line 2501
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 2503
    .local v0, "rulesInDb":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1c

    .line 2507
    :cond_12
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAnyRuleInDatabase(): true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    const/4 v1, 0x1

    return v1

    .line 2504
    :cond_1c
    :goto_1c
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasAnyRuleInDatabase(): false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const/4 v1, 0x0

    return v1
.end method

.method private initDaemonCache()V
    .registers 23

    .line 1207
    move-object/from16 v7, p0

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 1210
    .local v9, "rulesInDb":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_10a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_10a

    .line 1215
    :cond_1d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/ContentValues;

    .line 1216
    .local v11, "rule":Landroid/content/ContentValues;
    const-string v0, "blacklist"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1217
    .local v12, "blacklist":Ljava/lang/String;
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1218
    .local v13, "whitelist":Ljava/lang/String;
    const-string v0, "dns1"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1219
    .local v14, "dns1":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1220
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 1221
    :cond_53
    const-string v0, "adminUid"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1222
    .local v15, "IntAdminUid":Ljava/lang/Integer;
    const/4 v1, -0x1

    if-eqz v15, :cond_61

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_62

    :cond_61
    move v2, v1

    :goto_62
    move/from16 v16, v2

    .line 1223
    .local v16, "adminUid":I
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1224
    .local v6, "userId":I
    const/4 v2, 0x0

    .line 1225
    .local v2, "appUid":Ljava/lang/String;
    const-string/jumbo v3, "packageName"

    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1226
    .local v5, "packageName":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1227
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_ab

    .line 1229
    :cond_7f
    invoke-direct {v7, v5, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v4

    .line 1230
    .local v4, "appUidInt":I
    if-eq v4, v1, :cond_a9

    .line 1231
    const-string/jumbo v1, "signature"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a2

    .line 1233
    invoke-direct {v7, v6, v5, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_99

    goto :goto_a2

    .line 1236
    :cond_99
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initDaemonCache() - app signature mismatch"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    goto :goto_21

    .line 1234
    :cond_a2
    :goto_a2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_ab

    .line 1230
    .end local v1    # "signature":Ljava/lang/String;
    :cond_a9
    move-object/from16 v18, v2

    .line 1241
    .end local v2    # "appUid":Ljava/lang/String;
    .end local v4    # "appUidInt":I
    .local v18, "appUid":Ljava/lang/String;
    :goto_ab
    if-eqz v18, :cond_103

    .line 1242
    const/4 v1, -0x1

    .line 1243
    .local v1, "netId":I
    if-eqz v14, :cond_e1

    .line 1244
    const-string v2, "dns2"

    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1245
    .local v2, "dns2":Ljava/lang/String;
    invoke-direct {v7, v14, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1246
    const/4 v4, -0x1

    if-eq v1, v4, :cond_de

    .line 1247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v17, v1

    .end local v1    # "netId":I
    .local v17, "netId":I
    const-string/jumbo v1, "networkId"

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1249
    .local v1, "selection":Landroid/content/ContentValues;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v0, v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v8, v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    goto :goto_e3

    .line 1246
    .end local v17    # "netId":I
    .local v1, "netId":I
    :cond_de
    move/from16 v17, v1

    .end local v1    # "netId":I
    .restart local v17    # "netId":I
    goto :goto_e3

    .line 1243
    .end local v2    # "dns2":Ljava/lang/String;
    .end local v17    # "netId":I
    .restart local v1    # "netId":I
    :cond_e1
    move/from16 v17, v1

    .line 1255
    .end local v1    # "netId":I
    .restart local v17    # "netId":I
    :goto_e3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDomainFilterReportListener()V

    .line 1256
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1257
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 1256
    move-object/from16 v0, p0

    move-object v4, v12

    move-object/from16 v20, v5

    .end local v5    # "packageName":Ljava/lang/String;
    .local v20, "packageName":Ljava/lang/String;
    move-object v5, v13

    move/from16 v21, v6

    .end local v6    # "userId":I
    .local v21, "userId":I
    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 1241
    .end local v17    # "netId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    :cond_103
    move-object/from16 v20, v5

    move/from16 v21, v6

    .line 1260
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v11    # "rule":Landroid/content/ContentValues;
    .end local v12    # "blacklist":Ljava/lang/String;
    .end local v13    # "whitelist":Ljava/lang/String;
    .end local v14    # "dns1":Ljava/lang/String;
    .end local v15    # "IntAdminUid":Ljava/lang/Integer;
    .end local v16    # "adminUid":I
    .end local v18    # "appUid":Ljava/lang/String;
    :cond_107
    :goto_107
    goto/16 :goto_21

    .line 1261
    :cond_109
    return-void

    .line 1211
    :cond_10a
    :goto_10a
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDaemonCache() - No rules found in db"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method private initDomainFilterReportListener()V
    .registers 9

    .line 1693
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1694
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_40

    .line 1695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1697
    .local v1, "token":J
    :try_start_11
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 1698
    .local v3, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_37

    .line 1699
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1700
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v6

    .line 1701
    .local v6, "isDomainFilterReportEnabled":Z
    if-eqz v6, :cond_36

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result v7
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_3b

    if-eqz v7, :cond_36

    .line 1702
    goto :goto_37

    .line 1704
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "isDomainFilterReportEnabled":Z
    :cond_36
    goto :goto_1b

    .line 1707
    .end local v3    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_37
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1708
    goto :goto_40

    .line 1707
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1708
    throw v3

    .line 1710
    .end local v1    # "token":J
    :cond_40
    :goto_40
    return-void
.end method

.method private initReportCache()V
    .registers 9

    .line 1264
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initReportCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 1266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    .local v0, "reportEnabled":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1268
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1269
    const-string v2, "DomainFilterReportStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1270
    .local v1, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_5c

    .line 1274
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1275
    .local v3, "admin":Landroid/content/ContentValues;
    nop

    .line 1276
    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1277
    .local v4, "IntUserId":Ljava/lang/Integer;
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_51

    :cond_50
    const/4 v5, -0x1

    .line 1278
    .local v5, "userId":I
    :goto_51
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1279
    .end local v3    # "admin":Landroid/content/ContentValues;
    .end local v4    # "IntUserId":Ljava/lang/Integer;
    .end local v5    # "userId":I
    goto :goto_35

    .line 1280
    :cond_5b
    return-void

    .line 1272
    :cond_5c
    :goto_5c
    return-void
.end method

.method private initUserIdMap()V
    .registers 16

    .line 359
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initUserIdMap() - Initializing UserID Mapping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 361
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 363
    .local v1, "userManager":Landroid/os/UserManager;
    if-eqz v1, :cond_96

    .line 364
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 365
    .local v2, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_96

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "processExcList":Z
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v4

    .line 368
    :try_start_25
    iget-boolean v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 369
    const/4 v3, 0x1

    .line 370
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 372
    :cond_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_93

    .line 373
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v4

    .line 374
    .local v5, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v6

    .line 375
    :try_start_3d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 376
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v8, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v9, 0x40

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    .line 378
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v9

    .line 379
    .local v9, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_79

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    .line 380
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 381
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v13, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    nop

    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_5e

    .line 383
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_79
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v11, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    nop

    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_41

    .line 386
    :cond_89
    monitor-exit v6
    :try_end_8a
    .catchall {:try_start_3d .. :try_end_8a} :catchall_90

    .line 387
    if-eqz v3, :cond_96

    .line 388
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    goto :goto_96

    .line 386
    :catchall_90
    move-exception v4

    :try_start_91
    monitor-exit v6
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v4

    .line 372
    .end local v5    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_93
    move-exception v5

    :try_start_94
    monitor-exit v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v5

    .line 391
    .end local v2    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "processExcList":Z
    :cond_96
    :goto_96
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1750
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1751
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1752
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportStatus"

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1755
    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_2d

    .line 1758
    :cond_23
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1756
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    return v2
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 2556
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 2559
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 2557
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .line 2035
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2036
    return v1

    .line 2038
    :cond_a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_d
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 2040
    .local v3, "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2041
    if-eqz p2, :cond_31

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_31
    if-nez p2, :cond_3a

    .line 2042
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->hasDns2()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2043
    goto :goto_13

    .line 2044
    :cond_3a
    if-eqz p2, :cond_46

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getDns2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2045
    :cond_46
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->increaseCounter()I

    .line 2047
    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->getNetId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2050
    .end local v3    # "netInfo":Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;
    :cond_4f
    goto :goto_13

    .line 2051
    :cond_50
    monitor-exit v0

    .line 2052
    return v1

    .line 2051
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_52

    throw v1
.end method

.method private maybeClearCaptivePortalHosts()V
    .registers 9

    .line 2564
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2565
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v1, 0x0

    const-string v2, "captivePortalHosts"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2568
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    :cond_29
    return-void
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .line 397
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 399
    .local v0, "userId":I
    if-eq v0, v1, :cond_94

    .line 400
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserAdded() - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 404
    .local v3, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v3, :cond_77

    .line 405
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 406
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 407
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 408
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 409
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 409
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    nop

    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_51

    .line 412
    :cond_6e
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .end local v3    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_2c .. :try_end_78} :catchall_91

    .line 415
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v3

    .line 416
    :try_start_7b
    iget-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-nez v2, :cond_81

    .line 417
    monitor-exit v3

    return-void

    .line 418
    :cond_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_8e

    .line 419
    if-eqz v1, :cond_94

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_94

    .line 420
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    goto :goto_94

    .line 418
    :catchall_8e
    move-exception v2

    :try_start_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v2

    .line 414
    :catchall_91
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v3

    .line 422
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_94
    :goto_94
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 428
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserRemoved()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, "userId":I
    if-eq v0, v1, :cond_58

    .line 431
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserRemoved() - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 433
    .local v1, "userIdObj":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 434
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_55

    .line 436
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 437
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 435
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v3

    .line 441
    .end local v1    # "userIdObj":Ljava/lang/Integer;
    :cond_58
    :goto_58
    return-void
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;

    .line 473
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 474
    .local v9, "pkgAdded":Ljava/lang/String;
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 475
    .local v11, "userId":I
    if-eq v11, v1, :cond_131

    if-nez v9, :cond_19

    goto/16 :goto_131

    .line 480
    :cond_19
    invoke-direct {v8, v9, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v12

    .line 481
    .local v12, "uid":I
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageAdded() - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-ne v12, v1, :cond_47

    .line 483
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageAdded() - Failed to retrieve app info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 487
    :cond_47
    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_4a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 489
    .local v0, "objUserID":Ljava/lang/Integer;
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_69

    .line 490
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 491
    .local v3, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v4, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    nop

    .end local v3    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_78

    .line 494
    :cond_69
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .end local v0    # "objUserID":Ljava/lang/Integer;
    :goto_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_4a .. :try_end_79} :catchall_12e

    .line 498
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v0, "selection":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#SelectClause#"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    const-string v5, "DomainFilterTable"

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13

    .line 504
    .local v13, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v13, :cond_12d

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12d

    .line 505
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/ContentValues;

    .line 506
    .local v14, "rule":Landroid/content/ContentValues;
    const-string/jumbo v2, "signature"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 507
    .local v15, "signature":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c3

    invoke-direct {v8, v11, v9, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    goto :goto_c3

    .line 527
    :cond_ba
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "packageAdded() - Installed app\'s signature mismatched the one provided by admin."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 508
    :cond_c3
    :goto_c3
    const-string v2, "blacklist"

    invoke-direct {v8, v14, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 509
    .local v16, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v2, "whitelist"

    invoke-direct {v8, v14, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 510
    .local v17, "whiteListInDB":Ljava/lang/String;
    const-string v2, "dns1"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "dns1":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 512
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 513
    :cond_e8
    const/4 v2, -0x1

    .line 515
    .local v2, "netId":I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10f

    .line 516
    const-string v3, "dns2"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v7, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 517
    if-eq v2, v1, :cond_10c

    .line 519
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "networkId"

    invoke-virtual {v14, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 523
    :cond_10c
    move/from16 v18, v2

    goto :goto_111

    .line 515
    :cond_10f
    move/from16 v18, v2

    .line 523
    .end local v2    # "netId":I
    .local v18, "netId":I
    :goto_111
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 524
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 523
    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v20, v7

    .end local v7    # "dns1":Ljava/lang/String;
    .local v20, "dns1":Ljava/lang/String;
    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v14    # "rule":Landroid/content/ContentValues;
    .end local v15    # "signature":Ljava/lang/String;
    .end local v16    # "blackListInDB":Ljava/lang/String;
    .end local v17    # "whiteListInDB":Ljava/lang/String;
    .end local v18    # "netId":I
    .end local v20    # "dns1":Ljava/lang/String;
    :cond_12d
    :goto_12d
    return-void

    .line 496
    .end local v0    # "selection":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_12e
    move-exception v0

    :try_start_12f
    monitor-exit v2
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v0

    .line 476
    .end local v12    # "uid":I
    :cond_131
    :goto_131
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "packageAdded() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;

    .line 537
    move-object/from16 v8, p0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    move-object/from16 v9, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 538
    .local v10, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    .line 539
    .local v11, "pkgRemoved":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageRemoved() - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eq v10, v1, :cond_ea

    if-eqz v11, :cond_ea

    .line 541
    const/4 v2, 0x0

    .line 542
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 543
    :try_start_3a
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 544
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_5e

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 546
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 547
    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_3a .. :try_end_5c} :catchall_e7

    move-object v12, v2

    goto :goto_5f

    .line 549
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5e
    move-object v12, v2

    .end local v2    # "uid":Ljava/lang/String;
    .local v12, "uid":Ljava/lang/String;
    :goto_5f
    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_e4

    .line 550
    if-eqz v12, :cond_ea

    .line 552
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 553
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const/4 v2, 0x0

    invoke-static {v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#SelectClause#"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "networkId"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "DomainFilterTable"

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13

    .line 562
    .local v13, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v13, :cond_e3

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_e3

    .line 566
    :cond_8f
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/content/ContentValues;

    .line 567
    .local v14, "rule":Landroid/content/ContentValues;
    const-string/jumbo v3, "networkId"

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 568
    .local v15, "IntNetId":Ljava/lang/Integer;
    if-eqz v15, :cond_a4

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_a5

    :cond_a4
    move v3, v1

    :goto_a5
    move v7, v3

    .line 569
    .local v7, "netId":I
    if-eq v7, v1, :cond_c8

    .line 571
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 572
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "networkId"

    invoke-virtual {v14, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    invoke-virtual {v1, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 577
    .end local v2    # "msg":Landroid/os/Message;
    :cond_c8
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 578
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 577
    move-object/from16 v1, p0

    move/from16 v17, v7

    .end local v7    # "netId":I
    .local v17, "netId":I
    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea

    .line 563
    .end local v14    # "rule":Landroid/content/ContentValues;
    .end local v15    # "IntNetId":Ljava/lang/Integer;
    .end local v17    # "netId":I
    :cond_e3
    :goto_e3
    return-void

    .line 549
    .end local v0    # "selectionValues":Landroid/content/ContentValues;
    .end local v13    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_e4
    move-exception v0

    move-object v2, v12

    goto :goto_e8

    .end local v12    # "uid":Ljava/lang/String;
    .local v2, "uid":Ljava/lang/String;
    :catchall_e7
    move-exception v0

    :goto_e8
    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0

    .line 581
    .end local v2    # "uid":Ljava/lang/String;
    :cond_ea
    :goto_ea
    return-void
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .line 588
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "pkgReplaced":Ljava/lang/String;
    if-eq v0, v1, :cond_a6

    if-nez v2, :cond_15

    goto/16 :goto_a6

    .line 597
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 598
    :try_start_18
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 599
    .local v4, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_a3

    .line 600
    if-eqz v4, :cond_9f

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_9f

    .line 606
    :cond_2e
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 607
    .local v3, "oldUid":I
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v5

    .line 608
    .local v5, "newUid":I
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageReplaced() - packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " oldUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " newUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-ne v5, v1, :cond_6d

    .line 610
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "ackageReplaced() - Failed to retrieve app info"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 613
    :cond_6d
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 614
    :try_start_70
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_70 .. :try_end_84} :catchall_9c

    .line 616
    if-eq v3, v5, :cond_9b

    .line 617
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_9b
    return-void

    .line 615
    :catchall_9c
    move-exception v6

    :try_start_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v6

    .line 602
    .end local v3    # "oldUid":I
    .end local v5    # "newUid":I
    :cond_9f
    :goto_9f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    .line 603
    return-void

    .line 599
    .end local v4    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_a3
    move-exception v1

    :try_start_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v1

    .line 591
    :cond_a6
    :goto_a6
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "packageReplaced() - Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V
    .registers 7
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 1493
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v0

    .line 1494
    .local v0, "allowDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 1496
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1497
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 1499
    :cond_2d
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1502
    .end local v2    # "i":I
    :cond_33
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 1505
    :cond_36
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v2

    .line 1506
    .local v2, "denyDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_6a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 1507
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 1508
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 1509
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 1511
    :cond_61
    invoke-interface {v2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1507
    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 1514
    .end local v3    # "i":I
    :cond_67
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 1516
    :cond_6a
    return-void
.end method

.method private declared-synchronized processPackageExceptionList(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 2494
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptFromPackages(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2495
    .local v0, "uidsToExempt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2496
    .local v2, "uid":Ljava/lang/Integer;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_30

    .line 2497
    .end local v2    # "uid":Ljava/lang/Integer;
    goto :goto_b

    .line 2498
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_2e
    monitor-exit p0

    return-void

    .line 2493
    .end local v0    # "uidsToExempt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p1    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processPackageExceptionListDelayed()V
    .registers 10

    .line 2462
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "processPackageExceptionListDelayed()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2464
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    if-eqz v1, :cond_11

    .line 2465
    monitor-exit v0

    return-void

    .line 2466
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 2467
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_58

    .line 2468
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2469
    .local v0, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_57

    .line 2470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2472
    .local v1, "token":J
    :try_start_26
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 2473
    .local v3, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_4e

    .line 2474
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2475
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    .line 2476
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    .line 2477
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_52

    .line 2478
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_30

    .line 2481
    .end local v3    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    goto :goto_57

    .line 2481
    :catchall_52
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    throw v3

    .line 2484
    .end local v1    # "token":J
    :cond_57
    :goto_57
    return-void

    .line 2467
    .end local v0    # "userManager":Landroid/os/UserManager;
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private registerDomainFilterListener(Z)Z
    .registers 6
    .param p1, "shouldRegister"    # Z

    .line 1713
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 1714
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    if-nez v2, :cond_6d

    .line 1716
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 1717
    if-eqz v2, :cond_3b

    .line 1718
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 1719
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v1, v2}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 1720
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "DomainFilterEventListener registered successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_24
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_23} :catch_24

    .line 1721
    return v0

    .line 1723
    :catch_24
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register domainFilterEventListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    goto :goto_6d

    .line 1728
    :cond_3c
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    if-eqz v2, :cond_6d

    .line 1730
    :try_start_40
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 1731
    if-eqz v2, :cond_55

    .line 1732
    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 1733
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/internal/net/IDomainFilterEventListener;

    .line 1734
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "DomainFilterEventListener unregistered successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_54} :catch_56
    .catch Landroid/os/ServiceSpecificException; {:try_start_40 .. :try_end_54} :catch_56

    .line 1735
    return v0

    .line 1739
    :cond_55
    goto :goto_6d

    .line 1737
    :catch_56
    move-exception v0

    .line 1738
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister domainFilterEventListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6d
    :goto_6d
    const/4 v0, 0x0

    return v0
.end method

.method private releaseNetworkId(I)V
    .registers 11
    .param p1, "netId"    # I

    .line 2063
    const/4 v0, -0x1

    if-eq p1, v0, :cond_bc

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_bc

    .line 2067
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkIdInfoIndex(I)I

    move-result v1

    .line 2068
    .local v1, "netInfoPos":I
    if-ne v1, v0, :cond_1c

    .line 2069
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - No network to release"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    return-void

    .line 2073
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 2074
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - failed to retrieve NetworkManagementService instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    return-void

    .line 2078
    :cond_2b
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 2079
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseNetworkId() - failed to retrieve ConnectivityService instance"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void

    .line 2083
    :cond_3a
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2084
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->decreaseCounter()I

    move-result v2

    .line 2085
    .local v2, "counter":I
    if-nez v2, :cond_b7

    .line 2086
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_b9

    .line 2089
    .local v3, "token":J
    :try_start_54
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v5, :cond_5d

    .line 2090
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    invoke-interface {v5, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5d} :catch_7a
    .catchall {:try_start_54 .. :try_end_5d} :catchall_78

    .line 2095
    :cond_5d
    :try_start_5d
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v5, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_62} :catch_68
    .catchall {:try_start_5d .. :try_end_62} :catchall_66

    .line 2099
    :goto_62
    :try_start_62
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_b9

    .line 2100
    :goto_65
    goto :goto_72

    .line 2099
    :catchall_66
    move-exception v5

    goto :goto_73

    .line 2096
    :catch_68
    move-exception v5

    .line 2097
    .local v5, "ignore":Ljava/lang/Exception;
    :try_start_69
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "releaseNetworkId() - ignore exception in service.releaseNetworkId. "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_66

    goto :goto_62

    .line 2101
    .end local v5    # "ignore":Ljava/lang/Exception;
    :goto_72
    goto :goto_b7

    .line 2099
    :goto_73
    :try_start_73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    :goto_76
    nop

    .end local v1    # "netInfoPos":I
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .end local p1    # "netId":I
    throw v5
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_b9

    .line 2094
    .restart local v1    # "netInfoPos":I
    .restart local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .restart local p1    # "netId":I
    :catchall_78
    move-exception v5

    goto :goto_9c

    .line 2091
    :catch_7a
    move-exception v5

    .line 2092
    .local v5, "exc":Ljava/lang/Exception;
    :try_start_7b
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "releaseNetworkId() - failed to remove network"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_78

    .line 2095
    .end local v5    # "exc":Ljava/lang/Exception;
    :try_start_83
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v5, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_8e
    .catchall {:try_start_83 .. :try_end_88} :catchall_8c

    .line 2099
    :goto_88
    :try_start_88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_b9

    goto :goto_65

    :catchall_8c
    move-exception v5

    goto :goto_98

    .line 2096
    :catch_8e
    move-exception v5

    .line 2097
    .local v5, "ignore":Ljava/lang/Exception;
    :try_start_8f
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "releaseNetworkId() - ignore exception in service.releaseNetworkId. "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_8c

    goto :goto_88

    .line 2099
    .end local v5    # "ignore":Ljava/lang/Exception;
    :goto_98
    :try_start_98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b9

    goto :goto_76

    .line 2095
    :goto_9c
    :try_start_9c
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6, p1}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a1} :catch_a7
    .catchall {:try_start_9c .. :try_end_a1} :catchall_a5

    .line 2099
    :goto_a1
    :try_start_a1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_b9

    .line 2100
    goto :goto_b1

    .line 2099
    :catchall_a5
    move-exception v5

    goto :goto_b3

    .line 2096
    :catch_a7
    move-exception v6

    .line 2097
    .local v6, "ignore":Ljava/lang/Exception;
    :try_start_a8
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "releaseNetworkId() - ignore exception in service.releaseNetworkId. "

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_a5

    goto :goto_a1

    .line 2101
    .end local v6    # "ignore":Ljava/lang/Exception;
    :goto_b1
    nop

    .end local v1    # "netInfoPos":I
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .end local p1    # "netId":I
    :try_start_b2
    throw v5

    .line 2099
    .restart local v1    # "netInfoPos":I
    .restart local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .restart local p1    # "netId":I
    :goto_b3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_76

    .line 2103
    .end local v2    # "counter":I
    .end local v3    # "token":J
    :cond_b7
    :goto_b7
    monitor-exit v0

    .line 2105
    return-void

    .line 2103
    :catchall_b9
    move-exception v2

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_b9

    throw v2

    .line 2064
    .end local v1    # "netInfoPos":I
    :cond_bc
    :goto_bc
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseNetworkId() - No network to release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    return-void
.end method

.method private releaseNetworks(I)V
    .registers 13
    .param p1, "adminUid"    # I

    .line 2108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2109
    .local v0, "selection":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2110
    const-string/jumbo v1, "networkId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2111
    .local v2, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 2113
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_57

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_57

    .line 2118
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2119
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 2120
    .local v6, "IntNetId":Ljava/lang/Integer;
    const/4 v7, -0x1

    if-eqz v6, :cond_42

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_43

    :cond_42
    move v8, v7

    .line 2121
    .local v8, "netId":I
    :goto_43
    if-eq v8, v7, :cond_55

    .line 2122
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2123
    .local v7, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2125
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "IntNetId":Ljava/lang/Integer;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "netId":I
    :cond_55
    goto :goto_2a

    .line 2126
    :cond_56
    return-void

    .line 2114
    :cond_57
    :goto_57
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "releaseNetworks() - No rules in database"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    return-void
.end method

.method private retrieveCaptivePortalHosts()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2518
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2519
    const-string v1, "captivePortalHosts"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2518
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private saveCaptivePortalHost(Ljava/lang/String;)Z
    .registers 7
    .param p1, "host"    # Ljava/lang/String;

    .line 2524
    const/4 v0, 0x1

    .line 2526
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->retrieveCaptivePortalHosts()Ljava/util/List;

    move-result-object v1

    .line 2527
    .local v1, "portalHosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2528
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2530
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2531
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/android/server/enterprise/utils/Utils;->convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2530
    const-string v4, "captivePortalHosts"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2533
    :cond_1c
    return v0
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1792
    const/4 v0, -0x1

    .line 1794
    .local v0, "userId":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 1797
    goto :goto_14

    .line 1795
    :catch_b
    move-exception v1

    .line 1796
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveReportInDatabase() - Error parsing userId received from daemon."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1798
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :goto_14
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1800
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1801
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1803
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportTable"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5a

    .line 1806
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "saveReportInDatabase() - Failed to save domain report in database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_5a
    return-void
.end method

.method private sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "operation"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v0, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1287
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_11
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-eq v1, p1, :cond_a6

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REPLACE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-eq v1, p1, :cond_a6

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->EXCEPTION:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    .line 1292
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-eq v1, p1, :cond_a6

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CAP_PORTAL:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_33

    goto/16 :goto_a6

    .line 1303
    :cond_33
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    .line 1304
    .local v1, "cmdHeaderSize":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1305
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    move v7, v1

    goto :goto_4b

    .line 1304
    :cond_4a
    move v7, v1

    .line 1307
    .end local v1    # "cmdHeaderSize":I
    .local v7, "cmdHeaderSize":I
    :goto_4b
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-eq v1, p1, :cond_5b

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_a5

    .line 1309
    :cond_5b
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1310
    const-string v5, "BLACKLIST"

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_6b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1316
    const-string v5, "WHITELIST"

    move-object v1, p0

    move v2, p1

    move-object v3, v0

    move v4, v7

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_7b
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string v1, "-1"

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 1322
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_97

    const-string v1, "ADD"

    goto :goto_99

    :cond_97
    const-string v1, "REMOVE"

    .line 1324
    .local v1, "operationType":Ljava/lang/String;
    :goto_99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->NET_ID:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    .line 1333
    .end local v1    # "operationType":Ljava/lang/String;
    :cond_a5
    return-void

    .line 1293
    .end local v7    # "cmdHeaderSize":I
    :cond_a6
    :goto_a6
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(ILjava/util/ArrayList;)V

    .line 1300
    return-void
.end method

.method private setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V
    .registers 9
    .param p1, "rule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .param p2, "jRules"    # Lorg/json/JSONArray;

    .line 2633
    if-nez p1, :cond_3

    return-void

    .line 2635
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2636
    .local v0, "jRule":Lorg/json/JSONObject;
    const-string/jumbo v1, "pN"

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2637
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_27

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    move v1, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v3

    .line 2638
    .local v1, "customDns":I
    :goto_28
    const-string v4, "cDNS"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2640
    const/4 v4, -0x1

    .line 2641
    .local v4, "ruleType":I
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_44

    .line 2642
    const/4 v2, 0x2

    .end local v4    # "ruleType":I
    .local v2, "ruleType":I
    goto :goto_4f

    .line 2644
    .end local v2    # "ruleType":I
    .restart local v4    # "ruleType":I
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    move v2, v3

    .line 2647
    .end local v4    # "ruleType":I
    .restart local v2    # "ruleType":I
    :cond_4f
    :goto_4f
    const-string/jumbo v3, "rlTp"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2649
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_58} :catch_5a

    .line 2652
    nop

    .end local v0    # "jRule":Lorg/json/JSONObject;
    .end local v1    # "customDns":I
    .end local v2    # "ruleType":I
    goto :goto_75

    .line 2650
    :catch_5a
    move-exception v0

    .line 2651
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put rule in json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_75
    return-void
.end method

.method private setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .line 1938
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->matchNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1940
    .local v0, "netId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1941
    return v0

    .line 1944
    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_17

    .line 1945
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setupNetworkDns() - failed to retrieve NetworkManagementService instance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return v1

    .line 1949
    :cond_17
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/IConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_26

    .line 1950
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setupNetworkDns() - failed to retrieve ConnectivityService instance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    return v1

    .line 1955
    :cond_26
    const/4 v2, 0x1

    .line 1959
    .local v2, "retry":Z
    :cond_27
    const/4 v3, 0x0

    .line 1960
    .local v3, "netCreated":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1962
    .local v4, "token":J
    :try_start_2c
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getReservedNetworkId()I

    move-result v6

    move v0, v6

    .line 1963
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 1964
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 1966
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v6, :cond_c8

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_42} :catch_116
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_42} :catch_cf
    .catchall {:try_start_2c .. :try_end_42} :catchall_cd

    if-nez v6, :cond_46

    goto/16 :goto_c8

    .line 1970
    :cond_46
    :try_start_46
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 1971
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {v6, v0}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_a8
    .catch Landroid/os/ServiceSpecificException; {:try_start_46 .. :try_end_51} :catch_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_51} :catch_116
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_cf
    .catchall {:try_start_46 .. :try_end_51} :catchall_cd

    .line 1975
    nop

    .line 1977
    const/4 v3, 0x1

    .line 1978
    :try_start_53
    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    .line 1979
    .local v6, "lp":Landroid/net/LinkProperties;
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1980
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6c

    .line 1981
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 1984
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 1985
    new-instance v8, Lcom/android/server/connectivity/DnsManager;

    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    .line 1986
    invoke-virtual {v8, v0, v6}, Lcom/android/server/connectivity/DnsManager;->noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V

    .line 1992
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v7, v8, v7

    const/4 v7, 0x1

    aput v7, v8, v7

    move-object v7, v8

    .line 1993
    .local v7, "transportTypes":[I
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v8, v0, v7}, Lcom/android/server/connectivity/DnsManager;->updateTransportsForNetwork(I[I)V

    .line 1994
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v8}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V

    .line 1995
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_98
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_98} :catch_116
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_98} :catch_cf
    .catchall {:try_start_53 .. :try_end_98} :catchall_cd

    .line 1996
    :try_start_98
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    new-instance v10, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    invoke-direct {v10, v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    monitor-exit v8

    .line 1998
    const/4 v2, 0x0

    .end local v6    # "lp":Landroid/net/LinkProperties;
    .end local v7    # "transportTypes":[I
    goto :goto_115

    .line 1997
    .restart local v6    # "lp":Landroid/net/LinkProperties;
    .restart local v7    # "transportTypes":[I
    :catchall_a5
    move-exception v9

    monitor-exit v8
    :try_end_a7
    .catchall {:try_start_98 .. :try_end_a7} :catchall_a5

    .end local v0    # "netId":I
    .end local v2    # "retry":Z
    .end local v3    # "netCreated":Z
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .end local p1    # "dns1":Ljava/lang/String;
    .end local p2    # "dns2":Ljava/lang/String;
    :try_start_a7
    throw v9

    .line 1972
    .end local v6    # "lp":Landroid/net/LinkProperties;
    .end local v7    # "transportTypes":[I
    .restart local v0    # "netId":I
    .restart local v2    # "retry":Z
    .restart local v3    # "netCreated":Z
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    .restart local p1    # "dns1":Ljava/lang/String;
    .restart local p2    # "dns2":Ljava/lang/String;
    :catch_a8
    move-exception v6

    .line 1973
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error creating private network: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_a7 .. :try_end_c3} :catch_116
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c3} :catch_cf
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_cd

    .line 1974
    nop

    .line 2025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1974
    return v1

    .line 1967
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_c8
    :goto_c8
    nop

    .line 2025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1967
    return v1

    .line 2025
    :catchall_cd
    move-exception v1

    goto :goto_128

    .line 2006
    :catch_cf
    move-exception v6

    .line 2007
    .local v6, "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_fe

    .line 2008
    :try_start_d2
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_d2 .. :try_end_e9} :catchall_cd

    .line 2010
    :try_start_e9
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    if-eqz v7, :cond_f2

    .line 2011
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    invoke-interface {v7, v0}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f2} :catch_f3
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_cd

    .line 2014
    :cond_f2
    goto :goto_106

    .line 2012
    :catch_f3
    move-exception v7

    .line 2013
    .local v7, "exc":Ljava/lang/Exception;
    :try_start_f4
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setupNetworkDns() - Failed to remove network"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2014
    nop

    .end local v7    # "exc":Ljava/lang/Exception;
    goto :goto_106

    .line 2016
    :cond_fe
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_f4 .. :try_end_106} :catchall_cd

    .line 2020
    :goto_106
    :try_start_106
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v7, v0}, Landroid/net/IConnectivityManager;->releaseNetworkId(I)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_10b} :catch_10c
    .catchall {:try_start_106 .. :try_end_10b} :catchall_cd

    .line 2023
    goto :goto_115

    .line 2021
    :catch_10c
    move-exception v7

    .line 2022
    .local v7, "ignore":Ljava/lang/Exception;
    :try_start_10d
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "setupNetworkDns() - Failed to remove network"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2025
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "ignore":Ljava/lang/Exception;
    :goto_115
    goto :goto_121

    .line 2001
    :catch_116
    move-exception v6

    .line 2003
    .local v6, "ilStateEx":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    .line 2004
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_120
    .catchall {:try_start_10d .. :try_end_120} :catchall_cd

    .line 2025
    nop

    .end local v6    # "ilStateEx":Ljava/lang/IllegalStateException;
    :goto_121
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    nop

    .line 2027
    .end local v3    # "netCreated":Z
    .end local v4    # "token":J
    if-nez v2, :cond_27

    .line 2028
    return v0

    .line 2025
    .restart local v3    # "netCreated":Z
    .restart local v4    # "token":J
    :goto_128
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    throw v1
.end method

.method private updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "rule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .param p3, "operation"    # I
    .param p4, "networkId"    # Ljava/lang/String;

    .line 1164
    move-object/from16 v8, p0

    move/from16 v9, p3

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDaemonCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    move-object/from16 v10, p1

    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1166
    .local v11, "userId":I
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v0

    if-ne v0, v9, :cond_2d

    .line 1167
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 1168
    :cond_2d
    if-eqz p2, :cond_e1

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v0

    if-eq v0, v9, :cond_3f

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v0

    if-ne v0, v9, :cond_e1

    .line 1170
    :cond_3f
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_42
    iget-object v0, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1172
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_de

    .line 1173
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1174
    .local v12, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1175
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1176
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_7d

    .line 1177
    :cond_66
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1178
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_7d

    .line 1177
    :cond_7c
    move-object v13, v1

    .line 1180
    .end local v1    # "appId":Ljava/lang/String;
    .local v13, "appId":Ljava/lang/String;
    :goto_7d
    if-eqz v13, :cond_e1

    .line 1182
    const/4 v1, 0x0

    .local v1, "blackList":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1183
    .local v2, "whiteList":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v3

    .line 1184
    .local v3, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_99

    .line 1185
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_95

    .line 1186
    const-string v4, ";"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_a6

    .line 1188
    :cond_95
    const-string v1, ""

    move-object v14, v1

    goto :goto_a6

    .line 1189
    :cond_99
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v4}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v4

    if-ne v4, v9, :cond_a5

    .line 1190
    const-string v1, "ALL"

    move-object v14, v1

    goto :goto_a6

    .line 1189
    :cond_a5
    move-object v14, v1

    .line 1192
    .end local v1    # "blackList":Ljava/lang/String;
    .local v14, "blackList":Ljava/lang/String;
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    .line 1193
    .end local v3    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_c0

    .line 1194
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bb

    .line 1195
    const-string v1, ";"

    invoke-static {v1, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_cf

    .line 1197
    :cond_bb
    const-string v2, ""

    move-object/from16 v16, v2

    goto :goto_cf

    .line 1198
    :cond_c0
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v1

    if-ne v1, v9, :cond_cd

    .line 1199
    const-string v2, "ALL"

    move-object/from16 v16, v2

    goto :goto_cf

    .line 1198
    :cond_cd
    move-object/from16 v16, v2

    .line 1201
    .end local v2    # "whiteList":Ljava/lang/String;
    .local v16, "whiteList":Ljava/lang/String;
    :goto_cf
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v3, v13

    move-object v5, v14

    move-object/from16 v6, v16

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1

    .line 1172
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v13    # "appId":Ljava/lang/String;
    .end local v14    # "blackList":Ljava/lang/String;
    .end local v15    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "whiteList":Ljava/lang/String;
    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0

    .line 1204
    :cond_e1
    :goto_e1
    return-void
.end method

.method private validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 9
    .param p1, "appId"    # Lcom/samsung/android/knox/AppIdentity;

    .line 2311
    if-nez p1, :cond_e

    .line 2312
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Invalid AppIdentity object."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v0

    .line 2316
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2317
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 2318
    .local v1, "signature":Ljava/lang/String;
    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2c

    .line 2319
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v5, "There is no signature related to all applications."

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 2323
    :cond_2c
    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 2324
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package name. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v2

    .line 2328
    :cond_4d
    const/4 v2, 0x0

    return-object v2
.end method

.method private validateDnses(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "dns1"    # Ljava/lang/String;
    .param p2, "dns2"    # Ljava/lang/String;

    .line 2288
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2289
    if-eqz p2, :cond_f

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2290
    :cond_f
    return v1

    .line 2291
    :cond_10
    invoke-static {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2292
    if-eqz p2, :cond_1e

    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2293
    :cond_1e
    return v1

    .line 2295
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z
    .registers 6
    .param p1, "dfRule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 2299
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2300
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2301
    return v2

    .line 2302
    .end local v1    # "domain":Ljava/lang/String;
    :cond_1c
    goto :goto_8

    .line 2303
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2304
    .restart local v1    # "domain":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2305
    return v2

    .line 2306
    .end local v1    # "domain":Ljava/lang/String;
    :cond_38
    goto :goto_25

    .line 2307
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method private validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 2223
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 2226
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2228
    .local v3, "identity":J
    :try_start_d
    invoke-static {v0, p2, p3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_17
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 2234
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    return v1

    .line 2234
    :catchall_15
    move-exception v1

    goto :goto_25

    .line 2230
    :catch_17
    move-exception v1

    .line 2231
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_18
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "validatePkgSignature() - Fail to validate application signature."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 2232
    nop

    .line 2234
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    return v2

    .line 2234
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_25
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2235
    throw v1
.end method

.method private verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .registers 10
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 2246
    .local p1, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2247
    return v0

    .line 2249
    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v1

    .line 2250
    .local v1, "appUid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_48

    .line 2251
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2252
    .local v2, "userIdObj":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2253
    if-nez p1, :cond_2d

    .line 2254
    :try_start_1a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object p1, v4

    .line 2255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 2258
    :cond_2d
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    :goto_43
    monitor-exit v3

    .line 2262
    return v0

    .line 2261
    :catchall_45
    move-exception v0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_45

    throw v0

    .line 2264
    .end local v2    # "userIdObj":Ljava/lang/Integer;
    :cond_48
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 34
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 626
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_478

    :try_start_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    move-object v5, v2

    move-object v4, v3

    goto/16 :goto_47a

    .line 634
    :cond_15
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDomainFilterRules() - rules.size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 640
    .local v5, "adminUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 641
    .local v6, "userId":I
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v7

    .line 642
    .local v7, "adminDb":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_54

    .line 643
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v9, "addDomainFilterRules() - Another admin already have domain filter rules in the database"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-array v4, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 645
    .local v4, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v4, v0
    :try_end_52
    .catchall {:try_start_b .. :try_end_52} :catchall_494

    .line 647
    monitor-exit p0

    return-object v4

    .line 650
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_54
    :try_start_54
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_494

    .line 651
    :try_start_57
    iget-object v10, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 652
    .local v10, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_46b

    .line 653
    :try_start_64
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 655
    .local v9, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 657
    .local v11, "jRules":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_70
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3f6

    .line 658
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 659
    .local v13, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-direct {v1, v13, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V

    .line 660
    if-nez v13, :cond_a2

    .line 661
    sget-object v14, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v15, "addDomainFilterRules() - Skipping invalid rule - No rule specified"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v0, "No rule was specified."

    invoke-direct {v14, v15, v8, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v14, v9, v12

    .line 665
    move/from16 v23, v5

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object v5, v2

    goto/16 :goto_3e2

    .line 668
    :cond_a2
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "dns1":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v4

    .line 672
    .local v14, "hasDns":Z
    if-nez v14, :cond_fc

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_fc

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_db

    .line 673
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_db

    .line 674
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d8

    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d8

    goto :goto_db

    :cond_d8
    move/from16 v16, v7

    goto :goto_fe

    .line 675
    :cond_db
    :goto_db
    sget-object v15, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "addDomainFilterRules() - Skipping invalid rule - mandatory parameters missing"

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move/from16 v16, v7

    .end local v7    # "adminDb":I
    .local v16, "adminDb":I
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "No parameters provided."

    invoke-direct {v4, v15, v7, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v9, v12

    .line 679
    move/from16 v23, v5

    move/from16 v17, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object v5, v2

    goto/16 :goto_3e2

    .line 672
    .end local v16    # "adminDb":I
    .restart local v7    # "adminDb":I
    :cond_fc
    move/from16 v16, v7

    .line 682
    .end local v7    # "adminDb":I
    .restart local v16    # "adminDb":I
    :goto_fe
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v3

    aput-object v3, v9, v12

    .line 683
    aget-object v3, v9, v12

    if-eqz v3, :cond_133

    .line 684
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addDomainFilterRules() - Skipping invalid rule - invalid Application Identity: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v12

    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move/from16 v23, v5

    move/from16 v17, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object v5, v2

    goto/16 :goto_3e2

    .line 688
    :cond_133
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "signature":Ljava/lang/String;
    const/4 v7, 0x1

    .line 691
    .local v7, "signatureMatch":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_14f

    .line 692
    invoke-direct {v1, v6, v3, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v15

    move v7, v15

    .line 694
    :cond_14f
    const/4 v15, 0x1

    .line 695
    .local v15, "appIsInstalled":Z
    move/from16 v17, v15

    .end local v15    # "appIsInstalled":Z
    .local v17, "appIsInstalled":Z
    const-string v15, "*"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15f

    .line 696
    invoke-direct {v1, v10, v3, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    move-result v15

    .end local v17    # "appIsInstalled":Z
    .restart local v15    # "appIsInstalled":Z
    goto :goto_161

    .line 695
    .end local v15    # "appIsInstalled":Z
    .restart local v17    # "appIsInstalled":Z
    :cond_15f
    move/from16 v15, v17

    .line 698
    .end local v17    # "appIsInstalled":Z
    .restart local v15    # "appIsInstalled":Z
    :goto_161
    if-nez v7, :cond_186

    if-eqz v15, :cond_186

    .line 699
    move/from16 v17, v6

    .end local v6    # "userId":I
    .local v17, "userId":I
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move/from16 v18, v7

    .end local v7    # "signatureMatch":Z
    .local v18, "signatureMatch":Z
    const-string v7, "addDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v19, v10

    .end local v10    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v19, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v20, v11

    .end local v11    # "jRules":Lorg/json/JSONArray;
    .local v20, "jRules":Lorg/json/JSONArray;
    const-string v11, "Given signature does not match with the application."

    invoke-direct {v6, v7, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v9, v12

    .line 703
    move/from16 v23, v5

    move-object v5, v2

    goto/16 :goto_3e2

    .line 698
    .end local v17    # "userId":I
    .end local v18    # "signatureMatch":Z
    .end local v19    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "jRules":Lorg/json/JSONArray;
    .restart local v6    # "userId":I
    .restart local v7    # "signatureMatch":Z
    .restart local v10    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "jRules":Lorg/json/JSONArray;
    :cond_186
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 707
    .end local v6    # "userId":I
    .end local v7    # "signatureMatch":Z
    .end local v10    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "jRules":Lorg/json/JSONArray;
    .restart local v17    # "userId":I
    .restart local v18    # "signatureMatch":Z
    .restart local v19    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "jRules":Lorg/json/JSONArray;
    if-nez v14, :cond_196

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19e

    :cond_196
    if-eqz v14, :cond_1b7

    invoke-direct {v1, v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDnses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b7

    .line 708
    :cond_19e
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v7, "addDomainFilterRules() - Skipping invalid rule - invalid DNS"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Invalid DNS(s) provided"

    invoke-direct {v6, v7, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v9, v12

    .line 711
    move/from16 v23, v5

    move-object v5, v2

    goto/16 :goto_3e2

    .line 715
    :cond_1b7
    invoke-direct {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z

    move-result v6

    if-nez v6, :cond_1d6

    .line 716
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v7, "addDomainFilterRules() - Skipping invalid rule - invalid domain"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Invalid domain."

    invoke-direct {v6, v7, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v6, v9, v12

    .line 720
    move/from16 v23, v5

    move-object v5, v2

    goto/16 :goto_3e2

    .line 724
    :cond_1d6
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 725
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string/jumbo v7, "signature"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v7, "selection":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    const-string/jumbo v10, "packageName"

    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v10, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "DomainFilterTable"

    move-object/from16 v21, v3

    .end local v3    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 733
    invoke-virtual {v10, v11, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 734
    .local v3, "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 735
    .local v10, "ruleInDb":Landroid/content/ContentValues;
    if-eqz v3, :cond_225

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_225

    .line 736
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/ContentValues;

    move-object/from16 v10, v22

    .line 738
    :cond_225
    invoke-direct {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 739
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v11

    .line 740
    .local v11, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v22

    move-object/from16 v23, v22

    .line 741
    .local v23, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_24f

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_23f

    goto :goto_24f

    :cond_23f
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v10

    move-object/from16 v28, v13

    move-object/from16 v4, v23

    move/from16 v23, v5

    goto/16 :goto_308

    .line 744
    :cond_24f
    :goto_24f
    move-object/from16 v22, v3

    .end local v3    # "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v22, "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v3, "blacklist"

    invoke-direct {v1, v10, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "blackListInDB":Ljava/lang/String;
    move-object/from16 v24, v4

    .end local v4    # "signature":Ljava/lang/String;
    .local v24, "signature":Ljava/lang/String;
    const-string/jumbo v4, "whitelist"

    invoke-direct {v1, v10, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "whiteListInDB":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v25

    move-object/from16 v26, v25

    .line 750
    .local v26, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v25

    move-object/from16 v27, v25

    .line 754
    .local v27, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v25, v3

    move-object/from16 v3, v26

    .end local v26    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v25, "blackListInDB":Ljava/lang/String;
    invoke-interface {v3, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v26

    if-eqz v26, :cond_288

    .line 755
    move-object/from16 v26, v4

    move-object/from16 v4, v23

    move/from16 v23, v5

    move-object/from16 v5, v27

    .end local v27    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v23, "adminUid":I
    .local v26, "whiteListInDB":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v27

    if-nez v27, :cond_285

    goto :goto_290

    :cond_285
    const/16 v27, 0x0

    goto :goto_292

    .line 754
    .end local v26    # "whiteListInDB":Ljava/lang/String;
    .local v4, "whiteListInDB":Ljava/lang/String;
    .local v5, "adminUid":I
    .local v23, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_288
    move-object/from16 v26, v4

    move-object/from16 v4, v23

    move/from16 v23, v5

    move-object/from16 v5, v27

    .line 755
    .end local v27    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v23, "adminUid":I
    .restart local v26    # "whiteListInDB":Ljava/lang/String;
    :goto_290
    const/16 v27, 0x1

    .line 756
    .local v27, "hasChangesToBeMade":Z
    :goto_292
    if-nez v27, :cond_2b4

    if-nez v14, :cond_2b4

    .line 757
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move-object/from16 v28, v13

    .end local v13    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .local v28, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    const-string v13, "addDomainFilterRules() - Skipping rule - This rule is already in the database"

    invoke-static {v2, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v29, v7

    .end local v7    # "selection":Landroid/content/ContentValues;
    .local v29, "selection":Landroid/content/ContentValues;
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v30, v10

    .end local v10    # "ruleInDb":Landroid/content/ContentValues;
    .local v30, "ruleInDb":Landroid/content/ContentValues;
    const-string v10, "The specified rule is already in the database."

    invoke-direct {v2, v13, v7, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v2, v9, v12

    .line 761
    move-object/from16 v5, p1

    goto/16 :goto_3e2

    .line 756
    .end local v28    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v29    # "selection":Landroid/content/ContentValues;
    .end local v30    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v7    # "selection":Landroid/content/ContentValues;
    .restart local v10    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v13    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    :cond_2b4
    move-object/from16 v29, v7

    move-object/from16 v30, v10

    move-object/from16 v28, v13

    .line 767
    .end local v7    # "selection":Landroid/content/ContentValues;
    .end local v10    # "ruleInDb":Landroid/content/ContentValues;
    .end local v13    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .restart local v28    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .restart local v29    # "selection":Landroid/content/ContentValues;
    .restart local v30    # "ruleInDb":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2bb
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2d3

    .line 768
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 769
    .local v7, "domain":Ljava/lang/String;
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d0

    .line 770
    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 767
    .end local v7    # "domain":Ljava/lang/String;
    :cond_2d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2bb

    .line 775
    .end local v2    # "j":I
    :cond_2d3
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2d4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2f5

    .line 776
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 777
    .restart local v7    # "domain":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e9

    .line 778
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 782
    :cond_2e9
    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f2

    .line 783
    invoke-interface {v11, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 775
    .end local v7    # "domain":Ljava/lang/String;
    :cond_2f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d4

    .line 789
    .end local v2    # "j":I
    :cond_2f5
    invoke-direct {v1, v11, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .end local v25    # "blackListInDB":Ljava/lang/String;
    .local v2, "blackListInDB":Ljava/lang/String;
    invoke-direct {v1, v4, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    .line 796
    .end local v26    # "whiteListInDB":Ljava/lang/String;
    .local v7, "whiteListInDB":Ljava/lang/String;
    const-string v10, "blacklist"

    invoke-virtual {v6, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v10, "whitelist"

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .end local v2    # "blackListInDB":Ljava/lang/String;
    .end local v3    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "whiteListInDB":Ljava/lang/String;
    .end local v27    # "hasChangesToBeMade":Z
    :goto_308
    const/4 v2, -0x1

    .line 801
    .local v2, "netId":I
    if-eqz v14, :cond_377

    .line 802
    if-eqz v15, :cond_35f

    .line 803
    invoke-direct {v1, v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 804
    const/4 v3, -0x1

    if-ne v2, v3, :cond_32d

    .line 805
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "addDomainFilterRules() - Skipping invalid rule - Invalid netID"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Error occurred applying DNS(s)"

    invoke-direct {v3, v5, v7, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v9, v12

    .line 809
    move-object/from16 v5, p1

    goto/16 :goto_3e2

    .line 811
    :cond_32d
    const-string/jumbo v3, "networkId"

    move-object/from16 v10, v30

    .end local v30    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v10    # "ruleInDb":Landroid/content/ContentValues;
    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35d

    .line 813
    const-string/jumbo v3, "networkId"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 814
    .local v3, "prevNetId":Ljava/lang/Integer;
    if-eqz v3, :cond_35b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_362

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_362

    .line 815
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v13, 0x0

    invoke-static {v5, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 817
    .local v5, "msg":Landroid/os/Message;
    iget-object v13, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_362

    .line 814
    .end local v5    # "msg":Landroid/os/Message;
    :cond_35b
    const/4 v7, -0x1

    goto :goto_362

    .line 811
    .end local v3    # "prevNetId":Ljava/lang/Integer;
    :cond_35d
    const/4 v7, -0x1

    goto :goto_362

    .line 802
    .end local v10    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v30    # "ruleInDb":Landroid/content/ContentValues;
    :cond_35f
    move-object/from16 v10, v30

    const/4 v7, -0x1

    .line 821
    .end local v30    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v10    # "ruleInDb":Landroid/content/ContentValues;
    :cond_362
    :goto_362
    const-string v3, "dns1"

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v3, "dns2"

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v3, "networkId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_37a

    .line 801
    .end local v10    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v30    # "ruleInDb":Landroid/content/ContentValues;
    :cond_377
    move-object/from16 v10, v30

    const/4 v7, -0x1

    .line 826
    .end local v30    # "ruleInDb":Landroid/content/ContentValues;
    .restart local v10    # "ruleInDb":Landroid/content/ContentValues;
    :goto_37a
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterTable"

    move-object/from16 v13, v29

    .end local v29    # "selection":Landroid/content/ContentValues;
    .local v13, "selection":Landroid/content/ContentValues;
    invoke-virtual {v3, v5, v6, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_3b4

    .line 827
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "addDomainFilterRules() - Failed to add rule in the database"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v25, v0

    .end local v0    # "dns1":Ljava/lang/String;
    .local v25, "dns1":Ljava/lang/String;
    const-string v0, "Failed to add/update rule in the database."

    invoke-direct {v3, v5, v7, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v3, v9, v12

    .line 832
    if-eqz v14, :cond_3b1

    .line 833
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 834
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 833
    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 835
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    move-object/from16 v5, p1

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_3e2

    .line 832
    :cond_3b1
    move-object/from16 v5, p1

    goto :goto_3e2

    .line 838
    .end local v25    # "dns1":Ljava/lang/String;
    .local v0, "dns1":Ljava/lang/String;
    :cond_3b4
    move-object/from16 v25, v0

    .end local v0    # "dns1":Ljava/lang/String;
    .restart local v25    # "dns1":Ljava/lang/String;
    if-eqz v15, :cond_3ca

    .line 839
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ADD:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, p1

    move-object/from16 v7, v28

    .end local v28    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .local v7, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-direct {v1, v5, v7, v0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    goto :goto_3ce

    .line 838
    .end local v7    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .restart local v28    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    :cond_3ca
    move-object/from16 v5, p1

    move-object/from16 v7, v28

    .line 840
    .end local v28    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .restart local v7    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    :goto_3ce
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionListDelayed()V

    .line 841
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move/from16 v26, v2

    .end local v2    # "netId":I
    .local v26, "netId":I
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v27, v4

    .end local v4    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "The rule(s) was successfully added/updated."

    invoke-direct {v0, v3, v2, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v9, v12

    .line 657
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v7    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v8    # "dns2":Ljava/lang/String;
    .end local v10    # "ruleInDb":Landroid/content/ContentValues;
    .end local v11    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "selection":Landroid/content/ContentValues;
    .end local v14    # "hasDns":Z
    .end local v15    # "appIsInstalled":Z
    .end local v18    # "signatureMatch":Z
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "cvlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v24    # "signature":Ljava/lang/String;
    .end local v25    # "dns1":Ljava/lang/String;
    .end local v26    # "netId":I
    .end local v27    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3e2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p2

    move-object v2, v5

    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v5, v23

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    goto/16 :goto_70

    .end local v16    # "adminDb":I
    .end local v17    # "userId":I
    .end local v19    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "jRules":Lorg/json/JSONArray;
    .end local v23    # "adminUid":I
    .local v5, "adminUid":I
    .local v6, "userId":I
    .local v7, "adminDb":I
    .local v10, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v11, "jRules":Lorg/json/JSONArray;
    :cond_3f6
    move/from16 v23, v5

    move/from16 v17, v6

    move/from16 v16, v7

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object v5, v2

    .line 847
    .end local v5    # "adminUid":I
    .end local v6    # "userId":I
    .end local v7    # "adminDb":I
    .end local v10    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "jRules":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .restart local v16    # "adminDb":I
    .restart local v17    # "userId":I
    .restart local v19    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v20    # "jRules":Lorg/json/JSONArray;
    .restart local v23    # "adminUid":I
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v2, "KNOX_SECURE_NETWORK"

    const-string v3, "addDomainFilterRules"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 850
    .local v0, "knoxAnalyticsData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    iget v2, v5, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 851
    const-string/jumbo v2, "rules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 857
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_467

    .line 858
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v2, "rulesToEnable":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43f
    array-length v4, v9

    if-ge v3, v4, :cond_461

    .line 860
    aget-object v4, v9, v3

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45c

    .line 861
    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45e

    .line 860
    :cond_45c
    move-object/from16 v4, p2

    .line 859
    :goto_45e
    add-int/lit8 v3, v3, 0x1

    goto :goto_43f

    :cond_461
    move-object/from16 v4, p2

    .line 864
    .end local v3    # "i":I
    invoke-virtual {v1, v5, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_466
    .catchall {:try_start_64 .. :try_end_466} :catchall_494

    goto :goto_469

    .line 857
    .end local v2    # "rulesToEnable":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    :cond_467
    move-object/from16 v4, p2

    .line 866
    :goto_469
    monitor-exit p0

    return-object v9

    .line 652
    .end local v0    # "knoxAnalyticsData":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .end local v9    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v16    # "adminDb":I
    .end local v17    # "userId":I
    .end local v19    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "jRules":Lorg/json/JSONArray;
    .end local v23    # "adminUid":I
    .restart local v5    # "adminUid":I
    .restart local v6    # "userId":I
    .restart local v7    # "adminDb":I
    :catchall_46b
    move-exception v0

    move-object v4, v3

    move/from16 v23, v5

    move/from16 v17, v6

    move/from16 v16, v7

    move-object v5, v2

    .end local v5    # "adminUid":I
    .end local v6    # "userId":I
    .end local v7    # "adminDb":I
    .restart local v16    # "adminDb":I
    .restart local v17    # "userId":I
    .restart local v23    # "adminUid":I
    :goto_474
    :try_start_474
    monitor-exit v9
    :try_end_475
    .catchall {:try_start_474 .. :try_end_475} :catchall_476

    :try_start_475
    throw v0

    :catchall_476
    move-exception v0

    goto :goto_474

    .line 626
    .end local v16    # "adminDb":I
    .end local v17    # "userId":I
    .end local v23    # "adminUid":I
    :cond_478
    move-object v5, v2

    move-object v4, v3

    .line 627
    :goto_47a
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "addDomainFilterRules() - No rule specified"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 629
    .local v0, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "No rule was specified."

    invoke-direct {v2, v3, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3
    :try_end_492
    .catchall {:try_start_475 .. :try_end_492} :catchall_494

    .line 632
    monitor-exit p0

    return-object v0

    .line 625
    .end local v0    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    :catchall_494
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    monitor-enter p0

    .line 1638
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "addDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    if-eqz p2, :cond_19

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 1643
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_26

    monitor-exit p0

    return-object v0

    .line 1640
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_19
    :goto_19
    :try_start_19
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "The domain filter on iptables api was successfully enabled."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    .line 1637
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method adminRemoved(I)V
    .registers 5
    .param p1, "adminUid"    # I

    .line 1463
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminRemoved() - adminUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1465
    .local v0, "userId":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1466
    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1467
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1468
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1470
    :cond_34
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V

    .line 1471
    return-void
.end method

.method declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enabled"    # Z

    monitor-enter p0

    .line 1535
    :try_start_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1536
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1539
    .local v1, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v2

    .line 1540
    .local v2, "adminDb":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 1541
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "enableDomainFilterOnIptables() - Another admin already have domain filter rules in the database"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_112

    monitor-exit p0

    return-object v3

    .line 1546
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_22
    if-eqz p2, :cond_9b

    .line 1547
    :try_start_24
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->isDomainFilterOnIptablesSupported()Z

    move-result v3

    if-nez v3, :cond_40

    .line 1548
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "DomainFilterOnIptablesApi not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "Failed to enable domain filter on iptables api."

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_112

    monitor-exit p0

    return-object v3

    .line 1552
    :cond_40
    :try_start_40
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1553
    .local v3, "insertValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string/jumbo v4, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    const-string/jumbo v4, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1556
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_84

    .line 1557
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_40 .. :try_end_82} :catchall_112

    monitor-exit p0

    return-object v4

    .line 1563
    :cond_84
    :try_start_84
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V

    .line 1564
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1565
    .local v4, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v5

    .line 1566
    .local v5, "response":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    sget-object v6, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v7, "enableDomainFilterOnIptables() - DomainFilterOnIptables Api successfully enabled"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_112

    .line 1567
    monitor-exit p0

    return-object v5

    .line 1573
    .end local v3    # "insertValues":Landroid/content/ContentValues;
    .end local v4    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    .end local v5    # "response":Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_9b
    :try_start_9b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1574
    .local v3, "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1575
    const-string/jumbo v4, "userId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1576
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-nez v4, :cond_d1

    .line 1577
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change DomainFilterOnIptables status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_9b .. :try_end_cf} :catchall_112

    monitor-exit p0

    return-object v4

    .line 1582
    :cond_d1
    :try_start_d1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "enableDomainFilterOnIptables() - DomainFilterOnIptables successfully disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableNapFeature(Lcom/android/server/enterprise/storage/EdmStorageProviderBase;Z)V

    .line 1584
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    move-result v4

    if-nez v4, :cond_fe

    .line 1585
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to disable domain filter on iptables api."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_d1 .. :try_end_fc} :catchall_112

    monitor-exit p0

    return-object v4

    .line 1590
    :cond_fe
    :try_start_fe
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "flushDomainChains() - domain rules successfully removed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "The domain filter on iptables api was successfully disabled."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_fe .. :try_end_110} :catchall_112

    monitor-exit p0

    return-object v4

    .line 1534
    .end local v0    # "adminUid":I
    .end local v1    # "userId":I
    .end local v2    # "adminDb":I
    .end local v3    # "selectionValues":Landroid/content/ContentValues;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "enabled":Z
    :catchall_112
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enabled"    # Z

    .line 1657
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "enableDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1659
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1660
    .local v1, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1661
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1663
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1664
    .local v3, "selection":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "adminUid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1665
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "DomainFilterReportStatus"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 1667
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v5, "enableDomainFilterReport() - Failed to change Domain Filter Report status on database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "Failed to change Domain Filter report status on database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    return-object v4

    .line 1672
    :cond_51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1673
    .local v4, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_65

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 1674
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 1675
    :cond_65
    if-nez p2, :cond_7d

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 1676
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 1677
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1678
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    .line 1682
    :cond_7d
    :goto_7d
    if-eqz p2, :cond_8d

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1683
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "enableDomainFilterReport() - Domain Filter Report successfully enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 1684
    :cond_8d
    if-nez p2, :cond_9c

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1685
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v6, "enableDomainFilterReport() - Domain Filter Report successfully disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_9c
    :goto_9c
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1688
    if-eqz p2, :cond_a7

    const-string v8, "Domain Report successfully enabled."

    goto :goto_a9

    .line 1689
    :cond_a7
    const-string v8, "Domain Report successfully disabled."

    :goto_a9
    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1687
    return-object v5
.end method

.method getDefaulCaptivePortalURL()Ljava/lang/String;
    .registers 4

    .line 2600
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2601
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2603
    .local v0, "server":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 2604
    const-string v0, "connectivitycheck.gstatic.com"

    .line 2605
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2607
    .end local v0    # "server":Ljava/lang/String;
    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .line 1763
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDomainFilterReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1765
    .local v0, "userId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1766
    .local v1, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterReport;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_80

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_80

    .line 1770
    :cond_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1771
    .local v2, "filterByUserId":Landroid/content/ContentValues;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1772
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    const-string v5, "DomainFilterReportTable"

    invoke-virtual {v3, v5, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1774
    .local v3, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 1775
    .local v5, "report":Landroid/content/ContentValues;
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1776
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_5f

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 1777
    :cond_5f
    const-string/jumbo v7, "time"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 1778
    .local v7, "timestamp":Ljava/lang/Long;
    new-instance v8, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;

    .line 1779
    if-eqz v7, :cond_6f

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_71

    :cond_6f
    const-wide/16 v9, 0x0

    .line 1780
    :goto_71
    const-string/jumbo v11, "url"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 1778
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    .end local v5    # "report":Landroid/content/ContentValues;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "timestamp":Ljava/lang/Long;
    :cond_7e
    goto :goto_44

    .line 1783
    :cond_7f
    return-object v1

    .line 1767
    .end local v2    # "filterByUserId":Landroid/content/ContentValues;
    .end local v3    # "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_80
    :goto_80
    return-object v1
.end method

.method getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 27
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .line 1114
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getDomainFilterRules()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v1, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    .local v2, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v3, p1

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1122
    .local v4, "adminUid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "adminUid"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1124
    const-string v7, "DomainFilterTable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 1125
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 1126
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1127
    .local v9, "packageName":Ljava/lang/String;
    const-string/jumbo v10, "signature"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1128
    .local v10, "signature":Ljava/lang/String;
    if-eqz v0, :cond_52

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 1129
    :cond_52
    const-string v11, "blacklist"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1130
    .local v11, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v12, "whitelist"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1131
    .local v12, "whiteListInDB":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ";"

    if-nez v13, :cond_70

    .line 1132
    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .local v13, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_75

    .line 1134
    .end local v13    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .restart local v13    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_75
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_84

    .line 1137
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .local v14, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_89

    .line 1139
    .end local v14    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_84
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .restart local v14    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_89
    const-string v15, "dns1"

    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1142
    .local v21, "dns1":Ljava/lang/String;
    const-string v15, "dns2"

    invoke-virtual {v8, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1143
    .local v22, "dns2":Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v15, v9, v10}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v15

    .line 1144
    .local v16, "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    new-instance v23, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    move-object/from16 v15, v23

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    .local v15, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    .end local v8    # "cv":Landroid/content/ContentValues;
    .end local v11    # "blackListInDB":Ljava/lang/String;
    .end local v12    # "whiteListInDB":Ljava/lang/String;
    .end local v13    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v16    # "appIdentity":Lcom/samsung/android/knox/AppIdentity;
    .end local v21    # "dns1":Ljava/lang/String;
    .end local v22    # "dns2":Ljava/lang/String;
    :cond_ae
    goto :goto_30

    .line 1149
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "signature":Ljava/lang/String;
    :cond_af
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1150
    return-object v1
.end method

.method protected getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;
    .registers 2

    .line 1926
    new-instance v0, Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0}, Lcom/android/server/connectivity/MockableSystemProperties;-><init>()V

    return-object v0
.end method

.method isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1597
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1598
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1599
    .local v1, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1600
    .local v2, "filterValues":Landroid/content/ContentValues;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterOnIptablesApiStatus"

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1605
    .local v3, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_3c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_3c

    .line 1608
    :cond_32
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 1606
    :cond_3c
    :goto_3c
    const/4 v4, 0x0

    return v4
.end method

.method isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1746
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method protected isInitDaemonCacheThreadAlive()Z
    .registers 2

    .line 2627
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInitDaemonCacheThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 2628
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0

    .line 2629
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .registers 11
    .param p1, "adminUid"    # I

    .line 1474
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreAdminRemoval(adminUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1476
    .local v0, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    .line 1479
    sget-object v1, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 1482
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1483
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    .line 1486
    :cond_55
    return-void
.end method

.method public declared-synchronized removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 16
    .param p1, "dfRule"    # Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .param p2, "adminUid"    # I
    .param p3, "valuesInDB"    # Landroid/content/ContentValues;

    monitor-enter p0

    .line 1884
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDnsForApplication() - START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v0, "dns1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "dns1Db":Ljava/lang/String;
    const-string v1, "dns2"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1887
    .local v1, "dns2Db":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v2

    .line 1888
    .local v2, "dns1":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    move-result-object v3

    .line 1890
    .local v3, "dns2":Ljava/lang/String;
    if-eqz v0, :cond_b0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    if-nez v3, :cond_29

    if-nez v1, :cond_b0

    :cond_29
    if-eqz v3, :cond_2d

    if-eqz v1, :cond_b0

    :cond_2d
    if-eqz v3, :cond_36

    .line 1891
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_b0

    .line 1898
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_36
    const-string/jumbo v4, "networkId"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1899
    .local v4, "netId":Ljava/lang/Integer;
    if-eqz v4, :cond_57

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_57

    .line 1900
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    const/4 v7, 0x0

    invoke-static {v5, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1901
    .local v5, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-virtual {v7, v5}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1902
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    .line 1904
    .end local v5    # "msg":Landroid/os/Message;
    :cond_57
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1905
    .local v5, "newValues":Landroid/content/ContentValues;
    const-string v6, "dns1"

    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v6, "dns2"

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string/jumbo v6, "networkId"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1909
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1910
    .local v6, "selectionValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1911
    .local v8, "packageName":Ljava/lang/String;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1912
    const-string/jumbo v9, "packageName"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "DomainFilterTable"

    invoke-virtual {v9, v10, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_ae

    .line 1914
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeDnsForApplication() -  Database error!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "Failed to remove DNS(s) from database."

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_1 .. :try_end_ac} :catchall_c5

    monitor-exit p0

    return-object v7

    .line 1919
    :cond_ae
    monitor-exit p0

    return-object v7

    .line 1892
    .end local v4    # "netId":Ljava/lang/Integer;
    .end local v5    # "newValues":Landroid/content/ContentValues;
    .end local v6    # "selectionValues":Landroid/content/ContentValues;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_b0
    :goto_b0
    :try_start_b0
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "removeDnsForApplication() - Invalid parameters!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v7, "DNS(s) provided doesn\'t match DNS(s) in database."

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_c5

    monitor-exit p0

    return-object v4

    .line 1883
    .end local v0    # "dns1Db":Ljava/lang/String;
    .end local v1    # "dns2Db":Ljava/lang/String;
    .end local v2    # "dns1":Ljava/lang/String;
    .end local v3    # "dns2":Ljava/lang/String;
    .end local p1    # "dfRule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local p2    # "adminUid":I
    .end local p3    # "valuesInDB":Landroid/content/ContentValues;
    :catchall_c5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 36
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 871
    :try_start_7
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeDomainFilterRules() - rules.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1f

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_21

    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_1f
    const-string v5, "0"

    :goto_21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_4e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 876
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeDomainFilterRules() - No rule specified"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-array v4, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 878
    .local v4, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v8, "No rule was specified."

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v4, v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_458

    .line 881
    monitor-exit p0

    return-object v4

    .line 884
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_4e
    :try_start_4e
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 885
    .local v5, "adminUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 887
    .local v6, "userId":I
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v7

    .line 888
    .local v7, "adminStatus":I
    if-nez v7, :cond_79

    .line 889
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeDomainFilterRules() - Database is already empty"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-array v4, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 891
    .restart local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "The rules are already cleared."

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v4, v0

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_443

    .line 894
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_79
    const/4 v8, -0x1

    if-ne v7, v8, :cond_9b

    .line 895
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeDomainFilterRules() - Another admin is handling domain filter rules in the database"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-array v4, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 897
    .restart local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v11, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v4, v0

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_443

    .line 900
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_9b
    sget-object v9, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    const/4 v10, 0x0

    if-ne v3, v9, :cond_120

    .line 902
    new-array v4, v4, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 903
    .restart local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 904
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 905
    .local v8, "selectionValues":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "DomainFilterTable"

    invoke-virtual {v9, v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    if-gtz v9, :cond_d3

    .line 908
    sget-object v9, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "removeDomainFilterRules() - Failed to clear rules from the database"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v13, "Failed to clear rules from database."

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v9, v4, v0

    goto :goto_10f

    .line 913
    :cond_d3
    new-instance v9, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v12, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rules successfully cleared. Admin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v9, v4, v0

    .line 917
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 918
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    move-result v9

    if-nez v9, :cond_108

    .line 919
    sget-object v9, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v11, "flushDomainChains() - Failed to flush domain chains"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_108
    sget-object v9, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v11, "flushDomainChains() - domain rules successfully removed"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_10f
    sget-object v9, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->CLEAR:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v9}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v9

    invoke-direct {v1, v2, v10, v9, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 926
    .end local v8    # "selectionValues":Landroid/content/ContentValues;
    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_443

    .line 927
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :cond_120
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 930
    .local v9, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v11, "domainsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_12c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_410

    .line 932
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 933
    .local v13, "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v14

    aput-object v14, v9, v12

    .line 934
    aget-object v14, v9, v12

    if-eqz v14, :cond_16b

    .line 935
    sget-object v14, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDomainFilterRules() - Skipping invalid rule - invalid Application Identity"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v9, v12

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    goto/16 :goto_402

    .line 938
    :cond_16b
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "packageName":Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .local v14, "selectionValues":Landroid/content/ContentValues;
    const-string v15, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const-string/jumbo v8, "packageName"

    invoke-virtual {v14, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v8, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "DomainFilterTable"

    invoke-virtual {v8, v15, v10, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 946
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_3e2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1a3

    move-object/from16 v18, v4

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    goto/16 :goto_3ec

    .line 955
    :cond_1a3
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 956
    .local v15, "ruleInDb":Landroid/content/ContentValues;
    const-string/jumbo v10, "signature"

    invoke-virtual {v15, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 957
    .local v10, "signatureInDB":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 958
    .local v17, "signature":Ljava/lang/String;
    move-object/from16 v0, v17

    .end local v17    # "signature":Ljava/lang/String;
    .local v0, "signature":Ljava/lang/String;
    if-eqz v0, :cond_1c0

    if-eqz v10, :cond_1ce

    :cond_1c0
    if-nez v0, :cond_1c4

    if-nez v10, :cond_1ce

    :cond_1c4
    if-eqz v0, :cond_1f8

    if-eqz v10, :cond_1f8

    .line 961
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ef

    .line 962
    :cond_1ce
    move-object/from16 v17, v0

    .end local v0    # "signature":Ljava/lang/String;
    .restart local v17    # "signature":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move-object/from16 v18, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v18, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "removeDomainFilterRules() - Skipping invalid rule - signature mismatch"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move/from16 v19, v6

    .end local v6    # "userId":I
    .local v19, "userId":I
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v20, v7

    .end local v7    # "adminStatus":I
    .local v20, "adminStatus":I
    const-string v7, "Signature does not match with the previous added."

    invoke-direct {v0, v4, v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v9, v12

    .line 966
    move/from16 v23, v5

    goto/16 :goto_402

    .line 961
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v20    # "adminStatus":I
    .restart local v0    # "signature":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "adminStatus":I
    :cond_1ef
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v0    # "signature":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "adminStatus":I
    .restart local v17    # "signature":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v19    # "userId":I
    .restart local v20    # "adminStatus":I
    goto :goto_200

    .line 958
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v20    # "adminStatus":I
    .restart local v0    # "signature":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "adminStatus":I
    :cond_1f8
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    .line 969
    .end local v0    # "signature":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "adminStatus":I
    .restart local v17    # "signature":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v19    # "userId":I
    .restart local v20    # "adminStatus":I
    :goto_200
    const/4 v0, 0x0

    .line 970
    .local v0, "hasDns":Z
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_222

    .line 971
    invoke-virtual {v1, v13, v5, v15}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v4

    aput-object v4, v9, v12

    .line 973
    aget-object v4, v9, v12

    if-eqz v4, :cond_221

    .line 974
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeDomainFilterRules() - Skipping rule - Failed to remove DNS"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    move/from16 v23, v5

    goto/16 :goto_402

    .line 977
    :cond_221
    const/4 v0, 0x1

    .line 982
    :cond_222
    const-string v4, "blacklist"

    invoke-direct {v1, v15, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v6, "whitelist"

    invoke-direct {v1, v15, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 987
    .local v6, "whiteListInDB":Ljava/lang/String;
    invoke-direct {v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 988
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .line 989
    .local v7, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v21

    move-object/from16 v22, v21

    .line 992
    .local v22, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 996
    .local v21, "hasRulesToDelete":Z
    if-eqz v7, :cond_258

    .line 997
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v23

    move-object/from16 v24, v23

    .line 998
    .local v24, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v23, v5

    move-object/from16 v5, v24

    .end local v24    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v23, "adminUid":I
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    or-int v21, v21, v24

    move-object/from16 v32, v8

    move-object v8, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v32

    goto :goto_275

    .line 1003
    .end local v23    # "adminUid":I
    .local v5, "adminUid":I
    :cond_258
    move/from16 v23, v5

    .end local v5    # "adminUid":I
    .restart local v23    # "adminUid":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v5

    .line 1004
    .restart local v24    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v21, v21, 0x1

    .line 1005
    move-object/from16 v5, v22

    .end local v22    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_271

    .line 1006
    move-object/from16 v22, v8

    .end local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v22, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_273

    .line 1005
    .end local v22    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_271
    move-object/from16 v22, v8

    .line 1012
    .end local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v22    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_273
    move-object/from16 v8, v24

    .end local v24    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v8, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_275
    if-eqz v5, :cond_288

    .line 1013
    invoke-direct {v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v24

    move-object/from16 v25, v24

    .line 1014
    .local v25, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v24, v4

    move-object/from16 v4, v25

    .end local v25    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v24, "blackListInDB":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v25

    or-int v21, v21, v25

    goto :goto_29e

    .line 1020
    .end local v24    # "blackListInDB":Ljava/lang/String;
    .local v4, "blackListInDB":Ljava/lang/String;
    :cond_288
    move-object/from16 v24, v4

    .end local v4    # "blackListInDB":Ljava/lang/String;
    .restart local v24    # "blackListInDB":Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v25, v4

    .line 1021
    .restart local v25    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v21, v21, 0x1

    .line 1022
    if-eqz v7, :cond_29c

    .line 1023
    invoke-direct {v1, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1028
    :cond_29c
    move-object/from16 v4, v25

    .end local v25    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_29e
    if-nez v21, :cond_2c1

    if-nez v0, :cond_2c1

    .line 1029
    move-object/from16 v25, v5

    .end local v5    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    move-object/from16 v26, v6

    .end local v6    # "whiteListInDB":Ljava/lang/String;
    .local v26, "whiteListInDB":Ljava/lang/String;
    const-string/jumbo v6, "removeDomainFilterRules() - Skipping rule - Rule is not in the database"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-object/from16 v27, v7

    .end local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v27, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v28, v10

    .end local v10    # "signatureInDB":Ljava/lang/String;
    .local v28, "signatureInDB":Ljava/lang/String;
    const-string v10, "The rule is not in the database."

    invoke-direct {v5, v6, v7, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v5, v9, v12

    .line 1033
    goto/16 :goto_402

    .line 1028
    .end local v25    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "whiteListInDB":Ljava/lang/String;
    .end local v27    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "signatureInDB":Ljava/lang/String;
    .restart local v5    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "whiteListInDB":Ljava/lang/String;
    .restart local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "signatureInDB":Ljava/lang/String;
    :cond_2c1
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v10

    .line 1034
    .end local v5    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "whiteListInDB":Ljava/lang/String;
    .end local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "signatureInDB":Ljava/lang/String;
    .restart local v25    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "whiteListInDB":Ljava/lang/String;
    .restart local v27    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "signatureInDB":Ljava/lang/String;
    if-eqz v21, :cond_2d8

    .line 1036
    const-string v5, ";"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1037
    .end local v24    # "blackListInDB":Ljava/lang/String;
    .local v5, "blackListInDB":Ljava/lang/String;
    const-string v6, ";"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .end local v26    # "whiteListInDB":Ljava/lang/String;
    .restart local v6    # "whiteListInDB":Ljava/lang/String;
    goto :goto_2dc

    .line 1034
    .end local v5    # "blackListInDB":Ljava/lang/String;
    .end local v6    # "whiteListInDB":Ljava/lang/String;
    .restart local v24    # "blackListInDB":Ljava/lang/String;
    .restart local v26    # "whiteListInDB":Ljava/lang/String;
    :cond_2d8
    move-object/from16 v5, v24

    move-object/from16 v6, v26

    .line 1040
    .end local v24    # "blackListInDB":Ljava/lang/String;
    .end local v26    # "whiteListInDB":Ljava/lang/String;
    .restart local v5    # "blackListInDB":Ljava/lang/String;
    .restart local v6    # "whiteListInDB":Ljava/lang/String;
    :goto_2dc
    const-string v7, "dns1"

    invoke-virtual {v15, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2e6

    const/4 v7, 0x1

    goto :goto_2e7

    :cond_2e6
    const/4 v7, 0x0

    .line 1042
    .local v7, "hasDnsDb":Z
    :goto_2e7
    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_372

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_372

    if-nez v0, :cond_304

    if-nez v7, :cond_2fc

    goto :goto_304

    :cond_2fc
    move-object/from16 v24, v4

    move/from16 v26, v7

    move-object/from16 v29, v8

    goto/16 :goto_378

    .line 1044
    :cond_304
    :goto_304
    iget-object v10, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v4

    .end local v4    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v24, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "DomainFilterTable"

    invoke-virtual {v10, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-gtz v4, :cond_32b

    .line 1046
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move/from16 v26, v7

    .end local v7    # "hasDnsDb":Z
    .local v26, "hasDnsDb":Z
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v29, v8

    .end local v8    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v29, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v8, "Failed to remove/update rule from the database."

    invoke-direct {v4, v10, v7, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v9, v12

    goto/16 :goto_402

    .line 1051
    .end local v26    # "hasDnsDb":Z
    .end local v29    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "hasDnsDb":Z
    .restart local v8    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_32b
    move/from16 v26, v7

    move-object/from16 v29, v8

    .end local v7    # "hasDnsDb":Z
    .end local v8    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "hasDnsDb":Z
    .restart local v29    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "networkId"

    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1052
    .local v4, "netId":Ljava/lang/Integer;
    if-eqz v4, :cond_359

    .line 1053
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v7}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v7

    .line 1054
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1053
    invoke-direct {v1, v2, v13, v7, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 1055
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v30, v4

    .end local v4    # "netId":Ljava/lang/Integer;
    .local v30, "netId":Ljava/lang/Integer;
    const-string v4, "The rule was successfuly removed/updated."

    invoke-direct {v7, v8, v10, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v7, v9, v12

    goto :goto_370

    .line 1059
    .end local v30    # "netId":Ljava/lang/Integer;
    .restart local v4    # "netId":Ljava/lang/Integer;
    :cond_359
    move-object/from16 v30, v4

    .end local v4    # "netId":Ljava/lang/Integer;
    .restart local v30    # "netId":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v10, "Failed to remove/update rule from the database."

    invoke-direct {v4, v7, v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v4, v9, v12

    .line 1064
    .end local v30    # "netId":Ljava/lang/Integer;
    :goto_370
    goto/16 :goto_402

    .line 1042
    .end local v24    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "hasDnsDb":Z
    .end local v29    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "hasDnsDb":Z
    .restart local v8    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_372
    move-object/from16 v24, v4

    move/from16 v26, v7

    move-object/from16 v29, v8

    .line 1067
    .end local v4    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "hasDnsDb":Z
    .end local v8    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "hasDnsDb":Z
    .restart local v29    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_378
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1068
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "blacklist"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string/jumbo v7, "whitelist"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterTable"

    invoke-virtual {v7, v8, v4, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_3aa

    .line 1072
    sget-object v7, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "removeDomainFilterRules() - Failed to remove rule from the database"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-object/from16 v30, v4

    .end local v4    # "values":Landroid/content/ContentValues;
    .local v30, "values":Landroid/content/ContentValues;
    const-string v4, "Failed to remove/update rule from the database."

    invoke-direct {v7, v8, v10, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v7, v9, v12

    goto :goto_402

    .line 1077
    .end local v30    # "values":Landroid/content/ContentValues;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_3aa
    move-object/from16 v30, v4

    .end local v4    # "values":Landroid/content/ContentValues;
    .restart local v30    # "values":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 1078
    .local v4, "netId":Ljava/lang/Integer;
    if-eqz v0, :cond_3b7

    .line 1079
    const-string/jumbo v7, "networkId"

    invoke-virtual {v15, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object v4, v7

    .line 1080
    :cond_3b7
    if-nez v4, :cond_3c0

    .line 1081
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, v8

    goto :goto_3c1

    .line 1080
    :cond_3c0
    const/4 v7, -0x1

    .line 1082
    :goto_3c1
    sget-object v8, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->REMOVE:Lcom/android/server/enterprise/firewall/DomainFilter$Operation;

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/DomainFilter$Operation;->ordinal()I

    move-result v8

    .line 1083
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1082
    invoke-direct {v1, v2, v13, v8, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 1084
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move/from16 v31, v0

    .end local v0    # "hasDns":Z
    .local v31, "hasDns":Z
    const-string v0, "The rule was successfuly removed/updated."

    invoke-direct {v8, v10, v7, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v8, v9, v12

    goto :goto_402

    .line 946
    .end local v15    # "ruleInDb":Landroid/content/ContentValues;
    .end local v17    # "signature":Ljava/lang/String;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v20    # "adminStatus":I
    .end local v21    # "hasRulesToDelete":Z
    .end local v22    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "adminUid":I
    .end local v24    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "hasDnsDb":Z
    .end local v27    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "signatureInDB":Ljava/lang/String;
    .end local v29    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v30    # "values":Landroid/content/ContentValues;
    .end local v31    # "hasDns":Z
    .local v4, "packageName":Ljava/lang/String;
    .local v5, "adminUid":I
    .local v6, "userId":I
    .local v7, "adminStatus":I
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3e2
    move-object/from16 v18, v4

    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v22, v8

    .line 947
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "adminUid":I
    .end local v6    # "userId":I
    .end local v7    # "adminStatus":I
    .end local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "packageName":Ljava/lang/String;
    .restart local v19    # "userId":I
    .restart local v20    # "adminStatus":I
    .restart local v22    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "adminUid":I
    :goto_3ec
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeDomainFilterRules() - Skipping rule - This rule is not in the database"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v6, "The rule is not in the database."

    invoke-direct {v0, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v0, v9, v12

    .line 951
    nop

    .line 931
    .end local v13    # "rule":Lcom/samsung/android/knox/net/firewall/DomainFilterRule;
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v22    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_402
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v5, v23

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    goto/16 :goto_12c

    .end local v19    # "userId":I
    .end local v20    # "adminStatus":I
    .end local v23    # "adminUid":I
    .restart local v5    # "adminUid":I
    .restart local v6    # "userId":I
    .restart local v7    # "adminStatus":I
    :cond_410
    move/from16 v23, v5

    move/from16 v19, v6

    move/from16 v20, v7

    .line 1090
    .end local v5    # "adminUid":I
    .end local v6    # "userId":I
    .end local v7    # "adminStatus":I
    .end local v12    # "i":I
    .restart local v19    # "userId":I
    .restart local v20    # "adminStatus":I
    .restart local v23    # "adminUid":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_442

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v0, "rulesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_422
    array-length v5, v9

    if-ge v4, v5, :cond_43f

    .line 1093
    aget-object v5, v9, v4

    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43c

    .line 1094
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_43c
    add-int/lit8 v4, v4, 0x1

    goto :goto_422

    .line 1097
    .end local v4    # "i":I
    :cond_43f
    invoke-virtual {v1, v2, v0, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 1102
    .end local v0    # "rulesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    .end local v11    # "domainsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_442
    move-object v4, v9

    .end local v9    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .local v4, "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :goto_443
    iget-object v5, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_446
    .catchall {:try_start_4e .. :try_end_446} :catchall_458

    .line 1103
    :try_start_446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    move-result v0

    if-nez v0, :cond_44f

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 1108
    :cond_44f
    monitor-exit v5
    :try_end_450
    .catchall {:try_start_446 .. :try_end_450} :catchall_455

    .line 1109
    :try_start_450
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->maybeClearCaptivePortalHosts()V
    :try_end_453
    .catchall {:try_start_450 .. :try_end_453} :catchall_458

    .line 1110
    monitor-exit p0

    return-object v4

    .line 1108
    :catchall_455
    move-exception v0

    :try_start_456
    monitor-exit v5
    :try_end_457
    .catchall {:try_start_456 .. :try_end_457} :catchall_455

    :try_start_457
    throw v0
    :try_end_458
    .catchall {:try_start_457 .. :try_end_458} :catchall_458

    .line 870
    .end local v4    # "returnResponse":[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .end local v19    # "userId":I
    .end local v20    # "adminStatus":I
    .end local v23    # "adminUid":I
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    :catchall_458
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterRule;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/net/firewall/FirewallResponse;"
        }
    .end annotation

    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    .local p3, "domainsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1648
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDomainRules()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 1653
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->removeDomainRules(Ljava/util/List;Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_27

    monitor-exit p0

    return-object v0

    .line 1650
    .end local p0    # "this":Lcom/android/server/enterprise/firewall/DomainFilter;
    :cond_1a
    :goto_1a
    :try_start_1a
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v3, "The domain filter on iptables api was successfully disabled."

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    .line 1647
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/firewall/DomainFilterRule;>;"
    .end local p3    # "domainsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method
