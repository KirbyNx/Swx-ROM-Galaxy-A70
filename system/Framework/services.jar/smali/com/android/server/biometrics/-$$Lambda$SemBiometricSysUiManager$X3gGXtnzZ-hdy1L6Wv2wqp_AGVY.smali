.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$2:Z

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$2:Z

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$X3gGXtnzZ-hdy1L6Wv2wqp_AGVY;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$onAuthenticated$4$SemBiometricSysUiManager(IZLjava/lang/String;)V

    return-void
.end method
