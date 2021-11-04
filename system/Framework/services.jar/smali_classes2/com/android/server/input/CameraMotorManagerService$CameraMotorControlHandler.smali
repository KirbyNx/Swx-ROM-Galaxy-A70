.class final Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
.super Landroid/os/Handler;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraMotorControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/CameraMotorManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 774
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    .line 775
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 776
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 780
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 804
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->setBlockCameraMotorControl(Z)V

    goto :goto_46

    .line 797
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 798
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 799
    .local v1, "whenNanos":J
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 800
    .local v3, "updown":I
    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->deliverCameraMotorPositionChanged(JI)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/CameraMotorManagerService;->access$2000(Lcom/android/server/input/CameraMotorManagerService;JI)V

    .line 801
    goto :goto_46

    .line 790
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "whenNanos":J
    .end local v3    # "updown":I
    :pswitch_29
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->requestUnregisterFreeFall()Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1900(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 791
    goto :goto_46

    .line 793
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->requestUnregisterFreeFall()Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1900(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 794
    goto :goto_46

    .line 786
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->requestRegisterFreeFall()Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1800(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 787
    goto :goto_46

    .line 782
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->cameraMotorStop()Z
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1600(Lcom/android/server/input/CameraMotorManagerService;)Z

    .line 783
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->releaseWakeLockForCameraMotor()V
    invoke-static {v0}, Lcom/android/server/input/CameraMotorManagerService;->access$1700(Lcom/android/server/input/CameraMotorManagerService;)V

    .line 784
    nop

    .line 807
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
