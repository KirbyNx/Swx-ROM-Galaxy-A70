.class public Lcom/android/server/ibs/dnba/NetSpeedPolicy;
.super Ljava/lang/Object;
.source "NetSpeedPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;,
        Lcom/android/server/ibs/dnba/NetSpeedPolicy$Jitter;,
        Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_LOWEST_NET_SPEED:I = 0x1e

.field private static final BG_MIN_NETSPEED_LIMIT_RATE:I = 0xa

.field private static final BG_NETWORK_LIMIT_RATE:I = 0x1e

.field public static final CMD_BG_NET_SPEED_DOWN_LIMIT:I = 0x3

.field public static final CMD_BG_NET_SPEED_START_LIMIT:I = 0x1

.field public static final CMD_BG_NET_SPEED_UP_LIMIT:I = 0x2

.field public static final CMD_INIT_STATUS:I = 0x0

.field public static final CMD_PREVECT_JITTER:I = -0x1

.field private static final DOWNLOADPROVIDER_COMPLETE:Ljava/lang/String; = "com.android.providers.downloads.complete"

.field private static final DOWNLOADPROVIDER_START:Ljava/lang/String; = "com.android.providers.downloads.start"

.field private static final HIGH_NET_LIMIT_RATE:I = 0x46

.field private static final HIGH_NET_SPEED:I = 0x2710

.field private static final LOW_NET_LIMIT_RATE:I = 0x1e

.field public static final MAX_LIMIT_APP_NUM:I = 0x5

.field private static final MID_NET_LIMIT_RATE:I = 0x32

.field public static final MSG_ADD_BG_SPEED_LIMIT:I = 0x12

.field public static final MSG_CHECK_APP_CHANGE:I = 0x4

.field public static final MSG_DETECTION_PERIOD:I = 0x2

.field public static final MSG_DETECTION_PERIOD_LONG:I = 0x3

.field public static final MSG_LCD_OFF:I = 0x6

.field public static final MSG_LCD_ON:I = 0x5

.field public static final MSG_NETWORK_CONNECTED:I = 0x1

.field public static final MSG_NETWORK_DISCONNECTED:I = 0xa

.field public static final MSG_REMOVE_ALL_BG_SPEED_LIMIT:I = 0x13

.field public static final MSG_REMOVE_BG_SPEED_LIMIT:I = 0x11

.field public static final MSG_VPN_CONNECTED:I = 0xb

.field public static final PERIOD_LONG_TIME_MS:I = 0x2710

.field public static final PERIOD_LONG_TIME_SEC:I = 0xa

.field public static final PERIOD_TIME_MS:I = 0xbb8

.field public static final PERIOD_TIME_SEC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NetSpeedPolicy"

.field private static final lOW_NET_SPEED:I = 0x3e8

.field private static mTimesLowTotalSpeed:I


# instance fields
.field private VPNConnected:Z

.field private WifiConnected:Z

.field public isBlocked:Z

.field public isScreenOn:Z

.field public mAvgPhySpeed:I

.field private mBGAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mBgTotalSpeed:I

.field private mCandidateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

.field private mFGAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mFgTotalSpeed:I

.field public mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

.field private mLastFGTotalSpeed:I

.field private mLastTotalTrafs:J

.field private mLimitAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

.field private mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

.field private mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

.field private mTotalSpeed:I

.field private mTotalSpeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

.field public needUpdateAvgSpeed:Z

