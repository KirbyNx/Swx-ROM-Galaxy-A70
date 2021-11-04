.class Lcom/android/server/power/PowerManagerService$11;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(IZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$haltMode:I

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 6048
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$11;->val$reason:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/power/PowerManagerService$11;->val$haltMode:I

    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService$11;->val$confirm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 6051
    monitor-enter p0

    .line 6053
    :try_start_1
    const-string/jumbo v0, "silent.sec"

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6055
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6056
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v1, "SoftReset"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_74

    .line 6058
    const-wide/16 v0, 0x7d0

    :try_start_21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25
    .catchall {:try_start_21 .. :try_end_24} :catchall_74

    .line 6062
    goto :goto_30

    .line 6059
    :catch_25
    move-exception v0

    .line 6060
    .local v0, "e":Ljava/lang/Exception;
    :try_start_26
    const-string v1, "PowerManagerService"

    const-string v2, "Failed to sleep"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6065
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_30
    :goto_30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "NPE by silent reset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/power/PowerManagerService$11;
    throw v0

    .line 6067
    .restart local p0    # "this":Lcom/android/server/power/PowerManagerService$11;
    :cond_38
    iget v0, p0, Lcom/android/server/power/PowerManagerService$11;->val$haltMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 6068
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$11;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_69

    .line 6069
    :cond_49
    iget v0, p0, Lcom/android/server/power/PowerManagerService$11;->val$haltMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    .line 6070
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$11;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_69

    .line 6072
    :cond_5c
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$11;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6075
    :goto_69
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getRestrict()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 6076
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6079
    :cond_72
    monitor-exit p0

    .line 6080
    return-void

    .line 6079
    :catchall_74
    move-exception v0

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_26 .. :try_end_76} :catchall_74

    throw v0
.end method
