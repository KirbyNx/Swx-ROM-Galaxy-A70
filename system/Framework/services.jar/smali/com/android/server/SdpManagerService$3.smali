.class Lcom/android/server/SdpManagerService$3;
.super Landroid/os/ContainerStateReceiver;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;

    .line 4059
    iput-object p1, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 4062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerCreated :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Workspace for user %d has been created"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 4066
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4067
    return-void

    .line 4070
    :cond_31
    const/4 v1, 0x0

    .line 4071
    .local v1, "info":Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    iget-object v2, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4072
    :try_start_39
    iget-object v4, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    invoke-static {v4, p2}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v4

    move-object v1, v4

    .line 4073
    if-nez v1, :cond_5d

    .line 4074
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected condition while find engine info with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    .line 4076
    monitor-exit v2

    return-void

    .line 4078
    :cond_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_b5

    .line 4080
    iget-object v2, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;
    invoke-static {v2, p2}, Lcom/android/server/SdpManagerService;->access$3700(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4081
    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lcom/android/server/SdpManagerService$KnoxUtil;->isLegacyContainerUser(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 4082
    new-array v0, v0, [Ljava/lang/Object;

    .line 4083
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4082
    const-string v3, "On created - User %d workspace identified as old-fashioned"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4085
    const/4 v0, 0x0

    const-string v3, "EXTRA_RESET_TOKEN"

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4086
    .local v0, "resetToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    .line 4087
    .local v3, "isLegacyMinor":Z
    if-eqz v3, :cond_b4

    .line 4088
    iget-object v4, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4089
    :try_start_8f
    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getFlag()I

    move-result v5

    .line 4090
    .local v5, "flag":I
    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->setFlag(I)V

    .line 4092
    iget-object v6, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4093
    iget-object v6, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$3800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v6

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    invoke-static {v6, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    .line 4094
    nop

    .end local v5    # "flag":I
    monitor-exit v4

    goto :goto_b4

    :catchall_b1
    move-exception v5

    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_8f .. :try_end_b3} :catchall_b1

    throw v5

    .line 4097
    .end local v0    # "resetToken":Ljava/lang/String;
    .end local v3    # "isLegacyMinor":Z
    :cond_b4
    :goto_b4
    return-void

    .line 4078
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 4113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerLocked :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4115
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 4116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Immediately lock sdp for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    iget-object v0, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 4119
    :cond_3c
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 4102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerShutdown :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4104
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 4105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container has been shut down for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 4106
    iget-object v0, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    .line 4107
    iget-object v0, p0, Lcom/android/server/SdpManagerService$3;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->lockKeystore(I)V
    invoke-static {v0, p2}, Lcom/android/server/SdpManagerService;->access$3900(Lcom/android/server/SdpManagerService;I)V

    .line 4109
    :cond_41
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 4123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onContainerUnlocked :: user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    return-void
.end method
