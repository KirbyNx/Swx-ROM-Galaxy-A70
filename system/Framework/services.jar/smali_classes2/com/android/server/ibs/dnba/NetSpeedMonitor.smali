.class public Lcom/android/server/ibs/dnba/NetSpeedMonitor;
.super Ljava/lang/Object;
.source "NetSpeedMonitor.java"


# static fields
.field public static final DEBUG:Z

.field public static final GAME_INFO:Ljava/lang/String; = "com.samsung.android.game.gos.GAME_INFO"

.field public static final LIMIT_SPEED_ACTION:Ljava/lang/String; = "com.android.samsung.limit.start"

.field public static final TAG:Ljava/lang/String; = "NetSpeedMonitor"

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private VPNConnected:Z

.field private WifiConnected:Z

.field private mActivityProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mEnable:Z

.field private mFgProcessMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFgUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockFgAct:Ljava/lang/Object;

.field private mManager:Landroid/app/ActivityManager;

.field public mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

.field private mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

.field private mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

.field public mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

.field public mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field private mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->VPNConnected:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    .line 127
    new-instance v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor$1;-><init>(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;-><init>(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 93
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;

    .line 98
    invoke-static {p1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    .line 99
    invoke-static {}, Lcom/android/server/ibs/dnba/NetSpeedLogger;->getInstance()Lcom/android/server/ibs/dnba/NetSpeedLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    .line 100
    new-instance v2, Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;-><init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedLogger;)V

    iput-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    .line 102
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mManager:Landroid/app/ActivityManager;

    .line 103
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetSpeedMonitor"

    invoke-direct {v1, v2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 104
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, p0, v3}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;-><init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportDynamicNetBandwidthAllocation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, "cscpolicyEnable":Z
    if-eqz v0, :cond_8b

    .line 108
    new-instance v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;-><init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;Lcom/android/server/ibs/dnba/NetSpeedAction;)V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 110
    :cond_8b
    new-instance v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;-><init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;Lcom/android/server/ibs/dnba/NetSpeedAction;)V

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    .line 114
    :try_start_98
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a1} :catch_a2

    .line 118
    goto :goto_ab

    .line 115
    :catch_a2
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException - registerProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_ab
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v2, "com.android.samsung.limit.start"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v2, "com.samsung.android.game.gos.GAME_INFO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->isVPNConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ibs/dnba/NetSpeedMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->VPNConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ibs/dnba/NetSpeedMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .param p1, "x1"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->VPNConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 61
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;

    return-object v0
.end method

.method private isProcessStateTop(II)Z
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "topList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v3, "NetSpeedMonitor"

    const-string/jumbo v4, "isProcessStateTop"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 203
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p2, :cond_6b

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_6b

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6b

    .line 204
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "process pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "process name ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x1

    return v2

    .line 207
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6b
    goto :goto_21

    .line 209
    :cond_6c
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string/jumbo v4, "isProcessStateTop return false"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x0

    return v2
.end method

.method private isVPNConnected()Z
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 312
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 314
    :cond_10
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 315
    .local v0, "VPNNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 352
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "dnba"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 353
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    .line 354
    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    if-eqz v0, :cond_25

    .line 355
    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 357
    :cond_25
    return-void

    .line 359
    :cond_26
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNBA feature enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const-string v0, "DNBA solution log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v0, "mFgUidList dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFgUidList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 367
    .local v1, "app":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    .end local v1    # "app":Ljava/lang/Integer;
    goto :goto_6d

    .line 369
    :cond_7d
    const-string/jumbo v0, "mFgProcessMap dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFgProcessMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_86 .. :try_end_a2} :catchall_b5

    .line 374
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    if-eqz v0, :cond_a9

    .line 375
    invoke-virtual {v0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->dump(Ljava/io/PrintWriter;)V

    .line 377
    :cond_a9
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->dump(Ljava/io/PrintWriter;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Lcom/android/server/ibs/dnba/NetSpeedLogger;->dumpNetSpeedLogger(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 379
    return-void

    .line 372
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public getForegroundUids()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 280
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;

    monitor-enter v2

    .line 281
    :try_start_d
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    monitor-exit v2

    .line 284
    return-object v0

    .line 283
    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public getTraffic(I)J
    .registers 6
    .param p1, "uid"    # I

    .line 342
    const-wide/16 v0, 0x0

    .line 344
    .local v0, "traf":J
    :try_start_2
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_8

    move-wide v0, v2

    .line 347
    goto :goto_9

    .line 346
    :catch_8
    move-exception v2

    .line 348
    :goto_9
    const-wide/16 v2, 0x400

    div-long v2, v0, v2

    move-wide v0, v2

    return-wide v2
.end method

.method public isWifiConnected()Z
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 321
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 323
    :cond_10
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 324
    .local v0, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method public limitBgTotalSpeed(IZ)V
    .registers 6
    .param p1, "speed"    # I
    .param p2, "allow"    # Z

    .line 288
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->WifiConnected:Z

    if-nez v0, :cond_7

    .line 289
    if-eqz p2, :cond_7

    return-void

    .line 292
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 293
    if-eqz p2, :cond_15

    iget-boolean v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    if-nez v0, :cond_15

    .line 294
    invoke-virtual {p0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->onPolicy2Active()V

    .line 295
    :cond_15
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iput-boolean v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->isSetRule:Z

    .line 298
    :cond_19
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget-object v0, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 300
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 301
    if-eqz p2, :cond_2c

    .line 302
    iput v1, v0, Landroid/os/Message;->arg2:I

    goto :goto_2f

    .line 304
    :cond_2c
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 306
    :goto_2f
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->mHandler2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;

    invoke-virtual {v1, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2$Policy2Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public onPolicy2Active()V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    if-eqz v0, :cond_a

    .line 329
    const-string/jumbo v1, "policy2 active"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->onBlocked(Ljava/lang/String;)V

    .line 330
    :cond_a
    return-void
.end method

.method public onPolicy2Deactive()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    if-eqz v0, :cond_a

    .line 333
    const-string/jumbo v1, "policy2 deactive"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->onUnblocked(Ljava/lang/String;)V

    .line 334
    :cond_a
    return-void
.end method

.method public onWhiteListChange()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onWhiteListChange()V

    .line 338
    return-void
.end method
