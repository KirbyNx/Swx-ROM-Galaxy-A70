.class Lcom/android/server/StorageManagerService$13;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 3395
    iput-object p1, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 3406
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 3398
    iget-object v0, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3399
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$13;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService;->access$5600(Lcom/android/server/StorageManagerService;I)V

    .line 3400
    monitor-exit v0

    .line 3401
    return-void

    .line 3400
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
