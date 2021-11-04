.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$3:Z

    iput p5, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$4:I

    iput-object p6, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$6:J

    iput-object p9, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$7:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$3:Z

    iget v4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$4:I

    iget-object v5, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$6:J

    iget-object v8, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2bEH_6WvsGluZs13WtWdBjCRD4I;->f$7:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$show$2$SemBiometricSysUiManager(IIZILjava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
