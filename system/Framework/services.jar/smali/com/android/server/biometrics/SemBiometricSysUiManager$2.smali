.class Lcom/android/server/biometrics/SemBiometricSysUiManager$2;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$2;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 61
    const-string v0, "BiometricSysUiManager"

    const-string/jumbo v1, "handle binding timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$2;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->notifySysUiErrorEvent(III)V
    invoke-static {v0, v1, v2, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$300(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$2;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$200(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    .line 64
    return-void
.end method
