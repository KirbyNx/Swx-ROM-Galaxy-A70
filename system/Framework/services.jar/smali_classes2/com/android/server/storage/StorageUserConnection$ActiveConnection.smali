.class final Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/StorageUserConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveConnection"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mOutstandingOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/storage/IExternalStorageService;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/storage/StorageUserConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/StorageUserConnection;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection;Lcom/android/server/storage/StorageUserConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/storage/StorageUserConnection;
    .param p2, "x1"    # Lcom/android/server/storage/StorageUserConnection$1;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 208
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private connectIfNeeded()Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/storage/IExternalStorageService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mSessionController:Lcom/android/server/storage/StorageSessionController;
    invoke-static {v0}, Lcom/android/server/storage/StorageUserConnection;->access$300(Lcom/android/server/storage/StorageUserConnection;)Lcom/android/server/storage/StorageSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/storage/StorageSessionController;->getExternalStorageServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 331
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_ac

    .line 337
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_f
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v2, :cond_17

    .line 339
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v1

    return-object v2

    .line 341
    :cond_17
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 342
    .local v2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    new-instance v3, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection$1;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    iput-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 388
    const-string v3, "StorageUserConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v7, 0x41

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 394
    # getter for: Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$500(Lcom/android/server/storage/StorageUserConnection;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 395
    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 391
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 396
    const-string v3, "StorageUserConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bound to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 398
    monitor-exit v1

    return-object v2

    .line 400
    :cond_8c
    new-instance v3, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to the ExternalStorageService for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 401
    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v5}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    throw v3

    .line 403
    .end local v2    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .restart local v0    # "name":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    :catchall_a9
    move-exception v2

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_f .. :try_end_ab} :catchall_a9

    throw v2

    .line 333
    :cond_ac
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not ready to bind to the ExternalStorageService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    .line 334
    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v3}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$endSession$3(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p0, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p1, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/service/storage/IExternalStorageService;->endSession(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 301
    return-void
.end method

.method static synthetic lambda$notifyVolumeStateChanged$4(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .registers 4
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "vol"    # Landroid/os/storage/StorageVolume;
    .param p2, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-interface {p2, p0, p1, p3}, Landroid/service/storage/IExternalStorageService;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/RemoteCallback;)V

    .line 312
    return-void
.end method

.method static synthetic lambda$startSession$2(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p0, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "service"    # Landroid/service/storage/IExternalStorageService;
    .param p3, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$Session;->sessionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$Session;->upperPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/storage/StorageUserConnection$Session;->lowerPath:Ljava/lang/String;

    const/4 v2, 0x3

    move-object v0, p2

    move-object v3, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/service/storage/IExternalStorageService;->startSession(Ljava/lang/String;ILandroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 285
    return-void
.end method

.method private setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const-string v0, "android.service.storage.extra.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableException;

    .line 321
    .local v0, "ex":Landroid/os/ParcelableException;
    if-eqz v0, :cond_e

    .line 322
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_12

    .line 324
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 326
    :goto_12
    return-void
.end method

.method private waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    .registers 8
    .param p1, "asyncCall"    # Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->connectIfNeeded()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 255
    .local v0, "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 258
    .local v1, "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :try_start_9
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_33

    .line 259
    :try_start_c
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_30

    .line 261
    :try_start_12
    new-instance v2, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_33

    .line 272
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    :try_start_25
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v2

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2d

    throw v3

    .line 260
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0    # "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .end local v1    # "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .end local p1    # "asyncCall":Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 272
    .restart local v0    # "serviceFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/storage/IExternalStorageService;>;"
    .restart local v1    # "opFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .restart local p1    # "asyncCall":Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    :catchall_33
    move-exception v2

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_37
    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3e

    .line 275
    throw v2

    .line 274
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "oldConnection":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_4
    const-string v2, "StorageUserConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mUserId:I
    invoke-static {v4}, Lcom/android/server/storage/StorageUserConnection;->access$100(Lcom/android/server/storage/StorageUserConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    move-object v0, v2

    .line 229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 230
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v4, 0x1

    if-eqz v3, :cond_32

    .line 232
    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 233
    iput-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mRemoteFuture:Ljava/util/concurrent/CompletableFuture;

    .line 236
    :cond_32
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CompletableFuture;

    .line 237
    .local v3, "op":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 238
    nop

    .end local v3    # "op":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    goto :goto_38

    .line 239
    :cond_49
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->mOutstandingOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_64

    .line 242
    if-eqz v0, :cond_63

    .line 244
    :try_start_51
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->this$0:Lcom/android/server/storage/StorageUserConnection;

    # getter for: Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/storage/StorageUserConnection;->access$200(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b

    .line 249
    goto :goto_63

    .line 245
    :catch_5b
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageUserConnection"

    const-string v3, "Failed to unbind service"

    invoke-static {v2, v3, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    return-void

    .line 240
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public endSession(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 299
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;

    invoke-direct {v0, p1}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 304
    nop

    .line 305
    return-void

    .line 302
    :catch_a
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to end session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$waitForAsync$0$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "opFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 264
    invoke-direct {p0, p2, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->setResult(Landroid/os/Bundle;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public synthetic lambda$waitForAsync$1$StorageUserConnection$ActiveConnection(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;
    .registers 6
    .param p1, "asyncCall"    # Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    .param p2, "opFuture"    # Ljava/util/concurrent/CompletableFuture;
    .param p3, "service"    # Landroid/service/storage/IExternalStorageService;

    .line 263
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;

    invoke-direct {v1, p0, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;-><init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, p3, v0}, Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;->run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 267
    goto :goto_12

    .line 265
    :catch_e
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-object p2
.end method

.method public notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .registers 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 310
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;-><init>(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 316
    nop

    .line 317
    return-void

    .line 313
    :catch_a
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify volume state changed for vol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startSession(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/storage/StorageUserConnection$Session;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 281
    :try_start_0
    new-instance v0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;-><init>(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->waitForAsync(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_11
    .catchall {:try_start_0 .. :try_end_8} :catchall_f

    .line 290
    :try_start_8
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 293
    goto :goto_e

    .line 291
    :catch_c
    move-exception v0

    .line 294
    nop

    .line 295
    :goto_e
    return-void

    .line 289
    :catchall_f
    move-exception v0

    goto :goto_29

    .line 286
    :catch_11
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    :try_start_12
    new-instance v1, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .end local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    throw v1
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_f

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/storage/StorageUserConnection$ActiveConnection;
    .restart local p1    # "session":Lcom/android/server/storage/StorageUserConnection$Session;
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_29
    :try_start_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 293
    goto :goto_2e

    .line 291
    :catch_2d
    move-exception v1

    .line 294
    :goto_2e
    throw v0
.end method
