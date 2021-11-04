.class Lcom/android/server/location/RemoteListenerHelper$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper;->tryRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field registrationState:I

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/RemoteListenerHelper;

    .line 219
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$RemoteListenerHelper$1()V
    .registers 5

    .line 230
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v0, v0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/Map;

    monitor-enter v0

    .line 231
    :try_start_5
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget v3, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    invoke-virtual {v2, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v2

    # invokes: Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    invoke-static {v1, v2}, Lcom/android/server/location/RemoteListenerHelper;->access$300(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public run()V
    .registers 3

    .line 223
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$1;, "Lcom/android/server/location/RemoteListenerHelper$1;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$200(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 224
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->registrationState:I

    .line 225
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    # setter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v1, v0}, Lcom/android/server/location/RemoteListenerHelper;->access$202(Lcom/android/server/location/RemoteListenerHelper;Z)Z

    .line 227
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z
    invoke-static {v0}, Lcom/android/server/location/RemoteListenerHelper;->access$200(Lcom/android/server/location/RemoteListenerHelper;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 229
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v0, v0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$1$zm4ubOjPyd7USwEJsdJwj1QLhgw;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$RemoteListenerHelper$1$zm4ubOjPyd7USwEJsdJwj1QLhgw;-><init>(Lcom/android/server/location/RemoteListenerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_2e
    return-void
.end method
