.class Lcom/android/server/notification/NotificationManagerService$19;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$doit:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 9567
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$doit:Z

    iput-object p11, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(III)Z
    .registers 5
    .param p0, "mustHaveFlags"    # I
    .param p1, "mustNotHaveFlags"    # I
    .param p2, "flags"    # I

    .line 9583
    and-int v0, p2, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    .line 9584
    return v1

    .line 9586
    :cond_6
    and-int v0, p2, p1

    if-eqz v0, :cond_b

    .line 9587
    return v1

    .line 9589
    :cond_b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .registers 39

    .line 9570
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object v9, v0

    .line 9571
    .local v9, "listenerName":Ljava/lang/String;
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    invoke-static/range {v2 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 9577
    iget-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$doit:Z

    if-nez v0, :cond_25

    .line 9578
    return-void

    .line 9581
    :cond_25
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9582
    :try_start_2a
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$mustHaveFlags:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$mustNotHaveFlags:I

    new-instance v4, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$19$cJUZYZgZs9taKGXwsjBZh6Cr3WM;

    invoke-direct {v4, v0, v3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$19$cJUZYZgZs9taKGXwsjBZh6Cr3WM;-><init>(II)V

    move-object/from16 v17, v4

    .line 9591
    .local v17, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    const/4 v15, 0x1

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    const/16 v18, 0x0

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    const/16 v20, 0x0

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    const/16 v23, 0x1

    move-object/from16 v16, v0

    move/from16 v19, v3

    move/from16 v21, v4

    move-object/from16 v22, v9

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    invoke-static/range {v10 .. v23}, Lcom/android/server/notification/NotificationManagerService;->access$13300(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 9595
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingUid:I

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$callingPid:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    const/16 v29, 0x1

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$channelId:Ljava/lang/String;

    const/16 v32, 0x0

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    const/16 v34, 0x0

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$reason:I

    const/16 v37, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v17

    move/from16 v33, v8

    move/from16 v35, v10

    move-object/from16 v36, v9

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    invoke-static/range {v24 .. v37}, Lcom/android/server/notification/NotificationManagerService;->access$13300(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 9599
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z

    .line 9600
    nop

    .end local v17    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    monitor-exit v2

    .line 9601
    return-void

    .line 9600
    :catchall_98
    move-exception v0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_2a .. :try_end_9a} :catchall_98

    throw v0
.end method
