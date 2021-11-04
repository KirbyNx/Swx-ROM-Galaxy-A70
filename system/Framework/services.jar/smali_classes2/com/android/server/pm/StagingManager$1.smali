.class Lcom/android/server/pm/StagingManager$1;
.super Landroid/content/BroadcastReceiver;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/StagingManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/StagingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/StagingManager;

    .line 1230
    iput-object p1, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$StagingManager$1()V
    .registers 2

    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    # invokes: Lcom/android/server/pm/StagingManager;->logFailedApexSessionsIfNecessary()V
    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->access$500(Lcom/android/server/pm/StagingManager;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1233
    iget-object v0, p0, Lcom/android/server/pm/StagingManager$1;->this$0:Lcom/android/server/pm/StagingManager;

    # getter for: Lcom/android/server/pm/StagingManager;->mPreRebootVerificationHandler:Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;
    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->access$300(Lcom/android/server/pm/StagingManager;)Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;

    move-result-object v0

    # invokes: Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->readyToStart()V
    invoke-static {v0}, Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;->access$400(Lcom/android/server/pm/StagingManager$PreRebootVerificationHandler;)V

    .line 1234
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$1$x6UWz5lz4rW7MnWw4KzvwIRWgsQ;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1236
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1237
    return-void
.end method
