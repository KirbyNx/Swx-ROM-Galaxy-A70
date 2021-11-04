.class public Lcom/android/server/StorageManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStorageManagerService:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 307
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 318
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->servicesReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$100(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    .line 320
    :cond_a
    const/16 v0, 0x226

    if-ne p1, v0, :cond_14

    .line 321
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$200(Lcom/android/server/StorageManagerService;)V

    goto :goto_1d

    .line 322
    :cond_14
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 323
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->bootCompleted()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$300(Lcom/android/server/StorageManagerService;)V

    .line 325
    :cond_1d
    :goto_1d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onCleanupUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;I)V

    .line 357
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 311
    new-instance v0, Lcom/android/server/StorageManagerService;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    .line 312
    const-string/jumbo v1, "mount"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/StorageManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->start()V
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$000(Lcom/android/server/StorageManagerService;)V

    .line 314
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 361
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onStopUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$900(Lcom/android/server/StorageManagerService;I)V

    .line 362
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "userHandle"    # I

    .line 329
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # setter for: Lcom/android/server/StorageManagerService;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$402(Lcom/android/server/StorageManagerService;I)I

    .line 333
    const-class v0, Landroid/os/UserManagerInternal;

    .line 334
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 335
    .local v0, "umInternal":Landroid/os/UserManagerInternal;
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v1

    .line 337
    .local v1, "isSwitchedUserUnlocked":Z
    const-string v2, "StorageManagerService"

    if-eqz p1, :cond_23

    if-eqz v1, :cond_18

    goto :goto_23

    .line 342
    :cond_18
    const-string/jumbo v3, "onSwitchUser : Set Param for Remounting at User Unlock"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v2, 0x1

    # setter for: Lcom/android/server/StorageManagerService;->needToRemount:Z
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$602(Z)Z

    goto :goto_32

    .line 338
    :cond_23
    :goto_23
    const-string/jumbo v3, "onSwitchUser : Remount public volumes"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onUserSwitchingRemount()V
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$500(Lcom/android/server/StorageManagerService;)V

    .line 340
    const/4 v2, 0x0

    # setter for: Lcom/android/server/StorageManagerService;->needToRemount:Z
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$602(Z)Z

    .line 347
    :goto_32
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onUnlockUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;I)V

    .line 352
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 366
    iget-object v0, p0, Lcom/android/server/StorageManagerService$Lifecycle;->mStorageManagerService:Lcom/android/server/StorageManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    # invokes: Lcom/android/server/StorageManagerService;->snapshotAndMonitorLegacyStorageAppOp(Landroid/os/UserHandle;)V
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$1000(Lcom/android/server/StorageManagerService;Landroid/os/UserHandle;)V

    .line 367
    return-void
.end method
