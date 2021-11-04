.class Lcom/android/server/notification/SmartAlertController$2;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;

    .line 125
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 129
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 130
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/SmartAlertController;->access$402(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 131
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 133
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_47

    .line 134
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 135
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->semMissedCount:I

    if-lez v5, :cond_44

    .line 136
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v0, v5, :cond_44

    .line 137
    const-string v5, "SmartAlertController"

    const-string v6, "SmartAlert - Found Missed Event"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v5, v6}, Lcom/android/server/notification/SmartAlertController;->access$402(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 139
    goto :goto_47

    .line 133
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 144
    .end local v3    # "i":I
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_47
    :goto_47
    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/notification/SmartAlertController;->access$500(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v3

    if-nez v3, :cond_5c

    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v3}, Lcom/android/server/notification/SmartAlertController;->access$400(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 145
    iget-object v3, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v3}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    .line 147
    .end local v2    # "N":I
    :cond_5c
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_7 .. :try_end_60} :catchall_5e

    throw v2
.end method
