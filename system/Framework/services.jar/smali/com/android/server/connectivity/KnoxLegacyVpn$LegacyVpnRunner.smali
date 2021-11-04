.class Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxLegacyVpn_LegacyVpnRunner"


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

.field private final mProfile:Lcom/android/internal/net/KnoxVpnProfile;

.field private mServerIP:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/KnoxVpnProfile;)V
    .registers 15
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;
    .param p5, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;

    .line 2435
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 2436
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2399
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2403
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 2410
    new-instance v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)V

    iput-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2437
    iput-object p2, p1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 2439
    const/4 v1, 0x2

    const-string/jumbo v2, "mtpd"

    if-nez p4, :cond_39

    aget-object v3, p3, v1

    const-string/jumbo v4, "hybridrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 2440
    const-string v3, "charon"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    goto :goto_42

    .line 2442
    :cond_39
    const-string/jumbo v3, "racoon"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 2444
    :goto_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Daemon[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    new-array v0, v1, [[Ljava/lang/String;

    aput-object p3, v0, v4

    const/4 v1, 0x1

    aput-object p4, v0, v1

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 2448
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 2456
    iget-object v0, p1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 2458
    iput-object p5, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/KnoxVpnProfile;

    .line 2460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 2461
    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2462
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    :goto_86
    if-ge v4, v2, :cond_ae

    aget-object v3, v1, v4

    .line 2463
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 2464
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_ab

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 2465
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 2466
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_ab

    iget-object v7, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2462
    .end local v3    # "network":Landroid/net/Network;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 2471
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_ae
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2472
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2473
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2474
    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2475
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2392
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;

    .line 2392
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private bringup(Z)V
    .registers 30
    .param p1, "isKnoxProfile"    # Z

    .line 2594
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2596
    .local v2, "initFinished":Z
    const-string v0, ""

    .line 2597
    .local v0, "typeForAudit":Ljava/lang/String;
    const-string v3, ""

    .line 2598
    .local v3, "addressForAudit":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v5, v7, :cond_1e

    aget-object v5, v4, v7

    if-eqz v5, :cond_1e

    .line 2599
    aget-object v4, v4, v7

    .line 2600
    .local v4, "argumentsForAudit":[Ljava/lang/String;
    array-length v5, v4

    if-le v5, v6, :cond_1e

    .line 2601
    aget-object v0, v4, v7

    .line 2602
    aget-object v3, v4, v6

    move-object v4, v3

    move-object v3, v0

    goto :goto_20

    .line 2608
    .end local v4    # "argumentsForAudit":[Ljava/lang/String;
    :cond_1e
    move-object v4, v3

    move-object v3, v0

    .end local v0    # "typeForAudit":Ljava/lang/String;
    .local v3, "typeForAudit":Ljava/lang/String;
    .local v4, "addressForAudit":Ljava/lang/String;
    :goto_20
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2611
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v8, v0

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v8, :cond_3b

    aget-object v10, v0, v9

    .line 2612
    .local v10, "daemon":Ljava/lang/String;
    :goto_2e
    invoke-static {v10}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_38

    .line 2613
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_2e

    .line 2611
    .end local v10    # "daemon":Ljava/lang/String;
    :cond_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 2618
    :cond_3b
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/misc/vpn/state"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 2619
    .local v8, "state":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 2620
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_489

    .line 2624
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/misc/vpn/abort"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 2625
    .local v9, "abort":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 2626
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5b} :catch_491

    if-nez v0, :cond_481

    .line 2630
    const/4 v2, 0x1

    .line 2633
    const/4 v0, 0x0

    .line 2634
    .local v0, "restart":Z
    :try_start_5f
    iget-object v10, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v11, v10
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_47d

    move v12, v0

    const/4 v0, 0x0

    .end local v0    # "restart":Z
    .local v12, "restart":Z
    :goto_64
    if-ge v0, v11, :cond_74

    :try_start_66
    aget-object v13, v10, v0

    .line 2635
    .local v13, "arguments":[Ljava/lang/String;
    if-nez v12, :cond_6f

    if-eqz v13, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v14, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    move v14, v7

    :goto_70
    move v12, v14

    .line 2634
    .end local v13    # "arguments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 2637
    :cond_74
    if-nez v12, :cond_ae

    .line 2638
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1700(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    .line 2640
    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x0

    .line 2641
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v17, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connecting to VPN network to server address "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from type "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 2640
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_ad} :catch_491

    .line 2648
    return-void

    .line 2650
    :cond_ae
    :try_start_ae
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v11, "execute"

    invoke-virtual {v0, v10, v11}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2653
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_b9
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    if-ge v10, v0, :cond_1c5

    .line 2654
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v10

    move-object v13, v0

    .line 2655
    .restart local v13    # "arguments":[Ljava/lang/String;
    if-nez v13, :cond_c9

    .line 2656
    move/from16 v20, v2

    goto/16 :goto_1b1

    .line 2660
    :cond_c9
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v10

    move-object v14, v0

    .line 2661
    .local v14, "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_d4} :catch_47d

    if-eqz v0, :cond_111

    :try_start_d6
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 2662
    const/4 v15, 0x0

    .line 2663
    .local v15, "integrityTestPassed":Z
    const/16 v16, 0x0

    .line 2665
    .local v16, "tryCount":I
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    monitor-enter v6
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e2} :catch_491

    .line 2666
    :try_start_e2
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string/jumbo v11, "security manager ready. Doing the integrity test"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->testStrongSwanIntegrity()Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    move v15, v0

    .line 2668
    monitor-exit v6
    :try_end_f2
    .catchall {:try_start_e2 .. :try_end_f2} :catchall_10e

    .line 2670
    if-eqz v15, :cond_fd

    .line 2674
    :try_start_f4
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string/jumbo v6, "strongSwan passed the integrity test."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_111

    .line 2671
    :cond_fd
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string/jumbo v6, "strongSwan failed the integrity test."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v6, "strongSwan integrity test failed."

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "initFinished":Z
    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_10e} :catch_491

    .line 2668
    .restart local v2    # "initFinished":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catchall_10e
    move-exception v0

    :try_start_10f
    monitor-exit v6
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    .end local v2    # "initFinished":Z
    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    :try_start_110
    throw v0
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_111} :catch_491

    .line 2677
    .end local v15    # "integrityTestPassed":Z
    .end local v16    # "tryCount":I
    .restart local v2    # "initFinished":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_111
    :goto_111
    :try_start_111
    invoke-static {v14}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2680
    :goto_114
    invoke-static {v14}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_118} :catch_47d

    if-nez v0, :cond_11e

    .line 2681
    :try_start_11a
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_491

    goto :goto_114

    .line 2685
    :cond_11e
    :try_start_11e
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    aput-object v6, v0, v10

    .line 2686
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v14, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_12e} :catch_47d

    move-object v6, v0

    .line 2692
    .local v6, "address":Landroid/net/LocalSocketAddress;
    :goto_12f
    :try_start_12f
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v10

    invoke-virtual {v0, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_136} :catch_1b9

    .line 2693
    nop

    .line 2699
    :try_start_137
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v10

    const/16 v11, 0x1f4

    invoke-virtual {v0, v11}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2702
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v11, v0

    .line 2703
    .local v11, "out":Ljava/io/OutputStream;
    array-length v0, v13

    const/4 v15, 0x0

    :goto_14b
    if-ge v15, v0, :cond_184

    aget-object v16, v13, v15

    move-object/from16 v19, v16

    .line 2704
    .local v19, "argument":Ljava/lang/String;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v5, v19

    .end local v19    # "argument":Ljava/lang/String;
    .local v5, "argument":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 2705
    .local v7, "bytes":[B
    move/from16 v19, v0

    array-length v0, v7
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_15c} :catch_47d

    move/from16 v20, v2

    .end local v2    # "initFinished":Z
    .local v20, "initFinished":Z
    const v2, 0xffff

    if-ge v0, v2, :cond_17c

    .line 2708
    :try_start_163
    array-length v0, v7

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2709
    array-length v0, v7

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2710
    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    .line 2711
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2703
    .end local v5    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v19

    move/from16 v2, v20

    const/4 v7, 0x1

    goto :goto_14b

    .line 2706
    .restart local v5    # "argument":Ljava/lang/String;
    .restart local v7    # "bytes":[B
    :cond_17c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is too large"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 2713
    .end local v5    # "argument":Ljava/lang/String;
    .end local v7    # "bytes":[B
    .restart local v2    # "initFinished":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_184
    move/from16 v20, v2

    .end local v2    # "initFinished":Z
    .restart local v20    # "initFinished":Z
    const/16 v0, 0xff

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2714
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2715
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 2719
    const-string v0, "charon"

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b1

    .line 2721
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_1a1} :catch_479

    move-object v2, v0

    .line 2724
    .local v2, "in":Ljava/io/InputStream;
    :goto_1a2
    :try_start_1a2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a6} :catch_1ab

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1aa

    .line 2725
    goto :goto_1b1

    .line 2729
    :cond_1aa
    goto :goto_1ac

    .line 2727
    :catch_1ab
    move-exception v0

    .line 2730
    :goto_1ac
    const/4 v5, 0x1

    :try_start_1ad
    invoke-direct {v1, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_1a2

    .line 2653
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v6    # "address":Landroid/net/LocalSocketAddress;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v13    # "arguments":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    :cond_1b1
    :goto_1b1
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v20

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_b9

    .line 2694
    .end local v20    # "initFinished":Z
    .local v2, "initFinished":Z
    .restart local v6    # "address":Landroid/net/LocalSocketAddress;
    .restart local v13    # "arguments":[Ljava/lang/String;
    .restart local v14    # "daemon":Ljava/lang/String;
    :catch_1b9
    move-exception v0

    move/from16 v20, v2

    .line 2697
    .end local v2    # "initFinished":Z
    .restart local v20    # "initFinished":Z
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    move/from16 v2, v20

    const/4 v7, 0x1

    goto/16 :goto_12f

    .line 2653
    .end local v6    # "address":Landroid/net/LocalSocketAddress;
    .end local v13    # "arguments":[Ljava/lang/String;
    .end local v14    # "daemon":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .restart local v2    # "initFinished":Z
    :cond_1c5
    move/from16 v20, v2

    .line 2736
    .end local v2    # "initFinished":Z
    .end local v10    # "i":I
    .restart local v20    # "initFinished":Z
    :goto_1c7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_229

    .line 2738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1ce
    iget-object v2, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_224

    .line 2739
    iget-object v2, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2740
    .local v2, "daemon":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1fb

    invoke-static {v2}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e4

    goto :goto_1fb

    .line 2741
    :cond_1e4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is dead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v5

    .line 2744
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local v20    # "initFinished":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_1fb
    :goto_1fb
    const-string v5, "charon"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_221

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20a

    goto :goto_221

    .line 2745
    :cond_20a
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is shutdown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v5

    .line 2738
    .end local v2    # "daemon":Ljava/lang/String;
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local v20    # "initFinished":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_221
    :goto_221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ce

    .line 2749
    .end local v0    # "i":I
    :cond_224
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_1c7

    .line 2753
    :cond_229
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2754
    .local v2, "parameters":[Ljava/lang/String;
    array-length v0, v2

    const/4 v5, 0x7

    if-ne v0, v5, :cond_471

    .line 2759
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2761
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2762
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    aget-object v6, v2, v5

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLegacyAddress:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2702(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2765
    if-nez p1, :cond_282

    .line 2767
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v0, :cond_278

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_282

    .line 2768
    :cond_278
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v5, 0x2

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2774
    :cond_282
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_296

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2b3

    .line 2775
    :cond_296
    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2776
    .local v0, "dnsServers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2b3

    .line 2777
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v5, v5, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2782
    .end local v0    # "dnsServers":Ljava/lang/String;
    :cond_2b3
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_2c7

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2e4

    .line 2783
    :cond_2c7
    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "searchDomains":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e4

    .line 2785
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v5, v5, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_2e4} :catch_479

    .line 2793
    .end local v0    # "searchDomains":Ljava/lang/String;
    :cond_2e4
    :try_start_2e4
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/KnoxVpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;
    :try_end_2f2
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_2f2} :catch_2f3

    .line 2797
    goto :goto_314

    .line 2794
    :catch_2f3
    move-exception v0

    .line 2795
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2f4
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/KnoxVpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 2796
    const-string v5, "KnoxLegacyVpn_LegacyVpnRunner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get host address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/KnoxVpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_314
    if-nez p1, :cond_3b1

    .line 2803
    const/4 v0, 0x5

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_322

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    goto :goto_324

    :cond_322
    aget-object v0, v2, v0

    :goto_324
    move-object v5, v0

    .line 2804
    .local v5, "endpoint":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_329
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_329} :catch_479

    if-nez v0, :cond_3a1

    .line 2806
    :try_start_32b
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2807
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 2808
    instance-of v6, v0, Ljava/net/Inet4Address;

    const/16 v7, 0x9

    if-eqz v6, :cond_351

    .line 2809
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v13, 0x20

    invoke-direct {v11, v0, v13}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_381

    .line 2810
    :cond_351
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_36b

    .line 2811
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v13, 0x80

    invoke-direct {v11, v0, v13}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_381

    .line 2813
    :cond_36b
    const-string v6, "KnoxLegacyVpn_LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_381
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32b .. :try_end_381} :catch_382
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_381} :catch_479

    .line 2817
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_381
    goto :goto_3a1

    .line 2815
    :catch_382
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_383
    const-string v6, "KnoxLegacyVpn_LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing throw route to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3a1
    :goto_3a1
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_3b1

    .line 2821
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v6, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V

    .line 2827
    .end local v5    # "endpoint":Ljava/lang/String;
    :cond_3b1
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    monitor-enter v5
    :try_end_3b4
    .catch Ljava/lang/Exception; {:try_start_383 .. :try_end_3b4} :catch_479

    .line 2829
    :try_start_3b4
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v0, v0, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2832
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2835
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1200(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_451

    .line 2840
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v6, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1102(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2842
    .local v0, "user":I
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->prepareStatusIntent(I)V
    invoke-static {v6, v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2800(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V

    .line 2845
    if-eqz p1, :cond_3f0

    .line 2846
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentConnectForKnoxInterface()V
    invoke-static {v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2900(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    goto :goto_3f5

    .line 2850
    :cond_3f0
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentConnect()V
    invoke-static {v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$3000(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    .line 2853
    :goto_3f5
    const-string v6, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v7, "Connected!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-string v6, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v7, "add vpn rules"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    if-nez p1, :cond_417

    .line 2858
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/connectivity/VpnRules;->createVpnPostroutingChain()V

    .line 2859
    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/connectivity/VpnRules;->addTcpmssClampRule()V

    .line 2863
    .end local v0    # "user":I
    :cond_417
    monitor-exit v5
    :try_end_418
    .catchall {:try_start_3b4 .. :try_end_418} :catchall_46e

    .line 2865
    const/16 v21, 0x5

    const/16 v22, 0x5

    const/16 v23, 0x1

    .line 2866
    :try_start_41e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v24

    const-string v25, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to VPN network  to server address "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2871
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    .line 2865
    invoke-static/range {v21 .. v27}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_44d
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_44d} :catch_479

    .line 2898
    .end local v2    # "parameters":[Ljava/lang/String;
    .end local v8    # "state":Ljava/io/File;
    .end local v9    # "abort":Ljava/io/File;
    .end local v12    # "restart":Z
    move/from16 v2, v20

    goto/16 :goto_4fb

    .line 2836
    .restart local v2    # "parameters":[Ljava/lang/String;
    .restart local v8    # "state":Ljava/io/File;
    .restart local v9    # "abort":Ljava/io/File;
    .restart local v12    # "restart":Z
    :cond_451
    :try_start_451
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v7, v7, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is gone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parameters":[Ljava/lang/String;
    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v8    # "state":Ljava/io/File;
    .end local v9    # "abort":Ljava/io/File;
    .end local v12    # "restart":Z
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 2863
    .restart local v2    # "parameters":[Ljava/lang/String;
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local v8    # "state":Ljava/io/File;
    .restart local v9    # "abort":Ljava/io/File;
    .restart local v12    # "restart":Z
    .restart local v20    # "initFinished":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catchall_46e
    move-exception v0

    monitor-exit v5
    :try_end_470
    .catchall {:try_start_451 .. :try_end_470} :catchall_46e

    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    :try_start_470
    throw v0

    .line 2755
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local v20    # "initFinished":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot parse the state"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local v20    # "initFinished":Z
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0
    :try_end_479
    .catch Ljava/lang/Exception; {:try_start_470 .. :try_end_479} :catch_479

    .line 2873
    .end local v2    # "parameters":[Ljava/lang/String;
    .end local v8    # "state":Ljava/io/File;
    .end local v9    # "abort":Ljava/io/File;
    .end local v12    # "restart":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local v20    # "initFinished":Z
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catch_479
    move-exception v0

    move/from16 v2, v20

    goto :goto_492

    .end local v20    # "initFinished":Z
    .local v2, "initFinished":Z
    :catch_47d
    move-exception v0

    move/from16 v20, v2

    .end local v2    # "initFinished":Z
    .restart local v20    # "initFinished":Z
    goto :goto_492

    .line 2627
    .end local v20    # "initFinished":Z
    .restart local v2    # "initFinished":Z
    .restart local v8    # "state":Ljava/io/File;
    .restart local v9    # "abort":Ljava/io/File;
    :cond_481
    :try_start_481
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot delete the abort"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "initFinished":Z
    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0

    .line 2621
    .end local v9    # "abort":Ljava/io/File;
    .restart local v2    # "initFinished":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :cond_489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot delete the state"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "initFinished":Z
    .end local v3    # "typeForAudit":Ljava/lang/String;
    .end local v4    # "addressForAudit":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .end local p1    # "isKnoxProfile":Z
    throw v0
    :try_end_491
    .catch Ljava/lang/Exception; {:try_start_481 .. :try_end_491} :catch_491

    .line 2873
    .end local v8    # "state":Ljava/io/File;
    .restart local v2    # "initFinished":Z
    .restart local v3    # "typeForAudit":Ljava/lang/String;
    .restart local v4    # "addressForAudit":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    .restart local p1    # "isKnoxProfile":Z
    :catch_491
    move-exception v0

    .line 2875
    .local v0, "e":Ljava/lang/Exception;
    :goto_492
    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 2876
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connecting to VPN network to server address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2875
    const-string v9, "Vpn"

    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2883
    const-string v5, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v6, "Aborting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2884
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v5}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v5

    if-nez v5, :cond_4db

    .line 2885
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v6, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v7, 0x0

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V

    .line 2887
    :cond_4db
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2888
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2889
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->exit()V

    .line 2892
    if-eqz p1, :cond_4fb

    .line 2893
    const-string v5, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v6, "Sending message to clear connecting notification due to some connection error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v5, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    const/4 v6, 0x2

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->sendBroadcastToClearConnectingNotification(I)V
    invoke-static {v5, v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$3100(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V

    .line 2899
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4fb
    :goto_4fb
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

    .line 2578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2579
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    .line 2580
    if-eqz p1, :cond_14

    const-wide/16 v2, 0xc8

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x1

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2585
    return-void

    .line 2582
    :cond_1a
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2583
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isCharonActivated()Z
    .registers 4

    .line 2930
    :try_start_0
    const-string/jumbo v0, "ipsec0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    .line 2931
    .local v0, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v1, 0x1

    return v1

    .line 2932
    .end local v0    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_d
    move-exception v0

    .line 2934
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v2, "charon Iface doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    const/4 v1, 0x0

    return v1
.end method

.method private isEgressActivated()Z
    .registers 8

    .line 2941
    const-string v0, "Egress Iface ("

    const-string v1, "KnoxLegacyVpn_LegacyVpnRunner"

    const/4 v2, 0x0

    .line 2942
    .local v2, "hasIpAddr":Z
    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$3200(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 2943
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

    .line 2944
    .local v6, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, 0x1

    .line 2945
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_1c

    .line 2946
    :cond_2a
    if-nez v2, :cond_4a

    .line 2947
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$3200(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") deactivated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_4c

    .line 2948
    return v3

    .line 2950
    :cond_4a
    const/4 v0, 0x1

    return v0

    .line 2951
    .end local v2    # "hasIpAddr":Z
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_4c
    move-exception v2

    .line 2953
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$3200(Lcom/android/server/connectivity/KnoxLegacyVpn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") doesn\'t exist"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    return v3
.end method

.method private stopLegacyDaemons()V
    .registers 6

    .line 2959
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string/jumbo v1, "stopLegacyDaemons: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_42

    .line 2961
    aget-object v1, v1, v0

    .line 2962
    .local v1, "daemon":Ljava/lang/String;
    const-string v2, "charon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_35

    .line 2965
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2967
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_20
    const/16 v3, 0x14

    if-ge v2, v3, :cond_3c

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2969
    const-wide/16 v3, 0xc8

    :try_start_2c
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    .line 2970
    :goto_2f
    goto :goto_32

    :catch_30
    move-exception v3

    goto :goto_2f

    .line 2967
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2973
    .end local v2    # "j":I
    :cond_35
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2975
    :cond_3c
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2960
    .end local v1    # "daemon":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2977
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

    .line 2907
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$400(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2908
    return-void

    .line 2911
    :cond_d
    :goto_d
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2912
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v2, "racoon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 2913
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2914
    goto :goto_3f

    .line 2915
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v1, "charon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 2916
    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->isCharonActivated()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2926
    :cond_3f
    :goto_3f
    return-void

    .line 2920
    :cond_40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_41
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_58

    .line 2921
    iget-object v2, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_55

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2922
    return-void

    .line 2920
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .end local v0    # "i":I
    :cond_58
    goto :goto_d
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 2478
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxLegacyVpn_LegacyVpnRunner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->exit()V

    .line 2482
    :cond_21
    return-void
.end method

.method public exit()V
    .registers 3

    .line 2486
    invoke-virtual {p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->interrupt()V

    .line 2487
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1700(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    .line 2489
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1600(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_15

    .line 2490
    :catch_14
    move-exception v0

    :goto_15
    nop

    .line 2491
    return-void
.end method

.method public run()V
    .registers 22

    .line 2496
    move-object/from16 v1, p0

    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v2, "Waiting"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string v2, "KnoxLegacyVpn_LegacyVpnRunner"

    monitor-enter v2

    .line 2498
    :try_start_c
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v3, "Executing"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_260

    .line 2500
    const/4 v3, 0x0

    .line 2504
    .local v3, "isKnoxVpnProfile":Z
    const-wide/16 v4, 0xc8

    const/16 v6, 0x14

    const-wide/16 v7, 0x32

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1d
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->getKnoxVpnFeature()I
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2200(Lcom/android/server/connectivity/KnoxLegacyVpn;)I

    move-result v0

    if-lt v0, v11, :cond_36

    .line 2505
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->getknoxVpnTypeForStrongswanProfile()Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2300(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2506
    const/4 v3, 0x1

    .line 2507
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->bringup(Z)V

    goto :goto_39

    .line 2509
    :cond_32
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->bringup(Z)V

    goto :goto_39

    .line 2514
    :cond_36
    invoke-direct {v1, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->bringup(Z)V

    .line 2517
    :goto_39
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 2518
    invoke-static {}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->interrupted()Z
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_3f} :catch_1a6
    .catchall {:try_start_1d .. :try_end_3f} :catchall_f0

    .line 2521
    :try_start_3f
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2522
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v12, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v12, v10}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V

    .line 2525
    :cond_4e
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v12, "delete vpn rules"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    if-nez v3, :cond_60

    .line 2528
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 2532
    :cond_60
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2534
    const-string v0, ""

    .line 2535
    .local v0, "typeForAudit":Ljava/lang/String;
    const-string v12, ""

    .line 2536
    .local v12, "addressForAudit":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v13, v13

    if-le v13, v11, :cond_81

    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v13, v13, v11

    if-eqz v13, :cond_81

    .line 2537
    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v13, v13, v11

    .line 2538
    .local v13, "argumentsForAudit":[Ljava/lang/String;
    array-length v14, v13

    if-le v14, v9, :cond_81

    .line 2539
    aget-object v11, v13, v11

    move-object v0, v11

    .line 2540
    aget-object v9, v13, v9

    move-object v12, v9

    move-object v9, v0

    goto :goto_82

    .line 2543
    .end local v13    # "argumentsForAudit":[Ljava/lang/String;
    :cond_81
    move-object v9, v0

    .end local v0    # "typeForAudit":Ljava/lang/String;
    .local v9, "typeForAudit":Ljava/lang/String;
    :goto_82
    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x1

    .line 2544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v17, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnecting from VPN network to server address "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from type "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " succeeded"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 2543
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2551
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v11, v0

    move v13, v10

    :goto_b8
    if-ge v13, v11, :cond_c2

    aget-object v14, v0, v13

    .line 2552
    .local v14, "socket":Landroid/net/LocalSocket;
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_bf
    .catchall {:try_start_3f .. :try_end_bf} :catchall_260

    .line 2551
    .end local v14    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v13, v13, 0x1

    goto :goto_b8

    .line 2557
    :cond_c2
    :try_start_c2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_260

    .line 2559
    goto :goto_c7

    .line 2558
    :catch_c6
    move-exception v0

    .line 2560
    :goto_c7
    :try_start_c7
    iget-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v8, v7

    :goto_ca
    if-ge v10, v8, :cond_258

    aget-object v0, v7, v10

    move-object v11, v0

    .line 2562
    .local v11, "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 2563
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_d9
    if-ge v13, v6, :cond_ea

    invoke-static {v11}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_df
    .catchall {:try_start_c7 .. :try_end_df} :catchall_260

    if-eqz v0, :cond_ea

    .line 2565
    :try_start_e1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e5
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_260

    .line 2566
    :goto_e4
    goto :goto_e7

    :catch_e5
    move-exception v0

    goto :goto_e4

    .line 2563
    :goto_e7
    add-int/lit8 v13, v13, 0x1

    goto :goto_d9

    .line 2570
    .end local v13    # "j":I
    :cond_ea
    :try_start_ea
    invoke-static {v11}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2560
    .end local v11    # "daemon":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_ca

    .line 2521
    .end local v9    # "typeForAudit":Ljava/lang/String;
    .end local v12    # "addressForAudit":Ljava/lang/String;
    :catchall_f0
    move-exception v0

    move-object v12, v0

    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_101

    .line 2522
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v13, v10}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V

    .line 2525
    :cond_101
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v13, "delete vpn rules"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    if-nez v3, :cond_113

    .line 2528
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 2532
    :cond_113
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2534
    const-string v0, ""

    .line 2535
    .restart local v0    # "typeForAudit":Ljava/lang/String;
    const-string v13, ""

    .line 2536
    .local v13, "addressForAudit":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v14, v14

    if-le v14, v11, :cond_134

    iget-object v14, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v14, v14, v11

    if-eqz v14, :cond_134

    .line 2537
    iget-object v14, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v14, v14, v11

    .line 2538
    .local v14, "argumentsForAudit":[Ljava/lang/String;
    array-length v15, v14

    if-le v15, v9, :cond_134

    .line 2539
    aget-object v11, v14, v11

    move-object v0, v11

    .line 2540
    aget-object v9, v14, v9

    move-object v13, v9

    move-object v9, v0

    goto :goto_135

    .line 2543
    .end local v14    # "argumentsForAudit":[Ljava/lang/String;
    :cond_134
    move-object v9, v0

    .end local v0    # "typeForAudit":Ljava/lang/String;
    .restart local v9    # "typeForAudit":Ljava/lang/String;
    :goto_135
    const/4 v14, 0x5

    const/4 v15, 0x5

    const/16 v16, 0x1

    .line 2544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnecting from VPN network to server address "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from type "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " succeeded"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    .line 2543
    invoke-static/range {v14 .. v20}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2551
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v11, v0

    move v14, v10

    :goto_16c
    if-ge v14, v11, :cond_176

    aget-object v15, v0, v14

    .line 2552
    .local v15, "socket":Landroid/net/LocalSocket;
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_173
    .catchall {:try_start_ea .. :try_end_173} :catchall_260

    .line 2551
    .end local v15    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v14, v14, 0x1

    goto :goto_16c

    .line 2557
    :cond_176
    :try_start_176
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_179
    .catch Ljava/lang/InterruptedException; {:try_start_176 .. :try_end_179} :catch_17a
    .catchall {:try_start_176 .. :try_end_179} :catchall_260

    .line 2559
    goto :goto_17b

    .line 2558
    :catch_17a
    move-exception v0

    .line 2560
    :goto_17b
    :try_start_17b
    iget-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v8, v7

    :goto_17e
    if-ge v10, v8, :cond_1a4

    aget-object v0, v7, v10

    move-object v11, v0

    .line 2562
    .restart local v11    # "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 2563
    const/4 v0, 0x0

    move v14, v0

    .local v14, "j":I
    :goto_18d
    if-ge v14, v6, :cond_19e

    invoke-static {v11}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_193
    .catchall {:try_start_17b .. :try_end_193} :catchall_260

    if-eqz v0, :cond_19e

    .line 2565
    :try_start_195
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_198} :catch_199
    .catchall {:try_start_195 .. :try_end_198} :catchall_260

    .line 2566
    :goto_198
    goto :goto_19b

    :catch_199
    move-exception v0

    goto :goto_198

    .line 2563
    :goto_19b
    add-int/lit8 v14, v14, 0x1

    goto :goto_18d

    .line 2570
    .end local v14    # "j":I
    :cond_19e
    :try_start_19e
    invoke-static {v11}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2560
    .end local v11    # "daemon":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_17e

    .line 2572
    .end local v9    # "typeForAudit":Ljava/lang/String;
    .end local v13    # "addressForAudit":Ljava/lang/String;
    :cond_1a4
    nop

    .end local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    throw v12

    .line 2519
    .restart local p0    # "this":Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;
    :catch_1a6
    move-exception v0

    .line 2521
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 2522
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v12, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->setupIpRulesForCcMode(Ljava/lang/String;Z)V
    invoke-static {v0, v12, v10}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2400(Lcom/android/server/connectivity/KnoxLegacyVpn;Ljava/lang/String;Z)V

    .line 2525
    :cond_1b6
    const-string v0, "KnoxLegacyVpn_LegacyVpnRunner"

    const-string v12, "delete vpn rules"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    if-nez v3, :cond_1c8

    .line 2528
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mVpnRules:Lcom/android/server/connectivity/VpnRules;
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$2500(Lcom/android/server/connectivity/KnoxLegacyVpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 2532
    :cond_1c8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2534
    const-string v0, ""

    .line 2535
    .restart local v0    # "typeForAudit":Ljava/lang/String;
    const-string v12, ""

    .line 2536
    .restart local v12    # "addressForAudit":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v13, v13

    if-le v13, v11, :cond_1e9

    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v13, v13, v11

    if-eqz v13, :cond_1e9

    .line 2537
    iget-object v13, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v13, v13, v11

    .line 2538
    .local v13, "argumentsForAudit":[Ljava/lang/String;
    array-length v14, v13

    if-le v14, v9, :cond_1e9

    .line 2539
    aget-object v11, v13, v11

    move-object v0, v11

    .line 2540
    aget-object v9, v13, v9

    move-object v12, v9

    move-object v9, v0

    goto :goto_1ea

    .line 2543
    .end local v13    # "argumentsForAudit":[Ljava/lang/String;
    :cond_1e9
    move-object v9, v0

    .end local v0    # "typeForAudit":Ljava/lang/String;
    .restart local v9    # "typeForAudit":Ljava/lang/String;
    :goto_1ea
    const/4 v13, 0x5

    const/4 v14, 0x5

    const/4 v15, 0x1

    .line 2544
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    const-string v17, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnecting from VPN network to server address "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from type "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " succeeded"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 2543
    invoke-static/range {v13 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2551
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v11, v0

    move v13, v10

    :goto_220
    if-ge v13, v11, :cond_22a

    aget-object v14, v0, v13

    .line 2552
    .local v14, "socket":Landroid/net/LocalSocket;
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_227
    .catchall {:try_start_19e .. :try_end_227} :catchall_260

    .line 2551
    .end local v14    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v13, v13, 0x1

    goto :goto_220

    .line 2557
    :cond_22a
    :try_start_22a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22d
    .catch Ljava/lang/InterruptedException; {:try_start_22a .. :try_end_22d} :catch_22e
    .catchall {:try_start_22a .. :try_end_22d} :catchall_260

    .line 2559
    goto :goto_22f

    .line 2558
    :catch_22e
    move-exception v0

    .line 2560
    :goto_22f
    :try_start_22f
    iget-object v7, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v8, v7

    :goto_232
    if-ge v10, v8, :cond_258

    aget-object v0, v7, v10

    move-object v11, v0

    .line 2562
    .restart local v11    # "daemon":Ljava/lang/String;
    const-string v0, "charon"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_252

    .line 2563
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_241
    if-ge v13, v6, :cond_252

    invoke-static {v11}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0
    :try_end_247
    .catchall {:try_start_22f .. :try_end_247} :catchall_260

    if-eqz v0, :cond_252

    .line 2565
    :try_start_249
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24c} :catch_24d
    .catchall {:try_start_249 .. :try_end_24c} :catchall_260

    .line 2566
    :goto_24c
    goto :goto_24f

    :catch_24d
    move-exception v0

    goto :goto_24c

    .line 2563
    :goto_24f
    add-int/lit8 v13, v13, 0x1

    goto :goto_241

    .line 2570
    .end local v13    # "j":I
    :cond_252
    :try_start_252
    invoke-static {v11}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2560
    .end local v11    # "daemon":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_232

    .line 2572
    .end local v9    # "typeForAudit":Ljava/lang/String;
    .end local v12    # "addressForAudit":Ljava/lang/String;
    :cond_258
    nop

    .line 2573
    iget-object v0, v1, Lcom/android/server/connectivity/KnoxLegacyVpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->agentDisconnect()V
    invoke-static {v0}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$1700(Lcom/android/server/connectivity/KnoxLegacyVpn;)V

    .line 2574
    .end local v3    # "isKnoxVpnProfile":Z
    monitor-exit v2

    .line 2575
    return-void

    .line 2574
    :catchall_260
    move-exception v0

    monitor-exit v2
    :try_end_262
    .catchall {:try_start_252 .. :try_end_262} :catchall_260

    throw v0
.end method
