.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput p2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$3:I

    iget-object v4, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$e_S5zMNbSAjBCNXhF71QsVGGFlI;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$onBiometricHelp$5$SemBiometricSysUiManager(IIILjava/lang/String;)V

    return-void
.end method
