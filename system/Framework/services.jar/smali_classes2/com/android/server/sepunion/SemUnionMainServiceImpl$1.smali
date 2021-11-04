.class Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;
.super Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.source "SemUnionMainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    .line 85
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 7
    .param p1, "isAttached"    # Z
    .param p2, "uriData"    # [B
    .param p3, "coverId"    # [B

    .line 115
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "friends"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/FriendsManagerService;

    .line 118
    .local v1, "system":Lcom/android/server/sepunion/FriendsManagerService;
    if-nez v1, :cond_21

    .line 119
    iget-object v2, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v2, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/sepunion/FriendsManagerService;

    .line 122
    :cond_21
    if-eqz v1, :cond_27

    .line 123
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sepunion/FriendsManagerService;->accessoryStateChanged(Z[B[B)V

    goto :goto_30

    .line 125
    :cond_27
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accessoryStateChanged : create system fail"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_30
    return-void
.end method

.method public createSemSystemService(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_5
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 149
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already existing service : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_33
    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v2, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$300(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->addSepUnionServiceMapInternal(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v1, p1, v2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$400(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "opt"    # Landroid/os/Bundle;

    .line 142
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .line 104
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyCoverSwitchStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 106
    .local v0, "system":Lcom/android/server/sepunion/SemPluginManagerService;
    if-eqz v0, :cond_19

    .line 107
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_23

    .line 109
    :cond_19
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyCoverSwitchStateChanged : there is no system"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_23
    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 88
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v0, "plugin"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 91
    .local v1, "system":Lcom/android/server/sepunion/SemPluginManagerService;
    if-nez v1, :cond_23

    .line 92
    iget-object v2, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v2, v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    .line 95
    :cond_23
    if-eqz v1, :cond_29

    .line 96
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemPluginManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    goto :goto_33

    .line 98
    :cond_29
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "notifySmartCoverAttachStateChanged : create system fail"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_33
    return-void
.end method

.method public screenTurnedOff()V
    .registers 4

    .line 131
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screenTurnOff"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "friends"

    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/FriendsManagerService;

    .line 133
    .local v0, "system":Lcom/android/server/sepunion/FriendsManagerService;
    if-eqz v0, :cond_18

    .line 134
    invoke-virtual {v0}, Lcom/android/server/sepunion/FriendsManagerService;->screenTurnedOff()V

    goto :goto_22

    .line 136
    :cond_18
    # getter for: Lcom/android/server/sepunion/SemUnionMainServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenTurnOff : there is no system"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_22
    return-void
.end method
