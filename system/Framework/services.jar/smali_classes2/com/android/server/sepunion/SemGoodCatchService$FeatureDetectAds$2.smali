.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 710
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 713
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 715
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$500(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7d0

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemGoodCatchService;->access$600(Landroid/os/Handler;IIILjava/lang/Object;I)V

    goto :goto_47

    .line 717
    :cond_27
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 718
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v2

    # setter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I
    invoke-static {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1702(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I

    .line 720
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    .line 722
    :cond_47
    :goto_47
    return-void
.end method
