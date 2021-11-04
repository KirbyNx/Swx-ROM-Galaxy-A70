.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private ipAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mArguments:[[Ljava/lang/String;

.field private mBringupStartTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mServerIP:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private final mThetheringChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 15
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 3097
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3098
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 3033
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3037
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 3038
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3044
    new-instance v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3064
    new-instance v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mThetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 3099
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 3101
    const/4 v1, 0x2

    const-string/jumbo v2, "mtpd"

    if-nez p4, :cond_40

    aget-object v3, p3, v1

    const-string/jumbo v4, "hybridrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 3102
    const-string v3, "charon"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    goto :goto_49

    .line 3104
    :cond_40
    const-string/jumbo v3, "racoon"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 3106
    :goto_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Daemon[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    new-array v0, v1, [[Ljava/lang/String;

    aput-object p3, v0, v4

    const/4 v1, 0x1

    aput-object p4, v0, v1

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 3110
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 3118
    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 3120
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 3122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 3123
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 3124
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    :goto_8d
    if-ge v4, v2, :cond_b5

    aget-object v3, v1, v4

    .line 3125
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 3126
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_b2

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 3127
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 3128
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_b2

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3124
    .end local v3    # "network":Landroid/net/Network;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 3133
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_b5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3134
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3135
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3138
    .local v1, "thetheringFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3139
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mThetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3141
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 3026
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 3026
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 3026
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .param p1, "x1"    # Ljava/util/List;

    .line 3026
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    return-object p1
.end method

.method private bringup(Z)V
    .registers 29
    .param p1, "isKnoxProfile"    # Z

    .line 3329
    move-object/from16 v1, p0

    const-string v0, ""

    .line 3330
    .local v0, "typeForAudit":Ljava/lang/String;
    const-string v2, ""

    .line 3332
    .local v2, "addressForAudit":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v4, v6, :cond_1d

    aget-object v4, v3, v6

    if-eqz v4, :cond_1d

    .line 3333
    aget-object v3, v3, v6

    .line 3334
    .local v3, "argumentsForAudit":[Ljava/lang/String;
    array-length v4, v3

    if-le v4, v5, :cond_1d

    .line 3335
    aget-object v0, v3, v6

    .line 3336
    aget-object v2, v3, v5

    move-object v3, v2

    move-object v2, v0

    goto :goto_1f

    .line 3344
    .end local v3    # "argumentsForAudit":[Ljava/lang/String;
    :cond_1d
    move-object v3, v2

    move-object v2, v0

    .end local v0    # "typeForAudit":Ljava/lang/String;
    .local v2, "typeForAudit":Ljava/lang/String;
    .local v3, "addressForAudit":Ljava/lang/String;
    :goto_1f
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 3347
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v7, v0

    const/4 v8, 0x0

    :goto_29
    if-ge v8, v7, :cond_3a

    aget-object v9, v0, v8

    .line 3348
    .local v9, "daemon":Ljava/lang/String;
    :goto_2d
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_37

    .line 3349
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_2d

    .line 3347
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 3354
    :cond_3a
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/misc/vpn/state"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 3355
    .local v7, "state":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 3356
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_455

    .line 3360
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/misc/vpn/abort"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 3361
    .local v8, "abort":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3362
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_44d

    .line 3368
    const/4 v0, 0x0

    .line 3369
    .local v0, "restart":Z
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v10, v9

    move v11, v0

    const/4 v0, 0x0

    .end local v0    # "restart":Z
    .local v11, "restart":Z
    :goto_62
    if-ge v0, v10, :cond_72

    aget-object v12, v9, v0

    .line 3370
    .local v12, "arguments":[Ljava/lang/String;
    if-nez v11, :cond_6d

    if-eqz v12, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v13, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v13, v6

    :goto_6e
    move v11, v13

    .line 3369
    .end local v12    # "arguments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 3372
    :cond_72
    if-nez v11, :cond_ae

    .line 3373
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)V

    .line 3376
    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 3377
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to VPN network to server address "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from type "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    .line 3383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 3376
    invoke-static/range {v12 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3386
    return-void

    .line 3388
    :cond_ae
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v10, "execute"

    invoke-virtual {v0, v9, v10}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3391
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_b9
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_172

    .line 3392
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v12, v0

    .line 3393
    .restart local v12    # "arguments":[Ljava/lang/String;
    if-nez v12, :cond_c7

    .line 3394
    goto/16 :goto_163

    .line 3398
    :cond_c7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v13, v0

    .line 3399
    .local v13, "daemon":Ljava/lang/String;
    invoke-static {v13}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 3402
    :goto_cf
    invoke-static {v13}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 3403
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_cf

    .line 3407
    :cond_d9
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V

    aput-object v14, v0, v9

    .line 3408
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v14, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v13, v14}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_e9} :catch_45d

    move-object v14, v0

    .line 3414
    .local v14, "address":Landroid/net/LocalSocketAddress;
    :goto_ea
    :try_start_ea
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v9

    invoke-virtual {v0, v14}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f1} :catch_169

    .line 3415
    nop

    .line 3421
    :try_start_f2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v9

    const/16 v15, 0x1f4

    invoke-virtual {v0, v15}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 3424
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v15, v0

    .line 3425
    .local v15, "out":Ljava/io/OutputStream;
    array-length v0, v12

    const/4 v5, 0x0

    :goto_106
    if-ge v5, v0, :cond_13b

    aget-object v17, v12, v5

    move-object/from16 v18, v17

    .line 3426
    .local v18, "argument":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v10, v18

    .end local v18    # "argument":Ljava/lang/String;
    .local v10, "argument":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 3427
    .local v6, "bytes":[B
    array-length v4, v6

    move/from16 v20, v0

    const v0, 0xffff

    if-ge v4, v0, :cond_133

    .line 3430
    array-length v0, v6

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3431
    array-length v0, v6

    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3432
    invoke-virtual {v15, v6}, Ljava/io/OutputStream;->write([B)V

    .line 3433
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 3425
    .end local v6    # "bytes":[B
    .end local v10    # "argument":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v20

    const/4 v6, 0x1

    goto :goto_106

    .line 3428
    .restart local v6    # "bytes":[B
    .restart local v10    # "argument":Ljava/lang/String;
    :cond_133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is too large"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 3435
    .end local v6    # "bytes":[B
    .end local v10    # "argument":Ljava/lang/String;
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_13b
    const/16 v0, 0xff

    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3436
    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write(I)V

    .line 3440
    const-string v0, "charon"

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_163

    .line 3442
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_153} :catch_45d

    move-object v4, v0

    .line 3445
    .local v4, "in":Ljava/io/InputStream;
    :goto_154
    :try_start_154
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_158} :catch_15d

    const/4 v5, -0x1

    if-ne v0, v5, :cond_15c

    .line 3446
    goto :goto_163

    .line 3450
    :cond_15c
    goto :goto_15e

    .line 3448
    :catch_15d
    move-exception v0

    .line 3451
    :goto_15e
    const/4 v5, 0x1

    :try_start_15f
    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_154

    .line 3391
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v12    # "arguments":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/LocalSocketAddress;
    .end local v15    # "out":Ljava/io/OutputStream;
    :cond_163
    :goto_163
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_b9

    .line 3416
    .restart local v12    # "arguments":[Ljava/lang/String;
    .restart local v13    # "daemon":Ljava/lang/String;
    .restart local v14    # "address":Landroid/net/LocalSocketAddress;
    :catch_169
    move-exception v0

    .line 3419
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_ea

    .line 3458
    .end local v9    # "i":I
    .end local v12    # "arguments":[Ljava/lang/String;
    .end local v13    # "daemon":Ljava/lang/String;
    .end local v14    # "address":Landroid/net/LocalSocketAddress;
    :cond_172
    :goto_172
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d4

    .line 3460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_179
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1cf

    .line 3461
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 3462
    .local v4, "daemon":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1a6

    invoke-static {v4}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18f

    goto :goto_1a6

    .line 3463
    :cond_18f
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is dead"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v5

    .line 3466
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_1a6
    :goto_1a6
    const-string v5, "charon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cc

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1b5

    goto :goto_1cc

    .line 3467
    :cond_1b5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is shutdown"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v5

    .line 3460
    .end local v4    # "daemon":Ljava/lang/String;
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_1cc
    :goto_1cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 3471
    .end local v0    # "i":I
    :cond_1cf
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_172

    .line 3475
    :cond_1d4
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v4, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3476
    .local v4, "parameters":[Ljava/lang/String;
    array-length v0, v4

    const/4 v5, 0x7

    if-ne v0, v5, :cond_445

    .line 3481
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 3483
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 3485
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    aget-object v6, v4, v5

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    # setter for: Lcom/android/server/connectivity/Vpn;->mLegacyAddress:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/connectivity/Vpn;->access$2602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 3488
    if-nez p1, :cond_22d

    .line 3490
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v0, :cond_223

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22d

    .line 3491
    :cond_223
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x2

    aget-object v6, v4, v5

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 3497
    :cond_22d
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_241

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_25e

    .line 3498
    :cond_241
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3499
    .local v0, "dnsServers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25e

    .line 3500
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 3505
    .end local v0    # "dnsServers":Ljava/lang/String;
    :cond_25e
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_272

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28f

    .line 3506
    :cond_272
    const/4 v0, 0x4

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3507
    .local v0, "searchDomains":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28f

    .line 3508
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 3513
    .end local v0    # "searchDomains":Ljava/lang/String;
    :cond_28f
    if-nez p1, :cond_32a

    .line 3515
    const/4 v0, 0x5

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29d

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    goto :goto_29f

    :cond_29d
    aget-object v0, v4, v0

    :goto_29f
    move-object v5, v0

    .line 3516
    .local v5, "endpoint":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_2a4} :catch_45d

    if-nez v0, :cond_31c

    .line 3518
    :try_start_2a6
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3519
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 3520
    instance-of v6, v0, Ljava/net/Inet4Address;

    const/16 v9, 0x9

    if-eqz v6, :cond_2cc

    .line 3521
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v12, Landroid/net/IpPrefix;

    const/16 v13, 0x20

    invoke-direct {v12, v0, v13}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2fc

    .line 3522
    :cond_2cc
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2e6

    .line 3523
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v12, Landroid/net/IpPrefix;

    const/16 v13, 0x80

    invoke-direct {v12, v0, v13}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2fc

    .line 3525
    :cond_2e6
    const-string v6, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a6 .. :try_end_2fc} :catch_2fd
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2fc} :catch_45d

    .line 3529
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_2fc
    goto :goto_31c

    .line 3527
    :catch_2fd
    move-exception v0

    .line 3528
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2fe
    const-string v6, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing throw route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_31c
    :goto_31c
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_32a

    .line 3533
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v9, 0x1

    # invokes: Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v6, v9}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 3539
    .end local v5    # "endpoint":Ljava/lang/String;
    :cond_32a
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_32d} :catch_45d

    .line 3541
    :try_start_32d
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 3544
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 3547
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v6}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_425

    .line 3552
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 3553
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->prepareStatusIntent()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)V

    .line 3556
    if-eqz p1, :cond_360

    .line 3557
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnectForKnoxInterface()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_365

    .line 3561
    :cond_360
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)V

    .line 3564
    :goto_365
    const-string v0, "LegacyVpnRunner"

    const-string v6, "Connected!"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    if-nez p1, :cond_38c

    .line 3568
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->showNotification()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)V

    .line 3569
    const-string v0, "LegacyVpnRunner"

    const-string v6, "add vpn rules"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->createVpnPostroutingChain()V

    .line 3571
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->addTcpmssClampRule()V

    .line 3575
    :cond_38c
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isWifiApMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3eb

    .line 3576
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-nez v0, :cond_3a3

    .line 3577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3579
    :cond_3a3
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 3580
    .local v6, "addr":Landroid/net/LinkAddress;
    const-string v9, "LegacyVpnRunner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addVpnRuleForTethering"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 3582
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3583
    nop

    .end local v6    # "addr":Landroid/net/LinkAddress;
    goto :goto_3ad

    .line 3586
    :cond_3eb
    monitor-exit v5
    :try_end_3ec
    .catchall {:try_start_32d .. :try_end_3ec} :catchall_442

    .line 3590
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x1

    .line 3591
    :try_start_3f2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to VPN network  to server address "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    .line 3597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 3590
    invoke-static/range {v19 .. v26}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_423
    .catch Ljava/lang/Exception; {:try_start_3f2 .. :try_end_423} :catch_45d

    .line 3629
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v7    # "state":Ljava/io/File;
    .end local v8    # "abort":Ljava/io/File;
    .end local v11    # "restart":Z
    goto/16 :goto_4c7

    .line 3548
    .restart local v4    # "parameters":[Ljava/lang/String;
    .restart local v7    # "state":Ljava/io/File;
    .restart local v8    # "abort":Ljava/io/File;
    .restart local v11    # "restart":Z
    :cond_425
    :try_start_425
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is gone"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v7    # "state":Ljava/io/File;
    .end local v8    # "abort":Ljava/io/File;
    .end local v11    # "restart":Z
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 3586
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local v4    # "parameters":[Ljava/lang/String;
    .restart local v7    # "state":Ljava/io/File;
    .restart local v8    # "abort":Ljava/io/File;
    .restart local v11    # "restart":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catchall_442
    move-exception v0

    monitor-exit v5
    :try_end_444
    .catchall {:try_start_425 .. :try_end_444} :catchall_442

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    :try_start_444
    throw v0

    .line 3477
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot parse the state"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 3363
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v11    # "restart":Z
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_44d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot delete the abort"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 3357
    .end local v8    # "abort":Ljava/io/File;
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_455
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot delete the state"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "typeForAudit":Ljava/lang/String;
    .end local v3    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0
    :try_end_45d
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_45d} :catch_45d

    .line 3600
    .end local v7    # "state":Ljava/io/File;
    .restart local v2    # "typeForAudit":Ljava/lang/String;
    .restart local v3    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catch_45d
    move-exception v0

    .line 3601
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Aborting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3604
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 3605
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to VPN network to server address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 3604
    const-string v10, "Vpn"

    const-string v12, ""

    invoke-static/range {v6 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3615
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v4, v4, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v4, :cond_4a7

    .line 3616
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 3618
    :cond_4a7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 3619
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 3623
    if-eqz p1, :cond_4c7

    .line 3624
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Sending message to clear connecting notification due to some connection error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v5, 0x2

    # invokes: Lcom/android/server/connectivity/Vpn;->sendBroadcastToClearConnectingNotification(I)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;I)V

    .line 3630
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4c7
    :goto_4c7
    return-void
.end method

.method private checkInterruptAndDelay(Z)V
    .registers 8
    .param p1, "sleepLonger"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3314
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 3315
    if-eqz p1, :cond_14

    const-wide/16 v2, 0xc8

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x1

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3320
    return-void

    .line 3317
    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3318
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isCharonActivated()Z
    .registers 4

    .line 3662
    :try_start_0
    const-string/jumbo v0, "ipsec0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 3663
    .local v0, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v1, 0x1

    return v1

    .line 3664
    .end local v0    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_d
    move-exception v0

    .line 3666
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnRunner"

    const-string v2, "charon Iface doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    const/4 v1, 0x0

    return v1
.end method

.method private isEgressActivated()Z
    .registers 8

    .line 3710
    const-string v0, "Egress Iface ("

    const-string v1, "LegacyVpnRunner"

    const/4 v2, 0x0

    .line 3711
    .local v2, "hasIpAddr":Z
    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 3712
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 3713
    .local v6, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, 0x1

    .line 3714
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_1c

    .line 3715
    :cond_2a
    if-nez v2, :cond_4a

    .line 3716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") deactivated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_4c

    .line 3717
    return v3

    .line 3719
    :cond_4a
    const/4 v0, 0x1

    return v0

    .line 3720
    .end local v2    # "hasIpAddr":Z
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_4c
    move-exception v2

    .line 3722
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") doesn\'t exist"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    return v3
.end method

.method private isWifiApMode(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 3695
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3697
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->semGetWifiApState()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_14

    .line 3698
    .local v1, "actualState":I
    const/16 v2, 0xd

    if-ne v1, v2, :cond_13

    .line 3699
    const/4 v2, 0x1

    return v2

    .line 3704
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v1    # "actualState":I
    :cond_13
    goto :goto_1f

    .line 3701
    :catch_14
    move-exception v0

    .line 3702
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Failed to get hotspot status, assume hotpost disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method private stopLegacyDaemons()V
    .registers 6

    .line 3672
    const-string v0, "LegacyVpnRunner"

    const-string/jumbo v1, "stopLegacyDaemons: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_42

    .line 3674
    aget-object v1, v1, v0

    .line 3675
    .local v1, "daemon":Ljava/lang/String;
    const-string v2, "charon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_35

    .line 3678
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3680
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3c

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 3682
    const-wide/16 v3, 0xc8

    :try_start_2c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 3683
    :goto_2f
    goto :goto_32

    :catch_30
    move-exception v3

    goto :goto_2f

    .line 3680
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 3686
    .end local v2    # "j":I
    :cond_35
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3688
    :cond_3c
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 3673
    .end local v1    # "daemon":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3690
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method private waitForDaemonsToStop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3638
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3639
    return-void

    .line 3642
    :cond_d
    :goto_d
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 3644
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v2, "racoon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 3645
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    .line 3646
    goto :goto_3f

    .line 3647
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v1, "charon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 3648
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isCharonActivated()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    .line 3658
    :cond_3f
    :goto_3f
    return-void

    .line 3652
    :cond_40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_58

    .line 3653
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_55

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 3654
    return-void

    .line 3652
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .end local v0    # "i":I
    :cond_58
    goto :goto_d
.end method


# virtual methods
.method public exitIfOuterInterfaceIs(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 3150
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyVpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 3154
    :cond_21
    return-void
.end method

.method public exitVpnRunner()V
    .registers 3

    .line 3160
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 3164
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)V

    .line 3166
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3167
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mThetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_20

    .line 3168
    :catch_1f
    move-exception v0

    :goto_20
    nop

    .line 3169
    return-void
.end method

.method public run()V
    .registers 27

    .line 3174
    move-object/from16 v1, p0

    const-string v0, "LegacyVpnRunner"

    const-string v2, "Waiting"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    const-string v2, "LegacyVpnRunner"

    monitor-enter v2

    .line 3176
    :try_start_c
    const-string v0, "LegacyVpnRunner"

    const-string v3, "Executing"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3e1

    .line 3182
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_16
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 3183
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 3184
    .local v0, "names":[Ljava/net/InetAddress;
    array-length v6, v0

    move v7, v4

    :goto_26
    if-ge v7, v6, :cond_59

    aget-object v8, v0, v7

    .line 3185
    .local v8, "address":Ljava/net/InetAddress;
    const-string v9, "LegacyVpnRunner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolved address: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_4c

    .line 3187
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 3188
    goto :goto_59

    .line 3189
    :cond_4c
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_56

    .line 3190
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 3184
    .end local v8    # "address":Ljava/net/InetAddress;
    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 3193
    :cond_59
    :goto_59
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resolved mServerIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v6, v6, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v6, :pswitch_data_3e4

    goto :goto_a6

    .line 3205
    :pswitch_7a
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v4

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    aput-object v7, v6, v5

    .line 3206
    goto :goto_a6

    .line 3212
    :pswitch_83
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v4

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    aput-object v7, v6, v4

    goto :goto_a6

    .line 3201
    :pswitch_8c
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v4

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    aput-object v7, v6, v5

    .line 3202
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 3203
    goto :goto_a6

    .line 3197
    :pswitch_9d
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v5

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    aput-object v7, v6, v3
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_a5} :catch_a7
    .catchall {:try_start_16 .. :try_end_a5} :catchall_3e1

    .line 3198
    nop

    .line 3218
    .end local v0    # "names":[Ljava/net/InetAddress;
    :goto_a6
    goto :goto_d8

    .line 3215
    :catch_a7
    move-exception v0

    .line 3216
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a8
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get host address e :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get host address:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_a8 .. :try_end_d8} :catchall_3e1

    .line 3222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d8
    const/4 v6, 0x0

    .line 3226
    .local v6, "isKnoxVpnProfile":Z
    const-wide/16 v7, 0xc8

    const/16 v9, 0x14

    const-wide/16 v10, 0x32

    const/4 v12, 0x0

    :try_start_e0
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)I

    move-result v0

    if-lt v0, v5, :cond_f9

    .line 3227
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getknoxVpnTypeForStrongswanProfile()Z
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 3228
    const/4 v6, 0x1

    .line 3229
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V

    goto :goto_fc

    .line 3231
    :cond_f5
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V

    goto :goto_fc

    .line 3235
    :cond_f9
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V

    .line 3238
    :goto_fc
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 3239
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_102} :catch_2e0
    .catchall {:try_start_e0 .. :try_end_102} :catchall_1ed

    .line 3243
    :try_start_102
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_10f

    .line 3244
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v13, v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 3247
    :cond_10f
    if-nez v6, :cond_121

    .line 3248
    const-string v0, "LegacyVpnRunner"

    const-string v13, "delete vpn rules"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3252
    :cond_121
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v0, :cond_15a

    .line 3253
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_158

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3254
    .local v13, "ipAddr":Ljava/lang/String;
    const-string v14, "LegacyVpnRunner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteTetheringRule"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 3256
    .end local v13    # "ipAddr":Ljava/lang/String;
    const/4 v4, 0x0

    goto :goto_12b

    .line 3257
    :cond_158
    iput-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3260
    :cond_15a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 3264
    const-string v0, ""

    .line 3265
    .local v0, "typeForAudit":Ljava/lang/String;
    const-string v4, ""

    .line 3266
    .local v4, "addressForAudit":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v12, v12

    if-le v12, v5, :cond_179

    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v12, v12, v5

    if-eqz v12, :cond_179

    .line 3267
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v12, v12, v5

    .line 3268
    .local v12, "argumentsForAudit":[Ljava/lang/String;
    array-length v13, v12

    if-le v13, v3, :cond_179

    .line 3269
    aget-object v5, v12, v5

    move-object v0, v5

    .line 3270
    aget-object v3, v12, v3

    move-object v4, v3

    .line 3273
    .end local v12    # "argumentsForAudit":[Ljava/lang/String;
    :cond_179
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    .line 3274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    .line 3280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    .line 3273
    invoke-static/range {v16 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3283
    .end local v0    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1b4
    if-ge v4, v3, :cond_1be

    aget-object v5, v0, v4

    .line 3284
    .local v5, "socket":Landroid/net/LocalSocket;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1bb
    .catchall {:try_start_102 .. :try_end_1bb} :catchall_3e1

    .line 3283
    .end local v5    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b4

    .line 3289
    :cond_1be
    :try_start_1be
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c1
    .catch Ljava/lang/InterruptedException; {:try_start_1be .. :try_end_1c1} :catch_1c2
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_3e1

    .line 3291
    goto :goto_1c3

    .line 3290
    :catch_1c2
    move-exception v0

    .line 3292
    :goto_1c3
    :try_start_1c3
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1c7
    if-ge v5, v4, :cond_3d4

    aget-object v0, v3, v5

    move-object v10, v0

    .line 3294
    .local v10, "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 3295
    const/4 v0, 0x0

    move v11, v0

    .local v11, "j":I
    :goto_1d6
    if-ge v11, v9, :cond_1e7

    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_1dc
    .catchall {:try_start_1c3 .. :try_end_1dc} :catchall_3e1

    if-eqz v0, :cond_1e7

    .line 3297
    :try_start_1de
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e1} :catch_1e2
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_3e1

    .line 3298
    :goto_1e1
    goto :goto_1e4

    :catch_1e2
    move-exception v0

    goto :goto_1e1

    .line 3295
    :goto_1e4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d6

    .line 3302
    .end local v11    # "j":I
    :cond_1e7
    :try_start_1e7
    invoke-static {v10}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 3292
    .end local v10    # "daemon":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c7

    .line 3243
    :catchall_1ed
    move-exception v0

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_1fd

    .line 3244
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v13, v14}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 3247
    :cond_1fd
    if-nez v6, :cond_20f

    .line 3248
    const-string v0, "LegacyVpnRunner"

    const-string v13, "delete vpn rules"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3252
    :cond_20f
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v0, :cond_249

    .line 3253
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_219
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_247

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3254
    .restart local v13    # "ipAddr":Ljava/lang/String;
    const-string v14, "LegacyVpnRunner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteTetheringRule"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 3256
    .end local v13    # "ipAddr":Ljava/lang/String;
    const-wide/16 v7, 0xc8

    goto :goto_219

    .line 3257
    :cond_247
    iput-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3260
    :cond_249
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 3264
    const-string v0, ""

    .line 3265
    .restart local v0    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 3266
    .local v7, "addressForAudit":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v8, v8

    if-le v8, v5, :cond_268

    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v8, v5

    if-eqz v8, :cond_268

    .line 3267
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v8, v5

    .line 3268
    .local v8, "argumentsForAudit":[Ljava/lang/String;
    array-length v12, v8

    if-le v12, v3, :cond_268

    .line 3269
    aget-object v5, v8, v5

    move-object v0, v5

    .line 3270
    aget-object v3, v8, v3

    move-object v7, v3

    .line 3273
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_268
    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    .line 3274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    .line 3280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 3273
    invoke-static/range {v18 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3283
    .end local v0    # "typeForAudit":Ljava/lang/String;
    .end local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v3, v0

    const/4 v14, 0x0

    :goto_2a3
    if-ge v14, v3, :cond_2ad

    aget-object v5, v0, v14

    .line 3284
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2aa
    .catchall {:try_start_1e7 .. :try_end_2aa} :catchall_3e1

    .line 3283
    .end local v5    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a3

    .line 3289
    :cond_2ad
    :try_start_2ad
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b0
    .catch Ljava/lang/InterruptedException; {:try_start_2ad .. :try_end_2b0} :catch_2b1
    .catchall {:try_start_2ad .. :try_end_2b0} :catchall_3e1

    .line 3291
    goto :goto_2b2

    .line 3290
    :catch_2b1
    move-exception v0

    .line 3292
    :goto_2b2
    :try_start_2b2
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v3

    const/4 v7, 0x0

    :goto_2b6
    if-ge v7, v5, :cond_2de

    aget-object v0, v3, v7

    move-object v8, v0

    .line 3294
    .local v8, "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 3295
    const/4 v0, 0x0

    move v10, v0

    .local v10, "j":I
    :goto_2c5
    if-ge v10, v9, :cond_2d8

    invoke-static {v8}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_2cb
    .catchall {:try_start_2b2 .. :try_end_2cb} :catchall_3e1

    if-eqz v0, :cond_2d8

    .line 3297
    const-wide/16 v11, 0xc8

    :try_start_2cf
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2d2} :catch_2d3
    .catchall {:try_start_2cf .. :try_end_2d2} :catchall_3e1

    .line 3298
    :goto_2d2
    goto :goto_2d5

    :catch_2d3
    move-exception v0

    goto :goto_2d2

    .line 3295
    :goto_2d5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2c5

    .line 3302
    .end local v10    # "j":I
    :cond_2d8
    :try_start_2d8
    invoke-static {v8}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 3292
    .end local v8    # "daemon":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b6

    .line 3304
    :cond_2de
    nop

    .end local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    throw v4

    .line 3240
    .restart local p0    # "this":Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :catch_2e0
    move-exception v0

    .line 3243
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v0, :cond_2f0

    .line 3244
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v4, v14}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    goto :goto_2f1

    .line 3243
    :cond_2f0
    const/4 v14, 0x0

    .line 3247
    :goto_2f1
    if-nez v6, :cond_303

    .line 3248
    const-string v0, "LegacyVpnRunner"

    const-string v4, "delete vpn rules"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3252
    :cond_303
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v0, :cond_33b

    .line 3253
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_339

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3254
    .local v4, "ipAddr":Ljava/lang/String;
    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "deleteTetheringRule"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    .line 3256
    .end local v4    # "ipAddr":Ljava/lang/String;
    goto :goto_30d

    .line 3257
    :cond_339
    iput-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3260
    :cond_33b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 3264
    const-string v0, ""

    .line 3265
    .restart local v0    # "typeForAudit":Ljava/lang/String;
    const-string v4, ""

    .line 3266
    .local v4, "addressForAudit":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v7, v7

    if-le v7, v5, :cond_35a

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v7, v7, v5

    if-eqz v7, :cond_35a

    .line 3267
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v7, v7, v5

    .line 3268
    .local v7, "argumentsForAudit":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v3, :cond_35a

    .line 3269
    aget-object v5, v7, v5

    move-object v0, v5

    .line 3270
    aget-object v3, v7, v3

    move-object v4, v3

    .line 3273
    .end local v7    # "argumentsForAudit":[Ljava/lang/String;
    :cond_35a
    const/16 v18, 0x5

    const/16 v19, 0x5

    const/16 v20, 0x1

    .line 3274
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    const-string v22, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    .line 3280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    .line 3273
    invoke-static/range {v18 .. v25}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3283
    .end local v0    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v3, v0

    move v4, v14

    :goto_395
    if-ge v4, v3, :cond_39f

    aget-object v5, v0, v4

    .line 3284
    .restart local v5    # "socket":Landroid/net/LocalSocket;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_39c
    .catchall {:try_start_2d8 .. :try_end_39c} :catchall_3e1

    .line 3283
    .end local v5    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v4, v4, 0x1

    goto :goto_395

    .line 3289
    :cond_39f
    :try_start_39f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a2
    .catch Ljava/lang/InterruptedException; {:try_start_39f .. :try_end_3a2} :catch_3a3
    .catchall {:try_start_39f .. :try_end_3a2} :catchall_3e1

    .line 3291
    goto :goto_3a4

    .line 3290
    :catch_3a3
    move-exception v0

    .line 3292
    :goto_3a4
    :try_start_3a4
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v3

    :goto_3a7
    if-ge v14, v4, :cond_3d4

    aget-object v0, v3, v14

    move-object v5, v0

    .line 3294
    .local v5, "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cc

    .line 3295
    const/4 v0, 0x0

    move v7, v0

    .local v7, "j":I
    :goto_3b6
    if-ge v7, v9, :cond_3c9

    invoke-static {v5}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_3bc
    .catchall {:try_start_3a4 .. :try_end_3bc} :catchall_3e1

    if-eqz v0, :cond_3c9

    .line 3297
    const-wide/16 v10, 0xc8

    :try_start_3c0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c3
    .catch Ljava/lang/Exception; {:try_start_3c0 .. :try_end_3c3} :catch_3c4
    .catchall {:try_start_3c0 .. :try_end_3c3} :catchall_3e1

    .line 3298
    :goto_3c3
    goto :goto_3c6

    :catch_3c4
    move-exception v0

    goto :goto_3c3

    .line 3295
    :goto_3c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b6

    :cond_3c9
    const-wide/16 v10, 0xc8

    goto :goto_3ce

    .line 3294
    .end local v7    # "j":I
    :cond_3cc
    const-wide/16 v10, 0xc8

    .line 3302
    :goto_3ce
    :try_start_3ce
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 3292
    .end local v5    # "daemon":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    goto :goto_3a7

    .line 3304
    :cond_3d4
    nop

    .line 3305
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)V

    .line 3307
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification()V
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)V

    .line 3309
    .end local v6    # "isKnoxVpnProfile":Z
    monitor-exit v2

    .line 3310
    return-void

    .line 3309
    :catchall_3e1
    move-exception v0

    monitor-exit v2
    :try_end_3e3
    .catchall {:try_start_3ce .. :try_end_3e3} :catchall_3e1

    throw v0

    :pswitch_data_3e4
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_8c
        :pswitch_8c
        :pswitch_83
        :pswitch_83
        :pswitch_7a
        :pswitch_83
        :pswitch_83
        :pswitch_83
    .end packed-switch
.end method
