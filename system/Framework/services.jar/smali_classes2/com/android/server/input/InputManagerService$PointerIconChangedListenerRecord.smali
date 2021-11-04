.class final Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;
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
    name = "PointerIconChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IPointerIconChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IPointerIconChangedListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IPointerIconChangedListener;

    .line 4409
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4410
    iput p2, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mPid:I

    .line 4411
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mListener:Landroid/hardware/input/IPointerIconChangedListener;

    .line 4412
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 4419
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mPid:I

    # invokes: Lcom/android/server/input/InputManagerService;->onPointerIconChangedListenerDied(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$3600(Lcom/android/server/input/InputManagerService;I)V

    .line 4420
    return-void
.end method

.method public notifyPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 4424
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mListener:Landroid/hardware/input/IPointerIconChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IPointerIconChangedListener;->onPointerIconChanged(ILandroid/view/PointerIcon;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4429
    goto :goto_27

    .line 4425
    :catch_6
    move-exception v0

    .line 4426
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that pointer icon changed, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4428
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->binderDied()V

    .line 4430
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_27
    return-void
.end method
