.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$3;II[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$3;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager$3;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$3$Tp_gtuL10bl_PmIykdrRsInNX_8;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$3;->lambda$onSysUiDismissed$1$SemBiometricSysUiManager$3(II[B)V

    return-void
.end method
