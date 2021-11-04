.class Lcom/android/server/biometrics/SemBiometricSysUiManager$3;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 553
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onError$0$SemBiometricSysUiManager$3(III)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "error"    # I
    .param p3, "code"    # I

    .line 568
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$300(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method public synthetic lambda$onEvent$2$SemBiometricSysUiManager$3(III)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I

    .line 584
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiEvent(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$900(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method public synthetic lambda$onSysUiDismissed$1$SemBiometricSysUiManager$3(II[B)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "credentialAttestation"    # [B

    .line 576
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiDismissedEvent(II[B)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$1000(Lcom/android/server/biometrics/SemBiometricSysUiManager;II[B)V

    return-void
.end method

.method public onError(III)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "error"    # I
    .param p3, "code"    # I

    .line 565
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$800(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$VOshxWzvHguOs8E1zdVtScnngfg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$VOshxWzvHguOs8E1zdVtScnngfg;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$3;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method public onEvent(III)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "code"    # I

    .line 581
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$800(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$50PoWvsEoMqTlS8WrcilwBucWWg;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$50PoWvsEoMqTlS8WrcilwBucWWg;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$3;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 585
    return-void
.end method

.method public onSysUiDismissed(II[B)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "credentialAttestation"    # [B

    .line 573
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSysUiDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$800(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$3;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method public onTouchEvent(II)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "event"    # I

    .line 557
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiTouchEvent(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$700(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    .line 561
    return-void
.end method
