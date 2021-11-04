.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureDetectAds"
.end annotation


# static fields
.field private static final ACTIVE_DELAY_MS:I = 0x7d0

.field private static final FUNCTION:Ljava/lang/String; = "detectads"

.field private static final MODULE:Ljava/lang/String; = "FeatureDetectAds"


# instance fields
.field private mActiveState:Z

.field private mForegroundUid:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreviousUid:I

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 5

    .line 739
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 740
    const-string v0, "FeatureDetectAds"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    .line 677
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    .line 682
    iput v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 684
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 710
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 725
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 742
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 744
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/android/server/sepunion/SemGoodCatchService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 668
    iget v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .param p1, "x1"    # I

    .line 668
    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .param p1, "x1"    # I

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->getPackageName(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 668
    invoke-direct {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isActiveState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 668
    iget v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .param p1, "x1"    # I

    .line 668
    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 668
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .param p1, "x1"    # Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 668
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 668
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object v0
.end method

.method private getPackageName(I)[Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 796
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_b

    .line 797
    const-string v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":[Ljava/lang/String;
    goto :goto_11

    .line 799
    .end local v0    # "packageName":[Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 802
    .restart local v0    # "packageName":[Ljava/lang/String;
    :goto_11
    if-nez v0, :cond_1a

    .line 803
    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 806
    :cond_1a
    return-object v0
.end method

.method private isActiveState()Z
    .registers 2

    .line 769
    iget-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return v0
.end method

.method private process(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 811
    if-eqz p1, :cond_19

    .line 812
    :try_start_2
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 813
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    goto :goto_2d

    .line 815
    :cond_19
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 816
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 821
    :goto_2d
    goto :goto_3b

    .line 818
    :catch_2e
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception - ProcessObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 822
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 790
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 791
    return-void
.end method

.method public off()V
    .registers 2

    .line 782
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 783
    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    .line 784
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    .line 786
    :cond_d
    return-void
.end method

.method public on()V
    .registers 2

    .line 774
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isOn()Z

    move-result v0

    if-nez v0, :cond_d

    .line 775
    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->on()V

    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    .line 778
    :cond_d
    return-void
.end method

.method public reset()V
    .registers 1

    .line 760
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->off()V

    .line 761
    return-void
.end method

.method public setActiveState(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 764
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 766
    return-void
.end method
