.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 998
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 999
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1000
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1002
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_85

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_54

    const/4 v3, 0x4

    if-eq v0, v3, :cond_13

    goto/16 :goto_93

    .line 1022
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/BrightnessConfiguration;

    # setter for: Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0, v3}, Lcom/android/server/display/BrightnessTracker;->access$1802(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 1024
    # getter for: Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1800(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 1025
    # getter for: Lcom/android/server/display/BrightnessTracker;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1800(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_32

    move v1, v2

    goto :goto_33

    :cond_32
    nop

    :goto_33
    move v0, v1

    .line 1026
    .local v0, "shouldCollectColorSamples":Z
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1900(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1027
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V
    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_93

    .line 1028
    :cond_44
    if-nez v0, :cond_93

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # getter for: Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1900(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1029
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V
    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_93

    .line 1014
    .end local v0    # "shouldCollectColorSamples":Z
    :cond_54
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->startSensorListener()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1400(Lcom/android/server/display/BrightnessTracker;)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    .line 1016
    goto :goto_93

    .line 1018
    :cond_5f
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1600(Lcom/android/server/display/BrightnessTracker;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    # invokes: Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V
    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    .line 1020
    goto :goto_93

    .line 1007
    :cond_6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 1008
    .local v0, "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_74

    move v6, v2

    goto :goto_75

    :cond_74
    move v6, v1

    .line 1009
    .local v6, "userInitiatedChange":Z
    :goto_75
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v9, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v10, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    # invokes: Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJ)V
    invoke-static/range {v4 .. v11}, Lcom/android/server/display/BrightnessTracker;->access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V

    .line 1012
    goto :goto_93

    .line 1004
    .end local v0    # "values":Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
    .end local v6    # "userInitiatedChange":Z
    :cond_85
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->access$1200(Lcom/android/server/display/BrightnessTracker;F)V

    .line 1005
    nop

    .line 1034
    :cond_93
    :goto_93
    return-void
.end method
