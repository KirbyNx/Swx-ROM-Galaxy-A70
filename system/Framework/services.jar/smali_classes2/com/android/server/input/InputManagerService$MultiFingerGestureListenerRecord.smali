.class final Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiFingerGestureListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IMultiFingerGestureListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IMultiFingerGestureListener;

    .line 4379
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4380
    iput p2, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    .line 4381
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    .line 4382
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 4389
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    # invokes: Lcom/android/server/input/InputManagerService;->onMultiFingerGestureListenerDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$3500(Lcom/android/server/input/InputManagerService;I)V

    .line 4390
    return-void
.end method

.method public notifyMultiFingerGesture(II)V
    .registers 6
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 4394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IMultiFingerGestureListener;->onMultiFingerGesture(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4399
    goto :goto_27

    .line 4395
    :catch_6
    move-exception v0

    .line 4396
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that multi finge gesture was made, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4398
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->binderDied()V

    .line 4400
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
