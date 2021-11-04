.class Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;ILandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

.field final synthetic val$this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;Lcom/android/server/biometrics/BiometricService;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    .line 2666
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->val$this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 2675
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2676
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2677
    return-void
.end method

.method public onError(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "msg"    # I

    .line 2670
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2671
    return-void
.end method

.method public onEvent(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 2687
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_10

    .line 2688
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 2689
    :cond_10
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_27

    .line 2690
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2692
    :cond_27
    :goto_27
    return-void
.end method

.method public onTryAgainPressed(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 2681
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2682
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;->this$1:Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2683
    return-void
.end method
