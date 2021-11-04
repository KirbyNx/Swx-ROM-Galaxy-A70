.class Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;
.super Landroid/app/IProcessObserver$Stub;
.source "NetSpeedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/dnba/NetSpeedMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 213
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_7

    return-void

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mUtil:Lcom/android/server/ibs/dnba/NetSpeedUtil;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$400(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForegroundActivitiesChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetSpeedMonitor"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$500(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 220
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_d0

    .line 221
    :try_start_38
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 222
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    monitor-exit v0

    return-void

    .line 226
    :cond_6c
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    move v4, v3

    goto :goto_90

    :cond_8f
    move v4, v2

    .line 228
    .local v4, "coldLaunch":Z
    :goto_90
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v5}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v5

    if-eqz v5, :cond_c8

    .line 230
    iget-object v5, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v5}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    iget-object v6, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 231
    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v6}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    .line 232
    if-eqz v4, :cond_b9

    move v2, v3

    .line 230
    :cond_b9
    invoke-static {v5, v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v1    # "msg":Landroid/os/Message;
    :cond_c8
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onFGBGChanged()V

    .line 238
    .end local v4    # "coldLaunch":Z
    goto :goto_118

    .line 240
    :cond_d0
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    .line 242
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v3

    if-eqz v3, :cond_111

    .line 243
    iget-object v3, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    iget-object v4, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v4}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    invoke-static {v3, v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 244
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    .end local v1    # "msg":Landroid/os/Message;
    :cond_111
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onFGBGChanged()V

    .line 249
    :cond_118
    :goto_118
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_11a
    move-exception v1

    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_38 .. :try_end_11c} :catchall_11a

    throw v1
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 254
    return-void
.end method

.method public onProcessDied(II)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 258
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-boolean v0, v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mEnable:Z

    if-nez v0, :cond_7

    return-void

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$500(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 261
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mActivityProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$700(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_2b
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 264
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mFgProcessMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$600(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 266
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 267
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 268
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    # getter for: Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy:Lcom/android/server/ibs/dnba/NetSpeedPolicy;
    invoke-static {v2}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->access$200(Lcom/android/server/ibs/dnba/NetSpeedMonitor;)Lcom/android/server/ibs/dnba/NetSpeedPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ibs/dnba/NetSpeedPolicy;->mHandler:Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy$LimitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7e
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedMonitor$2;->this$0:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    iget-object v1, v1, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->mNetSpeedPolicy2:Lcom/android/server/ibs/dnba/NetSpeedPolicy2;

    invoke-virtual {v1}, Lcom/android/server/ibs/dnba/NetSpeedPolicy2;->onFGBGChanged()V

    .line 273
    :cond_85
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_e .. :try_end_89} :catchall_87

    throw v1
.end method
