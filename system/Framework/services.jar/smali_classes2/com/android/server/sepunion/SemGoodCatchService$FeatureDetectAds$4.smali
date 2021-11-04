.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

.field final synthetic val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 746
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 750
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v2, v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "detectads"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    invoke-static {v4}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1900(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v4

    const-string v5, "FeatureDetectAds"

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    # setter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1802(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 752
    :cond_2c
    return-void
.end method
