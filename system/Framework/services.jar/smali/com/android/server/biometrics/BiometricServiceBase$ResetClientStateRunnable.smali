.class final Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResetClientStateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$1;

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 641
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    const-string/jumbo v3, "null"

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v3

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed to respond to cancel, starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$900(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$900(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    :cond_41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/16 v0, 0x94

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 647
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v1

    const/4 v2, 0x4

    .line 646
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 649
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$900(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 650
    .local v0, "newClient":Lcom/android/server/biometrics/ClientMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$702(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;

    .line 651
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # setter for: Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$902(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;

    .line 652
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 653
    return-void
.end method
