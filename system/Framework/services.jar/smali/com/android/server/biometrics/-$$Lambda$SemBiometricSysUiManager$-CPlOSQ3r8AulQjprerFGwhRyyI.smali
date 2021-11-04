.class public final synthetic Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$-CPlOSQ3r8AulQjprerFGwhRyyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$-CPlOSQ3r8AulQjprerFGwhRyyI;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/-$$Lambda$SemBiometricSysUiManager$-CPlOSQ3r8AulQjprerFGwhRyyI;->f$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->lambda$runPendingCommand$0$SemBiometricSysUiManager()V

    return-void
.end method
