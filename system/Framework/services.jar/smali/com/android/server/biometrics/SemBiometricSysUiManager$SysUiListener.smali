.class public interface abstract Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SysUiListener"
.end annotation


# virtual methods
.method public onDismissed(I[B)V
    .registers 3
    .param p1, "reasona"    # I
    .param p2, "credentialAttestation"    # [B

    .line 545
    return-void
.end method

.method public abstract onError(II)V
.end method

.method public onEvent(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "code"    # I

    .line 548
    return-void
.end method

.method public onTouchEvent(I)V
    .registers 2
    .param p1, "event"    # I

    .line 538
    return-void
.end method

.method public onTryAgainPressed(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 542
    return-void
.end method
