.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PostNotificationRunnable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "key"    # Ljava/lang/String;

    .line 7589
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7590
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 7591
    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$NotificationManagerService$PostNotificationRunnable(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V
    .registers 6
    .param p1, "finalRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .line 7746
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$11900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    .line 7747
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v2, p2}, Lcom/android/server/notification/NotificationManagerService;->access$11800(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 7746
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public run()V
    .registers 19

    .line 7595
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7597
    const/4 v0, 0x0

    .line 7598
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_8
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7599
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    if-ge v4, v3, :cond_2e

    .line 7600
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7601
    .local v5, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 7602
    move-object v0, v5

    .line 7603
    goto :goto_2e

    .line 7599
    .end local v5    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 7606
    .end local v4    # "i":I
    :cond_2e
    :goto_2e
    if-nez v0, :cond_a9

    .line 7607
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find enqueued record for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_4d1

    .line 7786
    :try_start_48
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7787
    .local v4, "N":I
    const/4 v5, 0x0

    .line 7788
    .restart local v5    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_52
    if-ge v6, v4, :cond_76

    .line 7789
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    move-object v5, v7

    .line 7790
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 7791
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7792
    goto :goto_76

    .line 7788
    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 7797
    .end local v6    # "i":I
    :cond_76
    :goto_76
    if-eqz v5, :cond_a7

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a7

    .line 7798
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_90
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7799
    .local v7, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    # invokes: Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$12100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7800
    .end local v7    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_90

    .line 7801
    :cond_a0
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7803
    .end local v4    # "N":I
    .end local v5    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_48 .. :try_end_a8} :catchall_533

    .line 7608
    return-void

    .line 7611
    :cond_a9
    :try_start_a9
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;)Z
    invoke-static {v4, v0}, Lcom/android/server/notification/NotificationManagerService;->access$11200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 7612
    const-string v4, "NotificationService"

    const-string/jumbo v5, "notification blocked by assistant request"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_4d1

    .line 7786
    :try_start_b9
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7787
    .restart local v4    # "N":I
    const/4 v5, 0x0

    .line 7788
    .restart local v5    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c3
    if-ge v6, v4, :cond_e7

    .line 7789
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    move-object v5, v7

    .line 7790
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 7791
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7792
    goto :goto_e7

    .line 7788
    :cond_e4
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    .line 7797
    .end local v6    # "i":I
    :cond_e7
    :goto_e7
    if-eqz v5, :cond_118

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_118

    .line 7798
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_101
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7799
    .restart local v7    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    # invokes: Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$12100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7800
    .end local v7    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_101

    .line 7801
    :cond_111
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7803
    .end local v4    # "N":I
    .end local v5    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_118
    monitor-exit v2
    :try_end_119
    .catchall {:try_start_b9 .. :try_end_119} :catchall_533

    .line 7613
    return-void

    .line 7616
    :cond_11a
    :try_start_11a
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7617
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v4

    .line 7622
    .local v4, "isPackageSuspended":Z
    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 7623
    if-eqz v4, :cond_13a

    .line 7624
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$9400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 7626
    :cond_13a
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 7627
    .local v5, "old":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    move-object v11, v6

    .line 7628
    .local v11, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    move-object v12, v6

    .line 7631
    .local v12, "notification":Landroid/app/Notification;
    if-eqz v5, :cond_169

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    if-nez v6, :cond_15d

    goto :goto_169

    .line 7634
    :cond_15d
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    goto :goto_176

    .line 7632
    :cond_169
    :goto_169
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationInstanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$11300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/InstanceIdSequence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/service/notification/StatusBarNotification;->setInstanceId(Lcom/android/internal/logging/InstanceId;)V

    .line 7637
    :goto_176
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v6

    move v13, v6

    .line 7638
    .local v13, "index":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v13, :cond_1a5

    .line 7639
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7640
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$9400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 7641
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v6, v0}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 7642
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->postedNotificationLog(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v8, v0}, Lcom/android/server/notification/NotificationManagerService;->access$11400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    move-object v14, v5

    goto :goto_1dc

    .line 7644
    :cond_1a5
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    move-object v5, v8

    .line 7645
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v13, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7646
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$9400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7648
    iget v8, v12, Landroid/app/Notification;->flags:I

    .line 7649
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, 0x40

    or-int/2addr v8, v9

    iput v8, v12, Landroid/app/Notification;->flags:I

    .line 7650
    iput-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 7651
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8, v5, v0}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 7652
    .local v8, "isInterruptive":Z
    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 7653
    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    move-object v14, v5

    .line 7656
    .end local v5    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "isInterruptive":Z
    .local v14, "old":Lcom/android/server/notification/NotificationRecord;
    :goto_1dc
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7660
    iget v5, v12, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1f3

    .line 7661
    iget v5, v12, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, v12, Landroid/app/Notification;->flags:I

    .line 7665
    :cond_1f3
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 7666
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 7667
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v0}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v8

    .line 7669
    .local v8, "position":I
    const/4 v5, 0x0

    .line 7670
    .local v5, "buzzBeepBlinkLoggingCode":I
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v9

    if-nez v9, :cond_221

    .line 7671
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v9

    move v5, v9

    move v15, v5

    goto :goto_222

    .line 7670
    :cond_221
    move v15, v5

    .line 7674
    .end local v5    # "buzzBeepBlinkLoggingCode":I
    .local v15, "buzzBeepBlinkLoggingCode":I
    :goto_222
    invoke-virtual {v12}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v5, :cond_3ce

    .line 7675
    const/4 v5, 0x0

    .line 7676
    .local v5, "headUpDisabledByCall":Z
    const/4 v6, 0x0

    .line 7678
    .local v6, "headUpDisabledBySmartPopup":Z
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isInCall()Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$11500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eqz v7, :cond_246

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v7, v7, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    if-eqz v7, :cond_246

    .line 7679
    const-string v7, "NotificationService"

    const-string v9, "Disable HeadsUp by Call"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7680
    iget v7, v12, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v12, Landroid/app/Notification;->semFlags:I

    .line 7681
    const/4 v5, 0x1

    .line 7685
    :cond_246
    if-nez v5, :cond_2a4

    .line 7687
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eqz v7, :cond_2a4

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eqz v7, :cond_2a4

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_2a4

    .line 7688
    const-string v7, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MultiStar Ghost Floatiog on, List = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7689
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v9, "all"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29e

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a4

    .line 7690
    :cond_29e
    iget v7, v12, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v12, Landroid/app/Notification;->semFlags:I

    .line 7696
    :cond_2a4
    if-nez v5, :cond_37d

    .line 7698
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v7

    if-eqz v7, :cond_37a

    .line 7699
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 7700
    .local v7, "attrs":Landroid/os/Bundle;
    const-string/jumbo v9, "isHeadUp"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    move/from16 v17, v3

    const/4 v3, 0x4

    .end local v3    # "N":I
    .local v17, "N":I
    if-lt v10, v3, :cond_2c1

    const/4 v3, 0x1

    goto :goto_2c2

    :cond_2c1
    const/4 v3, 0x0

    :goto_2c2
    invoke-virtual {v7, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7701
    const-string/jumbo v3, "isUpdate"

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7702
    const-string/jumbo v3, "isInterrupt"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_2e6

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 7703
    invoke-virtual {v9}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v9

    iget v9, v9, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_2e6

    const/4 v9, 0x1

    goto :goto_2e7

    :cond_2e6
    const/4 v9, 0x0

    .line 7702
    :goto_2e7
    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7704
    const-string/jumbo v3, "visibility"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v9

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7705
    const-string/jumbo v3, "sound"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7706
    const-string/jumbo v3, "vibrate"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 7707
    const-string v3, "bubble"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v9

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7708
    const-string/jumbo v3, "smartPopup"

    invoke-virtual {v7, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7709
    const-string v3, "canBypassDnd"

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v9

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7711
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v3

    const/4 v9, 0x4

    if-lt v3, v9, :cond_37f

    .line 7712
    const/4 v3, 0x0

    .line 7714
    .local v3, "isCallNotification":Z
    const-string v9, "call"

    invoke-virtual {v0, v9}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33c

    iget-object v9, v12, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_33d

    .line 7715
    :cond_33c
    const/4 v3, 0x1

    .line 7718
    :cond_33d
    if-eqz v3, :cond_34d

    .line 7719
    const-string v9, "NotificationService"

    const-string v10, "Category call notification, so make not work edgelighting"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7720
    iget v9, v12, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v12, Landroid/app/Notification;->semFlags:I

    goto :goto_37f

    .line 7722
    :cond_34d
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;
    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v9

    invoke-virtual {v9, v11, v7}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_37f

    .line 7723
    const-string v9, "NotificationService"

    const-string v10, "Changed notification by edgelighting."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7724
    iget v9, v12, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v12, Landroid/app/Notification;->semFlags:I

    .line 7725
    iget v9, v12, Landroid/app/Notification;->semFlags:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, v12, Landroid/app/Notification;->semFlags:I

    .line 7726
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/notification/NotificationManagerService;->receiveFollowedNotification(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/notification/NotificationManagerService;->access$11600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    goto :goto_37f

    .line 7698
    .end local v7    # "attrs":Landroid/os/Bundle;
    .end local v17    # "N":I
    .local v3, "N":I
    :cond_37a
    move/from16 v17, v3

    .end local v3    # "N":I
    .restart local v17    # "N":I
    goto :goto_37f

    .line 7696
    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_37d
    move/from16 v17, v3

    .line 7733
    .end local v3    # "N":I
    .restart local v17    # "N":I
    :cond_37f
    :goto_37f
    if-eqz v14, :cond_388

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_38a

    :cond_388
    const/16 v16, 0x0

    :goto_38a
    move-object/from16 v3, v16

    .line 7734
    .local v3, "oldSbn":Landroid/service/notification/StatusBarNotification;
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v7

    invoke-virtual {v7, v0, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 7735
    if-eqz v3, :cond_3a5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3bc

    :cond_3a5
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7736
    # invokes: Lcom/android/server/notification/NotificationManagerService;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    invoke-static {v7, v0}, Lcom/android/server/notification/NotificationManagerService;->access$11700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    if-nez v7, :cond_3bc

    .line 7737
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v7

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v9, v1, v11}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v7, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3cd

    .line 7744
    :cond_3bc
    if-eqz v3, :cond_3cd

    .line 7745
    move-object v7, v0

    .line 7746
    .local v7, "finalRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;

    invoke-direct {v10, v1, v7, v11}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7749
    .end local v3    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "headUpDisabledByCall":Z
    .end local v6    # "headUpDisabledBySmartPopup":Z
    .end local v7    # "finalRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_3cd
    :goto_3cd
    goto :goto_422

    .line 7750
    .end local v17    # "N":I
    .local v3, "N":I
    :cond_3ce
    move/from16 v17, v3

    .end local v3    # "N":I
    .restart local v17    # "N":I
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not posting notification without small icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7751
    if-eqz v14, :cond_408

    iget-boolean v3, v14, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v3, :cond_408

    .line 7752
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 7753
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    .line 7752
    const/4 v6, 0x4

    invoke-virtual {v3, v0, v6, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 7754
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;

    invoke-direct {v5, v1, v11}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7764
    :cond_408
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7765
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7764
    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7768
    :goto_422
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-eqz v3, :cond_43a

    .line 7769
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7771
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    .line 7769
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Lcom/android/server/notification/ShortcutHelper;->maybeListenForShortcutChangesForBubbles(Lcom/android/server/notification/NotificationRecord;ZLandroid/os/Handler;)V

    .line 7774
    :cond_43a
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 7775
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeRegisterMessageSent(Lcom/android/server/notification/NotificationRecord;)V

    .line 7778
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$12000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SmartAlertController;

    move-result-object v3

    if-eqz v3, :cond_459

    .line 7779
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$12000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SmartAlertController;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V

    .line 7783
    :cond_459
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationRecordLogger;

    move-result-object v5

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7784
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/notification/NotificationManagerService;->getGroupInstanceId(Ljava/lang/String;)Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    .line 7783
    move-object v6, v0

    move-object v7, v14

    move v9, v15

    invoke-interface/range {v5 .. v10}, Lcom/android/server/notification/NotificationRecordLogger;->maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    :try_end_46f
    .catchall {:try_start_11a .. :try_end_46f} :catchall_4d1

    .line 7786
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "isPackageSuspended":Z
    .end local v8    # "position":I
    .end local v11    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "index":I
    .end local v14    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v15    # "buzzBeepBlinkLoggingCode":I
    .end local v17    # "N":I
    :try_start_46f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7787
    .local v0, "N":I
    const/4 v3, 0x0

    .line 7788
    .local v3, "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_479
    if-ge v4, v0, :cond_49d

    .line 7789
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    move-object v3, v5

    .line 7790
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49a

    .line 7791
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7792
    goto :goto_49d

    .line 7788
    :cond_49a
    add-int/lit8 v4, v4, 0x1

    goto :goto_479

    .line 7797
    .end local v4    # "i":I
    :cond_49d
    :goto_49d
    if-eqz v3, :cond_4ce

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4ce

    .line 7798
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7799
    .local v5, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    # invokes: Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$12100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7800
    .end local v5    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_4b7

    .line 7801
    :cond_4c7
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7803
    .end local v0    # "N":I
    .end local v3    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_4ce
    nop

    .line 7804
    monitor-exit v2

    .line 7805
    return-void

    .line 7786
    :catchall_4d1
    move-exception v0

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7787
    .local v3, "N":I
    const/4 v4, 0x0

    .line 7788
    .local v4, "enqueued":Lcom/android/server/notification/NotificationRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4dc
    if-ge v5, v3, :cond_500

    .line 7789
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    move-object v4, v6

    .line 7790
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4fd

    .line 7791
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7792
    goto :goto_500

    .line 7788
    :cond_4fd
    add-int/lit8 v5, v5, 0x1

    goto :goto_4dc

    .line 7797
    .end local v5    # "i":I
    :cond_500
    :goto_500
    if-eqz v4, :cond_531

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_531

    .line 7798
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 7799
    .local v6, "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    # invokes: Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->doNotificationCancelLocked()V
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->access$12100(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V

    .line 7800
    .end local v6    # "r":Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
    goto :goto_51a

    .line 7801
    :cond_52a
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mDelayedCancelations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7803
    .end local v3    # "N":I
    .end local v4    # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_531
    nop

    .end local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    throw v0

    .line 7804
    .restart local p0    # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    :catchall_533
    move-exception v0

    monitor-exit v2
    :try_end_535
    .catchall {:try_start_46f .. :try_end_535} :catchall_533

    throw v0
.end method
