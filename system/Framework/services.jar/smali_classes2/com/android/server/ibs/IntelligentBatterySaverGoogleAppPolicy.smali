.class Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverGoogleAppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;,
        Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_GOOGLE_NET_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_google_net_state"

.field private static final DEBUG:Z = true

.field public static final FREEZE_APP:I = 0x2

.field private static final MSG_DISABLE_GOOGLEAPPS_NETWORK:I = 0x1

.field private static final MSG_ENABLE_GOOGLEAPPS_NETWORK:I = 0x2

.field private static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field public static final RESTRICT_NETWORK:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAppsInfoArray:[[I

.field private final mGoogleAppsList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLockGoogleAppsList:Ljava/lang/Object;

.field private mNetworkLimited:Z

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

.field private mVendingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "IntelligentBatterySaverGoogleAppPolicy"

    sput-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ht"    # Landroid/os/HandlerThread;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mVendingUid:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 23
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 23
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    return-void
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 101
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_f

    .line 103
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 105
    :cond_f
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private setGoogleAppsNetworkAllow(Z)V
    .registers 7
    .param p1, "allow"    # Z

    .line 147
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGoogleAppsNetworkAllowallow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1e

    .line 149
    return-void

    .line 150
    :cond_1e
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_2a

    .line 151
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    const-string v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 156
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    if-ge v1, v0, :cond_5f

    .line 157
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 158
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 159
    .local v3, "action":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5c

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5c

    .line 160
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 161
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5c} :catch_78
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_5c} :catch_60

    .line 156
    .end local v2    # "uid":I
    .end local v3    # "action":I
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_5f
    goto :goto_8f

    .line 175
    :catch_60
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 173
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_78
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8f
    nop

    .line 178
    :goto_90
    return-void
.end method


# virtual methods
.method public addPackageNameGoogleAppsList(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 115
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageNameGoogleAppsList pkg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_22
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_5e

    .line 119
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_28
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_36} :catch_37
    .catchall {:try_start_28 .. :try_end_36} :catchall_5e

    .line 123
    goto :goto_5c

    .line 120
    :catch_37
    move-exception v2

    .line 121
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_38
    sget-object v3, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5c
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_38 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public clearAllGoogleAppsList()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mLockGoogleAppsList:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 181
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v0, "IntelligentBatterySaverGoogleAppPolicy "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM GoogleApps uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCPM GoogleApps stats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mGoogleAppsList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 187
    .end local v0    # "i":I
    :cond_5b
    return-void
.end method

.method public forceApplyUpdatedSCPMPolicy()V
    .registers 4

    .line 128
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceApplyUpdatedSCPMPolicy mNetworkLimited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 132
    :cond_21
    return-void
.end method

.method public init()V
    .registers 3

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->addPackageNameGoogleAppsList(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyReceiver;

    .line 53
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    .line 54
    return-void
.end method

.method public setGoogAppNetworkForceReset()V
    .registers 4

    .line 135
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGoogAppNetworkForceReset mNetworkLimited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_25

    .line 137
    sget-object v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->TAG:Ljava/lang/String;

    const-string v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 140
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    if-eqz v0, :cond_2d

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    .line 143
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->clearAllGoogleAppsList()V

    .line 144
    return-void
.end method
