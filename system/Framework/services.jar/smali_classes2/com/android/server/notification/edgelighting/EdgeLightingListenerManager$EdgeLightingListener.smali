.class Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingListener"
.end annotation


# static fields
.field private static final MSG_EDGE_LIGHTING_STARTED:I = 0x1

.field private static final MSG_EDGE_LIGHTING_STOPPED:I = 0x2


# instance fields
.field private final component:Landroid/content/ComponentName;

.field private isEdgeLighting:Z

.field private mHandler:Landroid/os/Handler;

.field private final pid:I

.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

.field private final token:Landroid/os/IBinder;

.field private final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 8
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 171
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance p1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$300(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 173
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 174
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    .line 175
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    .line 177
    if-eqz p2, :cond_2c

    .line 178
    const/4 p1, 0x0

    :try_start_1d
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2c

    .line 180
    :catch_21
    move-exception p1

    .line 181
    .local p1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingListener : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 182
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    nop

    .line 183
    :goto_2d
    return-void
.end method

.method private _onEdgeLightingStarted()V
    .registers 4

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 221
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_b

    .line 222
    invoke-interface {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStarted()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 226
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_b
    goto :goto_16

    .line 224
    :catch_c
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_onEdgeLightingStarted : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method private _onEdgeLightingStopped()V
    .registers 4

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    .line 232
    .local v0, "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    if-eqz v0, :cond_b

    .line 233
    invoke-interface {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStopped()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 237
    .end local v0    # "callback":Lcom/samsung/android/edge/IEdgeLightingCallback;
    :cond_b
    goto :goto_16

    .line 235
    :catch_c
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_onEdgeLightingStopped : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_16
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 137
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    .param p1, "x1"    # Z

    .line 137
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 137
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 137
    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStopped()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 187
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$700(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$700(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_4b

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 194
    return-void

    .line 192
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onEdgeLightingStarted()V
    .registers 3

    .line 197
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    :cond_a
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_23

    .line 201
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStarted : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 204
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public onEdgeLightingStopped()V
    .registers 3

    .line 208
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 209
    :cond_a
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_23

    .line 212
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStopped : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 215
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Listener: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
