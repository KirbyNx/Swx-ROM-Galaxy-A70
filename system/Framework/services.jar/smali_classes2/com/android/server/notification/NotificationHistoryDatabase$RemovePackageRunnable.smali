.class final Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationHistoryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemovePackageRunnable"
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V
    .registers 3
    .param p2, "pkg"    # Ljava/lang/String;

    .line 396
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    .line 398
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 402
    # getter for: Lcom/android/server/notification/NotificationHistoryDatabase;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemovePackageRunnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotiHistoryDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1e
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    # getter for: Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$100(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 405
    :try_start_25
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 408
    .local v1, "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 409
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_80

    .line 411
    .local v2, "af":Landroid/util/AtomicFile;
    :try_start_42
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 412
    .local v3, "notifications":Landroid/app/NotificationHistory;
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 413
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 412
    # invokes: Lcom/android/server/notification/NotificationHistoryDatabase;->readLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$600(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 414
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->mPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/NotificationHistory;->removeNotificationsFromWrite(Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    # invokes: Lcom/android/server/notification/NotificationHistoryDatabase;->writeLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->access$400(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5d} :catch_5e
    .catchall {:try_start_42 .. :try_end_5d} :catchall_80

    .line 419
    .end local v3    # "notifications":Landroid/app/NotificationHistory;
    goto :goto_7d

    .line 416
    :catch_5e
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5f
    const-string v4, "NotiHistoryDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on pkg removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7d
    goto :goto_36

    .line 421
    .end local v1    # "historyFileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/AtomicFile;>;"
    :cond_7e
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_5f .. :try_end_82} :catchall_80

    throw v1
.end method