.field public providerDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTimesLowTotalSpeed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedMonitor;Landroid/os/HandlerThread;Lcom/android/server/ibs/dnba/NetSpeedAction;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nsm"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .param p3, "ht"    # Landroid/os/HandlerThread;
    .param p4, "nsa"    # Lcom/android/server/ibs/dnba/NetSpeedAction;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->WifiConnected:Z

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isScreenOn:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    .line 148
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$1;-><init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    .line 132
    iput-object p4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    .line 133
    iput-object p2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 134
    iget-object v0, p2, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    .line 135
    invoke-static {p1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getInstance(Landroid/content/Context;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    .line 136
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;-><init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    .line 137
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getUidForPackageName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 139
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;-><init>(Lcom/android/server/ibs/dnba/NetSpeedPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "com.android.providers.downloads.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "com.android.providers.downloads.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->WifiConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Lcom/android/server/ibs/dnba/NetSpeedWhiteList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ibs/dnba/NetSpeedPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkAppNetworkStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/ibs/dnba/NetSpeedPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/ibs/dnba/NetSpeedPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 45
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->checkTotalNetworkStatus()Z

    move-result v0

    return v0
.end method

.method private checkAppNetworkStatus(Z)V
    .registers 19
    .param p1, "forceLimit"    # Z

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v2, "FgNetspeedRelease"

    invoke-virtual {v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 569
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v3, "TotalNetspeedLose"

    invoke-virtual {v1, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 570
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v4, "BGAppDownLimit"

    invoke-virtual {v1, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "cmd":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getFGAppList()Ljava/util/List;

    move-result-object v5

    .line 574
    .local v5, "fgAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getBGAppList()Ljava/util/List;

    move-result-object v6

    .line 577
    .local v6, "bgAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_288

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_30

    move/from16 v16, v1

    goto/16 :goto_28a

    .line 581
    :cond_30
    iget-object v7, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 582
    invoke-virtual {v0, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;

    move-result-object v7

    .line 583
    .local v7, "maxFGSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v0, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;

    move-result-object v8

    .line 584
    .local v8, "maxBGSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    const-string v9, "NetSpeedPolicy"

    if-nez v8, :cond_49

    .line 585
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v3, "BG app only have one app using network and the app is music app."

    invoke-virtual {v2, v9, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 588
    :cond_49
    iget-object v10, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, " speed = "

    if-eqz v10, :cond_ed

    .line 589
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 590
    .local v12, "fgApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v13, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->providerDownload:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 591
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 592
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FG App Uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  packagename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use download provider download and provider services has be limit."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAppLimit(ILjava/lang/String;)V

    .line 595
    :cond_b5
    return-void

    .line 597
    .end local v12    # "fgApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_b6
    goto :goto_5f

    .line 598
    :cond_b7
    iget-object v10, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setCurSpeed(I)V

    .line 599
    iget-object v10, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "use donload provider services download."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v8, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mDownloadProvider:Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 603
    :cond_ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getFgTotalSpeed()I

    move-result v10

    .line 604
    .local v10, "nowFGTotalSpeed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getBgTotalSpeed()I

    move-result v12

    .line 605
    .local v12, "nowBGTotalSpeed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalSpeed()I

    move-result v13

    .line 606
    .local v13, "TotalSpeed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getAvgPhySpeed()I

    move-result v14

    .line 607
    .local v14, "avgPhySpeed":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "cmd":I
    .local v16, "cmd":I
    const-string v1, " avgPhySpeed = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "maxFGSpeedApp uid = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v7}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxBGSpeedApp = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TotalSpeed = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalSpeed()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v1, "CMD_BG_NET_SPEED_START_LIMIT"

    const/16 v11, 0x1e

    if-eqz p1, :cond_173

    .line 612
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    if-le v2, v11, :cond_16f

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    mul-int/lit8 v3, v13, 0x1e

    div-int/lit8 v3, v3, 0x64

    if-le v2, v3, :cond_16f

    .line 617
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16f

    .line 618
    const/4 v2, 0x1

    .line 619
    .end local v16    # "cmd":I
    .local v2, "cmd":I
    iput-object v1, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 620
    const-string v1, "BG App consume bandwidth"

    iput-object v1, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_27d

    .line 704
    .end local v2    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_16f
    move/from16 v1, v16

    goto/16 :goto_27d

    .line 624
    :cond_173
    iget-object v15, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1a0

    .line 629
    invoke-virtual {v7}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    if-le v2, v11, :cond_279

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    if-le v2, v11, :cond_279

    .line 630
    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    mul-int/lit8 v3, v13, 0x1e

    div-int/lit8 v3, v3, 0x64

    if-le v2, v3, :cond_279

    .line 631
    const/4 v2, 0x1

    .line 632
    .end local v16    # "cmd":I
    .restart local v2    # "cmd":I
    iget-object v3, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iput-object v1, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 634
    const-string v1, "FG&BG  Apps consume netowrk bandwidth"

    iput-object v1, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_27b

    .line 641
    .end local v2    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_1a0
    const/4 v15, 0x2

    if-ge v10, v11, :cond_1b8

    .line 642
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v3, "Fg app speed is too low"

    invoke-virtual {v1, v9, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    invoke-virtual {v1, v2, v15}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 644
    const-string v1, "FG App no speed"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    .line 646
    :cond_1b7
    return-void

    .line 647
    :cond_1b8
    mul-int/lit8 v11, v14, 0xa

    div-int/lit8 v11, v11, 0x64

    if-ge v12, v11, :cond_1db

    sub-int v11, v14, v10

    div-int/lit8 v15, v14, 0x4

    if-le v11, v15, :cond_1db

    .line 648
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string/jumbo v3, "limit is lowest"

    invoke-virtual {v1, v9, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 650
    const-string v1, "Limited bg app speed too low"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->releaseAllAppsLimit(Ljava/lang/String;)V

    .line 652
    :cond_1da
    return-void

    .line 658
    :cond_1db
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v2, v10, v2

    div-int/lit8 v11, v14, 0x4

    if-le v2, v11, :cond_21d

    div-int/lit8 v2, v10, 0x2

    if-le v12, v2, :cond_21d

    sub-int v2, v14, v13

    div-int/lit8 v11, v14, 0x4

    if-ge v2, v11, :cond_21d

    .line 659
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string/jumbo v3, "limit increase"

    invoke-virtual {v2, v9, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Continue to enhance BG net bandwidth limit "

    if-eqz v2, :cond_207

    .line 662
    const/4 v1, 0x2

    .line 663
    .end local v16    # "cmd":I
    .restart local v1    # "cmd":I
    const-string v2, "CMD_BG_NET_SPEED_UP_LIMIT"

    iput-object v2, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 664
    iput-object v3, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    goto :goto_217

    .line 666
    .end local v1    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_207
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_211

    .line 667
    return-void

    .line 669
    :cond_211
    const/4 v2, 0x1

    .line 670
    .end local v16    # "cmd":I
    .restart local v2    # "cmd":I
    iput-object v1, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 671
    iput-object v3, v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    move v1, v2

    .line 673
    .end local v2    # "cmd":I
    .restart local v1    # "cmd":I
    :goto_217
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27b

    .line 677
    .end local v1    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_21d
    iget-object v1, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getMinSpeedApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;

    move-result-object v1

    .line 678
    .local v1, "minLimitApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v2, v10

    div-int/lit8 v11, v14, 0x5

    const-string v15, "CMD_BG_NET_SPEED_DOWN_LIMIT"

    if-gt v2, v11, :cond_239

    sub-int v2, v14, v13

    mul-int/lit8 v11, v14, 0x2

    div-int/lit8 v11, v11, 0x3

    if-le v2, v11, :cond_253

    :cond_239
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const/4 v11, 0x2

    invoke-virtual {v2, v4, v11}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 684
    iget-object v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string/jumbo v3, "limit discrease quickly"

    invoke-virtual {v2, v9, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x3

    .line 686
    .end local v16    # "cmd":I
    .restart local v2    # "cmd":I
    iput-object v15, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 687
    const-string v3, "Fg App speed reduced  or Total bandwidth has lots of lost"

    iput-object v3, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    move v1, v2

    goto :goto_27b

    .line 690
    .end local v2    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_253
    iget v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v4, v14, 0xa

    if-ge v2, v4, :cond_279

    sub-int v2, v14, v13

    div-int/lit8 v4, v14, 0x4

    if-le v2, v4, :cond_279

    .line 691
    const/4 v2, -0x1

    .line 692
    .end local v16    # "cmd":I
    .restart local v2    # "cmd":I
    iget-object v4, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const/4 v9, 0x2

    invoke-virtual {v4, v3, v9}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_277

    .line 693
    const/4 v2, 0x3

    .line 694
    iput-object v15, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mCommand:Ljava/lang/String;

    .line 695
    const-string v3, "Fg App speed rise little and Total bandwidth has a little lost"

    iput-object v3, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mLimitedReason:Ljava/lang/String;

    move v1, v2

    goto :goto_27b

    .line 692
    :cond_277
    move v1, v2

    goto :goto_27b

    .line 702
    .end local v1    # "minLimitApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .end local v2    # "cmd":I
    .restart local v16    # "cmd":I
    :cond_279
    move/from16 v1, v16

    .end local v16    # "cmd":I
    .local v1, "cmd":I
    :goto_27b
    iput v10, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    .line 704
    :goto_27d
    if-nez v1, :cond_281

    const/4 v2, 0x1

    goto :goto_282

    :cond_281
    const/4 v2, 0x0

    :goto_282
    iput-boolean v2, v0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->needUpdateAvgSpeed:Z

    .line 705
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->limitAppSpeed(I)V

    .line 706
    return-void

    .line 577
    .end local v7    # "maxFGSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .end local v8    # "maxBGSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .end local v10    # "nowFGTotalSpeed":I
    .end local v12    # "nowBGTotalSpeed":I
    .end local v13    # "TotalSpeed":I
    .end local v14    # "avgPhySpeed":I
    :cond_288
    move/from16 v16, v1

    .line 578
    .end local v1    # "cmd":I
    .restart local v16    # "cmd":I
    :goto_28a
    return-void
.end method

.method private checkTotalNetworkStatus()Z
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v1, "TotalNetSPeedLowest"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalSpeed()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_2c

    .line 555
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v2, "NetSpeedPolicy"

    const-string/jumbo v3, "total netSpeed is lower 30kb/s!"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 557
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 559
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 561
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method private contain(Ljava/util/List;I)Z
    .registers 6
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;I)Z"
        }
    .end annotation

    .line 397
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 398
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_18

    .line 399
    const/4 v0, 0x1

    return v0

    .line 401
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_18
    goto :goto_4

    .line 402
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private getBackgroundApps(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    .line 524
    .local p1, "foregroundUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 525
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 526
    .local v1, "runningappInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "backgroundApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    if-eqz v1, :cond_58

    .line 528
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 529
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_57

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->contain(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_57

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 530
    invoke-virtual {v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isNoNetworkUseApp(I)Z

    move-result v5

    if-nez v5, :cond_57

    .line 531
    new-instance v5, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/server/ibs/dnba/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_57
    goto :goto_19

    .line 535
    :cond_58
    return-object v2
.end method

.method private getTotalTraffic()J
    .registers 5

    .line 514
    const-wide/16 v0, 0x0

    .line 516
    .local v0, "allTraf":J
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_8

    move-wide v0, v2

    .line 518
    goto :goto_9

    .line 517
    :catch_8
    move-exception v2

    .line 519
    :goto_9
    const-wide/16 v2, 0x400

    div-long v2, v0, v2

    move-wide v0, v2

    return-wide v2
.end method

.method private saveTrafList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;)V"
        }
    .end annotation

    .line 507
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 508
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setTrafs(J)I

    .line 509
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_4

    .line 510
    :cond_1e
    return-void
.end method

.method private updateAVGPhySpeed(Z)V
    .registers 8
    .param p1, "needUpdate"    # Z

    .line 406
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v1, "AvgPhySpeedHigh"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    const-string v2, "AvgPhySpeedLow"

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->prepare(Ljava/lang/String;)V

    .line 408
    if-nez p1, :cond_11

    return-void

    .line 409
    :cond_11
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    iput v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    .line 410
    :cond_19
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    iget v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    const/4 v5, 0x5

    if-ge v0, v4, :cond_39

    .line 413
    const-string v0, "NetSpeedPolicy"

    const-string/jumbo v2, "total speed is down"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 415
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    iput v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    .line 416
    :cond_38
    return-void

    .line 417
    :cond_39
    const/4 v1, 0x2

    mul-int/2addr v3, v1

    if-le v0, v3, :cond_46

    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mJP:Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$JitterProtect;->trigger(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 418
    return-void

    .line 420
    :cond_46
    const/4 v0, 0x0

    .line 421
    .local v0, "tempTotalSpeed":I
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_53
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 424
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 426
    .end local v1    # "i":I
    :cond_6b
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    .line 427
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_83

    .line 428
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeedList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    :cond_83
    return-void
.end method

.method private updateBGAppsSpeed(I)V
    .registers 7
    .param p1, "time"    # I

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBgTotalSpeed:I

    .line 451
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_58

    .line 452
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 453
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setTrafs(J)I

    move-result v2

    div-int/2addr v2, p1

    .line 456
    .local v2, "bgRxSpeed":I
    if-nez v2, :cond_4d

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->canRemove()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/ibs/dnba/NetSpeedStatus;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 458
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 459
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 460
    const/16 v4, 0x11

    iput v4, v3, Landroid/os/Message;->what:I

    .line 461
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    .end local v3    # "msg":Landroid/os/Message;
    :cond_47
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 464
    goto :goto_55

    .line 466
    :cond_4d
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setCurSpeed(I)V

    .line 467
    iget v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBgTotalSpeed:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBgTotalSpeed:I

    .line 451
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .end local v2    # "bgRxSpeed":I
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 469
    .end local v0    # "i":I
    :cond_58
    return-void
.end method


# virtual methods
.method public checkFGBGAppChange()I
    .registers 13

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "mFgUidTmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    const-string v4, " package name = "

    const-string v5, "NetSpeedPolicy"

    if-ltz v2, :cond_7c

    .line 329
    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 330
    .local v6, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v6}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 331
    iget-object v7, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v7, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fg switch to bg, app uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_74
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 328
    .end local v6    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_79
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 340
    .end local v2    # "i":I
    :cond_7c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_81
    if-ltz v2, :cond_124

    .line 341
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 342
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-virtual {p0, v7, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getIndexOfList(Ljava/util/List;I)I

    move-result v7

    .line 343
    .local v7, "location":I
    if-ltz v7, :cond_dc

    .line 344
    iget-object v8, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 345
    .local v8, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v9, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cc

    .line 346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bg switch to fg, app uid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v9, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_cc
    iget-object v9, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 350
    invoke-virtual {p0, v8}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isLimitedApp(Lcom/android/server/ibs/dnba/NetSpeedStatus;)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 351
    invoke-virtual {v8}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v0

    .line 353
    .end local v8    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_db
    goto :goto_120

    .line 354
    :cond_dc
    iget-object v8, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-direct {p0, v8, v6}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->contain(Ljava/util/List;I)Z

    move-result v8

    if-nez v8, :cond_120

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_120

    .line 355
    iget-object v8, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    invoke-virtual {v8, v6}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_f9

    array-length v9, v8

    if-ne v9, v3, :cond_f9

    const/4 v9, 0x0

    aget-object v9, v8, v9

    goto :goto_fc

    :cond_f9
    const-string/jumbo v9, "share"

    .line 357
    .local v9, "packageName":Ljava/lang/String;
    :goto_fc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fg app list add new app uid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v10, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    new-instance v11, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-direct {v11, v6, v9}, Lcom/android/server/ibs/dnba/NetSpeedStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v6    # "uid":I
    .end local v7    # "location":I
    .end local v8    # "packageNames":[Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_120
    :goto_120
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_81

    .line 362
    .end local v2    # "i":I
    :cond_124
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_125
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, " packagename "

    if-ge v2, v3, :cond_15e

    .line 363
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 364
    .local v3, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fg app uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v3    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_125

    .line 367
    .end local v2    # "i":I
    :cond_15e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_15f
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_194

    .line 368
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 369
    .restart local v3    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bg app uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v3    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    .line 371
    .end local v2    # "i":I
    :cond_194
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 847
    const-string v0, "FgApp dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FgApp size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 850
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_25

    .line 853
    :cond_39
    const-string v0, "BgApp dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BgApp size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 856
    .restart local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_5e

    .line 858
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTotalSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvgPhySpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastFGTotalSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    const-string v0, "LimitAppList dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LimitAppList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 864
    .restart local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_dc

    .line 866
    :cond_f0
    return-void
.end method

.method public getAvgPhySpeed()I
    .registers 2

    .line 539
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mAvgPhySpeed:I

    return v0
.end method

.method public getBGAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    return-object v0
.end method

.method public getBgTotalSpeed()I
    .registers 2

    .line 478
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBgTotalSpeed:I

    return v0
.end method

.method public getExtraspeed()I
    .registers 4

    .line 393
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFgTotalSpeed:I

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBgTotalSpeed:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getFGAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    return-object v0
.end method

.method public getFgTotalSpeed()I
    .registers 2

    .line 474
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFgTotalSpeed:I

    return v0
.end method

.method public getIndexOfList(Ljava/util/List;I)I
    .registers 5
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;I)I"
        }
    .end annotation

    .line 482
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 483
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v1

    if-ne v1, p2, :cond_14

    .line 484
    return v0

    .line 482
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0    # "i":I
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxSpeedApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;"
        }
    .end annotation

    .line 786
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 787
    .local v0, "maxSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 788
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    if-le v2, v3, :cond_25

    .line 789
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 787
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 792
    .end local v1    # "i":I
    :cond_28
    return-object v0
.end method

.method public getMaxSpeedBGAppExceptUsefulApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;"
        }
    .end annotation

    .line 797
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const/4 v0, 0x0

    .line 798
    .local v0, "maxSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 799
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 800
    .local v2, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 801
    nop

    .line 798
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 803
    .restart local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_22
    move-object v0, v2

    .line 806
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_23
    if-nez v0, :cond_27

    .line 807
    const/4 v2, 0x0

    return-object v2

    .line 809
    :cond_27
    move v2, v1

    .local v2, "j":I
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 810
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-le v3, v4, :cond_8a

    .line 811
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 812
    .local v3, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedWhiteList:Lcom/android/server/ibs/dnba/NetSpeedWhiteList;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/ibs/dnba/NetSpeedWhiteList;->isWhitelistUnlimitNetwork(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 813
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packagename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is music app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NetSpeedPolicy"

    invoke-virtual {v4, v6, v5}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    goto :goto_8a

    .line 816
    :cond_83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 809
    .end local v3    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_8a
    :goto_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 819
    :cond_8d
    return-object v0
.end method

.method public getMinSpeedApp(Ljava/util/List;)Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;)",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;"
        }
    .end annotation

    .line 823
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 824
    .local v0, "minSpeedApp":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 825
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 826
    .local v2, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v4

    if-ge v3, v4, :cond_1f

    .line 827
    move-object v0, v2

    .line 824
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 830
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public getTotalSpeed()I
    .registers 2

    .line 543
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    return v0
.end method

.method public isLimitedApp(Lcom/android/server/ibs/dnba/NetSpeedStatus;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 760
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public limitAppSpeed(I)V
    .registers 8
    .param p1, "cmd"    # I

    .line 710
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetSpeedPolicy"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getAvgPhySpeed()I

    move-result v0

    .line 712
    .local v0, "avgPhySpeed":I
    const/4 v1, 0x0

    .line 713
    .local v1, "App":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a2

    .line 714
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mCandidateApps:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 719
    const/16 v3, 0x32

    .line 720
    .local v3, "limitRate":I
    const/16 v4, 0x2710

    if-le v0, v4, :cond_38

    .line 721
    const/16 v3, 0x46

    goto :goto_3e

    .line 722
    :cond_38
    const/16 v4, 0x3e8

    if-ge v0, v4, :cond_3e

    .line 723
    const/16 v3, 0x1e

    .line 725
    :cond_3e
    :goto_3e
    const/4 v4, 0x1

    const/16 v5, 0x1e

    if-eq p1, v4, :cond_83

    const/4 v4, 0x2

    if-eq p1, v4, :cond_65

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4a

    goto :goto_a0

    .line 746
    :cond_4a
    const-string v5, " down limit start. "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastFGTotalSpeed:I

    sub-int v2, v0, v2

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    .line 749
    .local v2, "minLimitSpeed":I
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget v4, v4, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    if-ge v2, v4, :cond_5d

    .line 750
    return-void

    .line 752
    :cond_5d
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->updateLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;I)V

    .line 753
    goto :goto_a0

    .line 737
    .end local v2    # "minLimitSpeed":I
    :cond_65
    const-string v4, " up limit start. "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    .line 740
    .local v2, "biggestLimitSpeed":I
    mul-int/lit8 v4, v0, 0xa

    div-int/lit8 v4, v4, 0x64

    if-lt v2, v4, :cond_82

    if-ge v2, v5, :cond_7a

    goto :goto_82

    .line 743
    :cond_7a
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->updateLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;I)V

    .line 744
    goto :goto_a0

    .line 741
    :cond_82
    :goto_82
    return-void

    .line 727
    .end local v2    # "biggestLimitSpeed":I
    :cond_83
    const-string v4, " first limit start."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v2

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    .line 730
    .local v2, "maxLimitSpeed":I
    mul-int/lit8 v4, v0, 0xa

    div-int/lit8 v4, v4, 0x64

    if-lt v2, v4, :cond_a1

    if-ge v2, v5, :cond_98

    goto :goto_a1

    .line 734
    :cond_98
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->enableLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;I)V

    .line 735
    nop

    .line 757
    .end local v2    # "maxLimitSpeed":I
    :goto_a0
    return-void

    .line 731
    .restart local v2    # "maxLimitSpeed":I
    :cond_a1
    :goto_a1
    return-void

    .line 717
    .end local v2    # "maxLimitSpeed":I
    .end local v3    # "limitRate":I
    :cond_a2
    return-void
.end method

.method public onBlocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    .line 911
    return-void
.end method

.method public onUnblocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->isBlocked:Z

    .line 914
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 915
    return-void
.end method

.method public onVPNConnectionChanged(Z)V
    .registers 4
    .param p1, "cur"    # Z

    .line 928
    iput-boolean p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z

    .line 929
    if-eqz p1, :cond_b

    .line 930
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 932
    :cond_b
    return-void
.end method

.method public onWifiConnectionChanged(Z)V
    .registers 5
    .param p1, "cur"    # Z

    .line 918
    iput-boolean p1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->WifiConnected:Z

    .line 919
    if-eqz p1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->VPNConnected:Z

    if-nez v0, :cond_f

    .line 920
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 922
    :cond_f
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    const-string v1, "NetSpeedPolicy"

    const-string v2, "Network disconnect"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendEmptyMessage(I)Z

    .line 925
    :goto_1f
    return-void
.end method

.method public print()V
    .registers 5

    .line 834
    const-string v0, "NetSpeedPolicy"

    const-string v1, "FG App print"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 836
    .local v2, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_d

    .line 838
    :cond_21
    const-string v1, "BG App print"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 840
    .restart local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    goto :goto_2c

    .line 842
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTotalSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method public reFillBGAppList()V
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getForegroundUids()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getBackgroundApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 386
    .local v2, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->contain(Ljava/util/List;I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 387
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v2    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 389
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveTrafList(Ljava/util/List;)V

    .line 390
    return-void
.end method

.method public releaseAllAppsLimit(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "realese All Apps Limit, mLimitAppList size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetSpeedPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_3b

    .line 767
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 768
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iput-object p1, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    .line 769
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v2, v1, v3, p1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->releaseLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z

    .line 766
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 771
    .end local v0    # "i":I
    :cond_3b
    return-void
.end method

.method public releaseAppLimit(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "realese App Limit, uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetSpeedPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 776
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_39

    .line 777
    iput-object p2, v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedAction:Lcom/android/server/ibs/dnba/NetSpeedAction;

    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLimitAppList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->releaseLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z

    .line 779
    return-void

    .line 781
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    :cond_39
    goto :goto_1d

    .line 782
    :cond_3a
    return-void
.end method

.method public saveAllAppsNetTraf()V
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mBGAppList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveTrafList(Ljava/util/List;)V

    .line 503
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->saveTrafList(Ljava/util/List;)V

    .line 504
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastTotalTrafs:J

    .line 505
    return-void
.end method

.method public updateFGAppsSpeed(I)V
    .registers 6
    .param p1, "time"    # I

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFgTotalSpeed:I

    .line 440
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_2f

    .line 441
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFGAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ibs/dnba/NetSpeedStatus;

    .line 442
    .local v1, "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->getTraffic(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setTrafs(J)I

    move-result v2

    div-int/2addr v2, p1

    .line 443
    .local v2, "fgRxSpeed":I
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->setCurSpeed(I)V

    .line 444
    iget v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFgTotalSpeed:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mFgTotalSpeed:I

    .line 440
    .end local v1    # "app":Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .end local v2    # "fgRxSpeed":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 446
    .end local v0    # "i":I
    :cond_2f
    return-void
.end method

.method public updateFGBGAppsNetSpeed(IZ)V
    .registers 3
    .param p1, "time"    # I
    .param p2, "needUpdate"    # Z

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateFGAppsSpeed(I)V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateBGAppsSpeed(I)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateTotalSpeed(I)V

    .line 379
    invoke-direct {p0, p2}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->updateAVGPhySpeed(Z)V

    .line 380
    return-void
.end method

.method public updateTotalSpeed(I)V
    .registers 6
    .param p1, "time"    # I

    .line 433
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->getTotalTraffic()J

    move-result-wide v0

    .line 434
    .local v0, "nowRxTotalTrafs":J
    iget-wide v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastTotalTrafs:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mTotalSpeed:I

    .line 435
    iput-wide v0, p0, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mLastTotalTrafs:J

    .line 436
    return-void
.end method
