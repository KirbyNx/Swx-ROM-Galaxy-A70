.class Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 1092
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "active"    # Z

    .line 1101
    return-void
.end method

.method public onBadgingChanged(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 1098
    return-void
.end method

.method public onCreated(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 1095
    return-void
.end method

.method public onFinished(IZ)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "success"    # Z

    .line 1108
    # getter for: Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionCallback.onFinished id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_24
    if-eqz p2, :cond_59

    .line 1114
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # getter for: Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1115
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # invokes: Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSessionLocked(I)Lcom/android/server/rollback/Rollback;
    invoke-static {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    .line 1116
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_56

    .line 1117
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1118
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->notifySessionWithSuccess()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 1119
    # invokes: Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z
    invoke-static {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1120
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # invokes: Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V
    invoke-static {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1500(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)V

    .line 1122
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_55
    goto :goto_a5

    .line 1116
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v1

    .line 1123
    :cond_59
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # getter for: Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1124
    :try_start_60
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # invokes: Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSessionLocked(I)Lcom/android/server/rollback/Rollback;
    invoke-static {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    .line 1125
    .restart local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1126
    const-string v2, "RollbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete rollback id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for failed session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # getter for: Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1129
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    # getter for: Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;
    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Lcom/android/server/rollback/AppDataRollbackHelper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 1131
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_a4
    monitor-exit v0

    .line 1133
    :goto_a5
    return-void

    .line 1131
    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_60 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method public onProgressChanged(IF)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "progress"    # F

    .line 1104
    return-void
.end method
