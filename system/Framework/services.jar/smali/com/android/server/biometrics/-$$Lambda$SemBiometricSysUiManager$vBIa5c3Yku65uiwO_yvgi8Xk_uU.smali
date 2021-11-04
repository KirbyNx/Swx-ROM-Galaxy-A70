.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IILandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$vBIa5c3Yku65uiwO_yvgi8Xk_uU;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$sendCommandIfSessionExist$8$SemBiometricSysUiManager(IILandroid/os/Bundle;)V

    return-void
.end method
