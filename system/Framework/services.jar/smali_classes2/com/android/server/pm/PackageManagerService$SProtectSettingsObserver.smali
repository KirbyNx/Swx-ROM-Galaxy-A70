.class final Lcom/android/server/pm/PackageManagerService$SProtectSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SProtectSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 10197
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10198
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 10199
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 10202
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 10204
    # getter for: Lcom/android/server/pm/PackageManagerService;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10206
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_lock_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    move v2, v1

    :cond_21
    move v0, v2

    .line 10207
    .local v0, "isAppLockEnabled":Z
    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mHiddenPackages:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$2402(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 10208
    # setter for: Lcom/android/server/pm/PackageManagerService;->mLockedPackages:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$2502(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 10209
    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eq v1, v0, :cond_3a

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10210
    :cond_3a
    if-eqz v0, :cond_53

    .line 10211
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "ssecure_hidden_apps_packages"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getSprotectList(Ljava/lang/String;)Landroid/util/ArraySet;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    # setter for: Lcom/android/server/pm/PackageManagerService;->mHiddenPackages:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$2402(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 10212
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$SProtectSettingsObserver;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "applock_locked_apps_packages"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getSprotectList(Ljava/lang/String;)Landroid/util/ArraySet;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    # setter for: Lcom/android/server/pm/PackageManagerService;->mLockedPackages:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$2502(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    .line 10214
    :cond_53
    const-string v1, "SProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnChange AppLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAppLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_e .. :try_end_79} :catchall_87

    .line 10216
    nop

    .end local v0    # "isAppLockEnabled":Z
    # getter for: Lcom/android/server/pm/PackageManagerService;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 10217
    nop

    .line 10218
    return-void

    .line 10216
    :catchall_87
    move-exception v0

    # getter for: Lcom/android/server/pm/PackageManagerService;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2300()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 10217
    throw v0
.end method
