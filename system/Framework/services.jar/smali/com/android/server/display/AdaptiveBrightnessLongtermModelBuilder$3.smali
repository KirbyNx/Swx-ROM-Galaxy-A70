.class Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$UserActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 254
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .registers 3
    .param p1, "userActivityState"    # I

    .line 257
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 258
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 259
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->resume()V

    goto :goto_28

    .line 261
    :cond_15
    if-nez p1, :cond_28

    .line 262
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 263
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->pause()V

    .line 266
    :cond_28
    :goto_28
    return-void
.end method
