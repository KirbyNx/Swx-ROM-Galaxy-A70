.class final Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 993
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 994
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 995
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 999
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    goto/16 :goto_7f

    .line 1034
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_7f

    .line 1031
    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1032
    goto :goto_7f

    .line 1028
    :pswitch_32
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$3000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1029
    goto :goto_7f

    .line 1025
    :pswitch_38
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1026
    goto :goto_7f

    .line 1022
    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1023
    goto :goto_7f

    .line 1019
    :pswitch_44
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1020
    goto :goto_7f

    .line 1016
    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1017
    goto :goto_7f

    .line 1013
    :pswitch_50
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    .line 1014
    goto :goto_7f

    .line 1005
    :pswitch_56
    :try_start_56
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_60

    .line 1010
    goto :goto_7f

    .line 1006
    :catch_60
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1008
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_70
    goto :goto_7f

    .line 1001
    :pswitch_71
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$2400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V

    .line 1002
    nop

    .line 1040
    :cond_7f
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_71
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_7
    .end packed-switch
.end method
