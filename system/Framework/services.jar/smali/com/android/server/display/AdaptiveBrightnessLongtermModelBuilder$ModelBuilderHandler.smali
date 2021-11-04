.class final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;
.super Landroid/os/Handler;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModelBuilderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1294
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 1295
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1296
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 1298
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_a8

    :pswitch_7
    goto/16 :goto_a6

    .line 1337
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessBnrPackageCleared()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$2200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto/16 :goto_a6

    .line 1334
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleShortTermModelValid()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$2100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1335
    goto/16 :goto_a6

    .line 1330
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1331
    .local v0, "ambientLux":F
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleAmbientLuxChanged(F)V
    invoke-static {v1, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$2000(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    .line 1332
    goto/16 :goto_a6

    .line 1319
    .end local v0    # "ambientLux":F
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/BrightnessConfiguration;

    # setter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1802(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    .line 1320
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 1321
    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1800(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 1322
    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1800(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_43

    move v1, v2

    goto :goto_44

    :cond_43
    nop

    :goto_44
    move v0, v1

    .line 1323
    .local v0, "shouldCollectColorSamples":Z
    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 1324
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1500(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a6

    .line 1325
    :cond_55
    if-nez v0, :cond_a6

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1326
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1700(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    goto :goto_a6

    .line 1311
    .end local v0    # "shouldCollectColorSamples":Z
    :pswitch_65
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1400(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1312
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1500(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1313
    goto :goto_a6

    .line 1315
    :pswitch_70
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1600(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1316
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1700(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1317
    goto :goto_a6

    .line 1303
    :pswitch_7b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    .line 1304
    .local v0, "values":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_85

    move v6, v2

    goto :goto_86

    :cond_85
    move v6, v1

    .line 1305
    .local v6, "userInitiatedChange":Z
    :goto_86
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightness:F

    iget v7, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v8, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v9, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v10, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->timestamp:J

    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;->brightnessSpline:Landroid/util/Spline;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessChanged(FZFZZJLandroid/util/Spline;)V
    invoke-static/range {v4 .. v12}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1300(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLandroid/util/Spline;)V

    .line 1309
    goto :goto_a6

    .line 1300
    .end local v0    # "values":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;
    .end local v6    # "userInitiatedChange":Z
    :pswitch_98
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->backgroundStart(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$1200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V

    .line 1301
    nop

    .line 1340
    :cond_a6
    :goto_a6
    return-void

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_98
        :pswitch_7b
        :pswitch_70
        :pswitch_65
        :pswitch_24
        :pswitch_17
        :pswitch_7
        :pswitch_10
        :pswitch_9
    .end packed-switch
.end method
