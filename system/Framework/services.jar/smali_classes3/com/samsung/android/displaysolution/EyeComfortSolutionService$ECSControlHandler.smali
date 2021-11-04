.class final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
.super Landroid/os/Handler;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ECSControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 610
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 611
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 616
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 639
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # getter for: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z
    invoke-static {v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v1, v2

    :cond_19
    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 640
    goto :goto_3b

    .line 635
    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValueForBigData(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 636
    goto :goto_3b

    .line 631
    :pswitch_23
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValueForBigData(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 632
    goto :goto_3b

    .line 627
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValue(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 628
    goto :goto_3b

    .line 623
    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValue(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V

    .line 624
    goto :goto_3b

    .line 619
    :pswitch_35
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getSystemServices()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$1300(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 620
    nop

    .line 645
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_8
    .end packed-switch
.end method
