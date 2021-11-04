.class Lcom/android/server/biometrics/BiometricServiceBase$1;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 576
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v0, :cond_b

    .line 581
    return-void

    .line 583
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "currentClient":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 585
    return-void

    .line 588
    :cond_1e
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    .line 589
    .local v1, "ce":Lcom/android/server/biometrics/SemClientExtension;
    if-eqz v1, :cond_52

    .line 590
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemClientExtension;->hasBackgroundAuthPermission()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 591
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow background auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 595
    :cond_4b
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemClientExtension;->isPrompt()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 596
    return-void

    .line 599
    :cond_52
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 600
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Allow background auth: DeX"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 604
    :cond_6a
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 605
    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;
    invoke-static {v2}, Lcom/android/server/biometrics/BiometricServiceBase;->access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 606
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c5

    .line 607
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "topPackage":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c5

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 609
    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v5}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/ClientMonitor;->isAlreadyDone()Z

    move-result v5

    if-nez v5, :cond_c5

    .line 610
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping background authentication, top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " currentClient: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    # getter for: Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v5}, Lcom/android/server/biometrics/BiometricServiceBase;->access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c5} :catch_c6

    .line 617
    .end local v0    # "currentClient":Ljava/lang/String;
    .end local v1    # "ce":Lcom/android/server/biometrics/SemClientExtension;
    .end local v2    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topPackage":Ljava/lang/String;
    :cond_c5
    goto :goto_d2

    .line 615
    :catch_c6
    move-exception v0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase$1;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d2
    return-void
.end method
