.class Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/os/Handler;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 360
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 365
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_12f

    packed-switch v0, :pswitch_data_13a

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_139

    .line 486
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleClientDied()V
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1400(Lcom/android/server/biometrics/BiometricService;)V

    .line 487
    goto/16 :goto_139

    .line 481
    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService;->access$1300(Lcom/android/server/biometrics/BiometricService;I)V

    .line 482
    goto/16 :goto_139

    .line 476
    :pswitch_3e
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed()V
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$1200(Lcom/android/server/biometrics/BiometricService;)V

    .line 477
    goto/16 :goto_139

    .line 466
    :pswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 467
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricService;->access$1100(Lcom/android/server/biometrics/BiometricService;III)V

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 472
    goto/16 :goto_139

    .line 454
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 455
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService;->access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 462
    goto/16 :goto_139

    .line 438
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 439
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 441
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 439
    # invokes: Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    invoke-static/range {v1 .. v11}, Lcom/android/server/biometrics/BiometricService;->access$900(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 450
    goto/16 :goto_139

    .line 428
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 429
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 431
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 429
    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricService;->access$800(Lcom/android/server/biometrics/BiometricService;IZI)V

    .line 433
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 434
    goto/16 :goto_139

    .line 415
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_bd
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_c8

    .line 416
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$600(Lcom/android/server/biometrics/BiometricService;)V

    goto/16 :goto_139

    .line 418
    :cond_c8
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnChangeAuthenticator(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService;->access$700(Lcom/android/server/biometrics/BiometricService;I)V

    .line 424
    goto :goto_139

    .line 409
    :pswitch_d0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I[B)V
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$500(Lcom/android/server/biometrics/BiometricService;I[B)V

    .line 410
    goto :goto_139

    .line 400
    :pswitch_dc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 401
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->access$400(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 405
    goto :goto_139

    .line 389
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_ef
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 390
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnError(IIII)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/BiometricService;->access$300(Lcom/android/server/biometrics/BiometricService;IIII)V

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 396
    goto :goto_139

    .line 384
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_104
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected()V
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->access$200(Lcom/android/server/biometrics/BiometricService;)V

    .line 385
    goto :goto_139

    .line 370
    :pswitch_10a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 371
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 372
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 374
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 371
    # invokes: Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[BZLandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/BiometricService;->access$100(Lcom/android/server/biometrics/BiometricService;Z[BZLandroid/os/Bundle;)V

    .line 379
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 380
    goto :goto_139

    .line 491
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_12f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/biometrics/BiometricService;->handleOnSysUiError(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->access$1500(Lcom/android/server/biometrics/BiometricService;II)V

    .line 492
    nop

    .line 499
    :goto_139
    return-void

    :pswitch_data_13a
    .packed-switch 0x2
        :pswitch_10a
        :pswitch_104
        :pswitch_ef
        :pswitch_dc
        :pswitch_d0
        :pswitch_bd
        :pswitch_a3
        :pswitch_75
        :pswitch_59
        :pswitch_45
        :pswitch_3e
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method
