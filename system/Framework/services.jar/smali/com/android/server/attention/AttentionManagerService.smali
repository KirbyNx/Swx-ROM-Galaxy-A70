.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$BinderService;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;,
        Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;,
        Lcom/android/server/attention/AttentionManagerService$AttentionHandler;,
        Lcom/android/server/attention/AttentionManagerService$UserState;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheck;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;,
        Lcom/android/server/attention/AttentionManagerService$LocalService;
    }
.end annotation


# static fields
.field protected static final ATTENTION_CACHE_BUFFER_SIZE:I = 0x5

.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field static final DEFAULT_STALE_AFTER_MILLIS:J = 0x3e8L

.field private static final KEY_SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field static final KEY_STALE_AFTER_MILLIS:Ljava/lang/String; = "stale_after_millis"

.field private static final LOG_TAG:Ljava/lang/String; = "AttentionManagerService"

.field private static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field private mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/attention/AttentionManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 119
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 128
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 129
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 130
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 79
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/attention/AttentionManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 79
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 79
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p1, "x1"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 79
    sput-object p0, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 79
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 79
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private cancelAfterTimeoutLocked(J)V
    .registers 5
    .param p1, "timeout"    # J

    .line 335
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    return-void
.end method

.method private cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 5
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 720
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    if-nez p1, :cond_7

    .line 722
    :try_start_5
    monitor-exit v0

    return-void

    .line 725
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 727
    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_10

    .line 728
    monitor-exit v0

    return-void

    .line 731
    :cond_10
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;

    invoke-direct {v2, p0, p1}, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->post(Ljava/lang/Runnable;)Z

    .line 737
    # getter for: Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 738
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    # getter for: Lcom/android/server/attention/AttentionManagerService$UserState;->mUserId:I
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2200(Lcom/android/server/attention/AttentionManagerService$UserState;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 739
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .registers 5
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .param p2, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 268
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/attention/AttentionManagerService$1;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 303
    .local v0, "iAttentionCallback":Landroid/service/attention/IAttentionCallback;
    new-instance v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {v1, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Landroid/service/attention/IAttentionCallback;)V

    return-object v1
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 419
    const-string v0, "Attention Manager Service (dumpsys attention) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttentionServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v0, "Resolved component:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_7b

    .line 424
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 430
    :cond_7b
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_7e
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 432
    .local v1, "size":I
    const-string v2, "Number user states: "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 434
    if-lez v1, :cond_b0

    .line 435
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 436
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_92
    if-ge v2, v1, :cond_ad

    .line 437
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 438
    .local v3, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 439
    const-string v4, ":"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 440
    # invokes: Lcom/android/server/attention/AttentionManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    invoke-static {v3, p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1200(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 436
    .end local v3    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 443
    .end local v2    # "i":I
    :cond_ad
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 445
    .end local v1    # "size":I
    :cond_b0
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_b2
    move-exception v1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_7e .. :try_end_b4} :catchall_b2

    throw v1
.end method

.method private static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAttentionServiceSupported()Z
    .registers 2

    .line 168
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isServiceAvailable()Z
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 161
    :cond_c
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 3
    .param p1, "userId"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    return-object v0
.end method

.method private static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 381
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "serviceConfigPackage":Ljava/lang/String;
    const/high16 v1, 0x100000

    .line 385
    .local v1, "flags":I
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 386
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 387
    .local v2, "resolvedPackage":Ljava/lang/String;
    const/16 v1, 0x80

    goto :goto_1b

    .line 388
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 389
    move-object v2, v0

    .line 394
    .restart local v2    # "resolvedPackage":Ljava/lang/String;
    :goto_1b
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 397
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 398
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "AttentionManagerService"

    if-eqz v6, :cond_64

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_3a

    goto :goto_64

    .line 405
    :cond_3a
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 406
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 407
    .local v11, "permission":Ljava/lang/String;
    const-string v12, "android.permission.BIND_ATTENTION_SERVICE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 408
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 410
    :cond_4b
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 412
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    aput-object v14, v13, v8

    aput-object v12, v13, v7

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v7, v13, v9

    .line 410
    const-string v7, "Service %s should require %s permission. Found %s permission"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-object v3

    .line 399
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v11    # "permission":Ljava/lang/String;
    :cond_64
    :goto_64
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    aput-object v0, v9, v7

    const-string v5, "Service %s not found in package %s"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v3

    .line 391
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_74
    return-object v3
.end method


# virtual methods
.method cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 5
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 693
    if-eqz p1, :cond_34

    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-nez v0, :cond_7

    goto :goto_34

    .line 697
    :cond_7
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 701
    return-void

    .line 704
    :cond_10
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v0, :cond_1a

    .line 705
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 706
    return-void

    .line 710
    :cond_1a
    :try_start_1a
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 711
    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    .line 710
    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    .line 715
    goto :goto_33

    .line 712
    :catch_26
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AttentionManagerService"

    const-string v2, "Unable to cancel attention check"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 716
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_33
    return-void

    .line 694
    :cond_34
    :goto_34
    return-void
