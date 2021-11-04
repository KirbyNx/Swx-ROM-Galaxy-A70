.class Lcom/android/server/biometrics/SemBiometricSysUiManager$1;
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

    .line 47
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 50
    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager;->mSessionList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$000(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # getter for: Lcom/android/server/biometrics/SemBiometricSysUiManager;->mIsConnected:Z
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$100(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    # invokes: Lcom/android/server/biometrics/SemBiometricSysUiManager;->unBind()V
    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->access$200(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V

    .line 54
    :cond_1a
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
