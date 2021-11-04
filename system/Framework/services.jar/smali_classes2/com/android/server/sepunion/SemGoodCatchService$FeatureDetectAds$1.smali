.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;
.super Landroid/app/IProcessObserver$Stub;
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

    .line 684
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 688
    if-eqz p3, :cond_67

    .line 689
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # setter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v0, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1402(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I

    .line 690
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v1

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->getPackageName(I)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1500(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 692
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # invokes: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->isActiveState()Z
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1600(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1700(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v2

    if-eq v1, v2, :cond_67

    .line 693
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mForegroundUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I
    invoke-static {v3}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1400(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;
    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1800(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "detectads"

    const-string v6, ""

    const-string v7, ""

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_67
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 702
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 707
    return-void
.end method