.end method

.method cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .registers 6
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 309
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v1

    .line 311
    .local v1, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    if-nez v1, :cond_b

    .line 312
    monitor-exit v0

    return-void

    .line 314
    :cond_b
    iget-object v2, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 315
    const-string v2, "AttentionManagerService"

    const-string v3, "Cannot cancel a non-current request"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v0

    return-void

    .line 318
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 319
    .end local v1    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .registers 15
    .param p1, "timeout"    # J
    .param p3, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 206
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 209
    const-string v0, "AttentionManagerService"

    const-string v2, "Trying to call checkAttention() on an unsupported device."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1

    .line 213
    :cond_12
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_20

    .line 214
    const-string v0, "AttentionManagerService"

    const-string v2, "Service is not available at this moment."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v1

    .line 219
    :cond_20
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_29

    .line 220
    return v1

    .line 223
    :cond_29
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 226
    .local v2, "now":J
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v4

    .line 230
    .local v4, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    # invokes: Lcom/android/server/attention/AttentionManagerService$UserState;->bindLocked()V
    invoke-static {v4}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$300(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 233
    iget-object v5, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    if-nez v5, :cond_40

    const/4 v5, 0x0

    goto :goto_46

    .line 234
    :cond_40
    iget-object v5, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCacheBuffer:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;

    invoke-virtual {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCacheBuffer;->getLast()Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    move-result-object v5

    :goto_46
    nop

    .line 235
    .local v5, "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    const/4 v6, 0x1

    if-eqz v5, :cond_64

    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J
    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$400(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getStaleAfterMillis()J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v7, v2, v7

    if-gez v7, :cond_64

    .line 236
    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I
    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v1

    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J
    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v7

    invoke-virtual {p3, v1, v7, v8}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 237
    monitor-exit v0

    return v6

    .line 241
    :cond_64
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v7, :cond_7a

    .line 242
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 243
    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsFulfilled:Z
    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    if-nez v7, :cond_7a

    .line 244
    :cond_78
    monitor-exit v0

    return v1

    .line 248
    :cond_7a
    invoke-direct {p0, p3, v4}, Lcom/android/server/attention/AttentionManagerService;->createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 250
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;
    :try_end_82
    .catchall {:try_start_2c .. :try_end_82} :catchall_a4

    if-eqz v7, :cond_a2

    .line 253
    :try_start_84
    invoke-direct {p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService;->cancelAfterTimeoutLocked(J)V

    .line 254
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v8, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 255
    # getter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Landroid/service/attention/IAttentionCallback;
    invoke-static {v8}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v8

    .line 254
    invoke-interface {v7, v8}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 256
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    # setter for: Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIsDispatched:Z
    invoke-static {v7, v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_97} :catch_98
    .catchall {:try_start_84 .. :try_end_97} :catchall_a4

    .line 260
    goto :goto_a2

    .line 257
    :catch_98
    move-exception v6

    .line 258
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_99
    const-string v7, "AttentionManagerService"

    const-string v8, "Cannot call into the AttentionService"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return v1

    .line 262
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_a2
    :goto_a2
    monitor-exit v0

    return v6

    .line 263
    .end local v2    # "now":J
    .end local v4    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    .end local v5    # "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method protected freeIfInactiveLocked()V
    .registers 5

    .line 326
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    return-void
.end method

.method protected getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 2

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method protected getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 10
    .param p1, "userId"    # I

    .line 350
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 351
    .local v0, "result":Lcom/android/server/attention/AttentionManagerService$UserState;
    if-nez v0, :cond_1f

    .line 352
    new-instance v7, Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/attention/AttentionManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ComponentName;)V

    move-object v0, v7

    .line 353
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    :cond_1f
    return-object v0
.end method

.method protected getStaleAfterMillis()J
    .registers 7

    .line 183
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "stale_after_millis"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 187
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_19

    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_18

    goto :goto_19

    .line 192
    :cond_18
    return-wide v0

    .line 188
    :cond_19
    :goto_19
    const-string v4, "AttentionManagerService"

    const-string v5, "Bad flag value supplied for: stale_after_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-wide v2
.end method

.method protected isServiceEnabled()Z
    .registers 4

    .line 173
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "service_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$cancelAndUnbindLocked$0$AttentionManagerService(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 4
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 731
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/attention/AttentionManagerService$UserState;->mConnection:Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 134
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_16

    .line 135
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 142
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    const-string v2, "attention"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/attention/AttentionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/attention/AttentionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 149
    return-void
.end method

.method protected peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 2

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method
