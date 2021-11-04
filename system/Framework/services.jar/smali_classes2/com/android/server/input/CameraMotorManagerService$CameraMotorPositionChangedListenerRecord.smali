.class final Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
.super Ljava/lang/Object;
.source "CameraMotorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/CameraMotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraMotorPositionChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/ICameraMotorPositionChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/CameraMotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/CameraMotorManagerService;ILandroid/hardware/input/ICameraMotorPositionChangedListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/ICameraMotorPositionChangedListener;

    .line 364
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p2, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->mPid:I

    .line 366
    iput-object p3, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->mListener:Landroid/hardware/input/ICameraMotorPositionChangedListener;

    .line 367
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->this$0:Lcom/android/server/input/CameraMotorManagerService;

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->mPid:I

    # invokes: Lcom/android/server/input/CameraMotorManagerService;->onCameraMotorPositionChangedListenerDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->access$100(Lcom/android/server/input/CameraMotorManagerService;I)V

    .line 375
    return-void
.end method

.method public notifyCameraMotorPositionChanged(JI)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "updown"    # I

    .line 379
    const/4 v0, -0x1

    .line 380
    .local v0, "currentstate":I
    const/16 v1, 0x9

    if-ne p3, v1, :cond_7

    .line 381
    const/4 v0, 0x1

    goto :goto_26

    .line 382
    :cond_7
    if-nez p3, :cond_b

    .line 383
    const/4 v0, 0x0

    goto :goto_26

    .line 384
    :cond_b
    const/16 v1, -0x12c

    if-ne p3, v1, :cond_12

    .line 385
    const/16 v0, -0x12c

    goto :goto_26

    .line 386
    :cond_12
    const/16 v1, -0xc8

    if-ne p3, v1, :cond_19

    .line 387
    const/16 v0, -0xc8

    goto :goto_26

    .line 388
    :cond_19
    const/16 v1, -0x64

    if-ne p3, v1, :cond_20

    .line 389
    const/16 v0, -0x64

    goto :goto_26

    .line 390
    :cond_20
    const/16 v1, -0x190

    if-ne p3, v1, :cond_26

    .line 391
    const/16 v0, -0x190

    .line 393
    :cond_26
    :goto_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->mListener:Landroid/hardware/input/ICameraMotorPositionChangedListener;

    invoke-interface {v1, p1, p2, v0}, Landroid/hardware/input/ICameraMotorPositionChangedListener;->onCameraMotorPositionChanged(JI)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 398
    .end local v0    # "currentstate":I
    goto :goto_4d

    .line 394
    :catch_2c
    move-exception v0

    .line 395
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that CameraMotorPosition changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraMotorManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->binderDied()V

    .line 399
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method
