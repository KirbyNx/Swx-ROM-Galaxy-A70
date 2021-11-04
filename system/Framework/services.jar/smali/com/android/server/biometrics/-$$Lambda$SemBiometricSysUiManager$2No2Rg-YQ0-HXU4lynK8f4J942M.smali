.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$2No2Rg-YQ0-HXU4lynK8f4J942M;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$hide$3$SemBiometricSysUiManager(III)V

    return-void
.end method
