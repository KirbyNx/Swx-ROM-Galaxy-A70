.class final Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
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
    name = "LidStateChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/ISemLidStateChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/ISemLidStateChangedListener;

    .line 4321
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4322
    iput p2, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    .line 4323
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    .line 4324
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 4331
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    # invokes: Lcom/android/server/input/InputManagerService;->onLidStateChangedListenerDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$3300(Lcom/android/server/input/InputManagerService;I)V

    .line 4332
    return-void
.end method

.method public notifyLidStateChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 4336
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/ISemLidStateChangedListener;->onLidStateChanged(JZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4341
    goto :goto_27

    .line 4337
    :catch_6
    move-exception v0

    .line 4338
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that lid state changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4340
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->binderDied()V

    .line 4342
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
