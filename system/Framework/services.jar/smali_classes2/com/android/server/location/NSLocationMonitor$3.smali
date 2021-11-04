.class Lcom/android/server/location/NSLocationMonitor$3;
.super Landroid/service/notification/NotificationListenerService;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 811
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .registers 3

    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mRegisteredNotificationListener:Z
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$700(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 864
    const-string v0, "NSLocationMonitor"

    const-string v1, "Notification listener is disconnected so do not set the trim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    monitor-exit p0

    return-void

    .line 868
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/location/NSLocationMonitor$3;->setOnNotificationPostedTrim(I)V

    .line 869
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 870
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_3b

    .line 872
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerConnected for NotificationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$2000(Lcom/android/server/location/NSLocationMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 875
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NOTIFICATION_LISTENER_CONNECTED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 878
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 879
    return-void

    .line 870
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public onListenerDisconnected()V
    .registers 3

    .line 883
    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerDisconnected for NotificationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->access$2000(Lcom/android/server/location/NSLocationMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 886
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 887
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NOTIFICATION_LISTENER_DISCONNECTED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v1}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 889
    invoke-static {v0}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    .line 890
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 814
    if-eqz p1, :cond_3f

    .line 815
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 816
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->isForegroundService(Landroid/app/Notification;)Z
    invoke-static {v1, v0}, Lcom/android/server/location/NSLocationMonitor;->access$1700(Lcom/android/server/location/NSLocationMonitor;Landroid/app/Notification;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3e

    .line 819
    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->addForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v2}, Lcom/android/server/location/NSLocationMonitor;->access$1800(Lcom/android/server/location/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 824
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 828
    .local v4, "msg":Landroid/os/Message;
    sget-object v5, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NOTIFICATION_POSTED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v5}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    .line 829
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 831
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_3f

    .line 817
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3e
    :goto_3e
    return-void

    .line 834
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 838
    if-eqz p1, :cond_3f

    .line 839
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 840
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->isForegroundService(Landroid/app/Notification;)Z
    invoke-static {v1, v0}, Lcom/android/server/location/NSLocationMonitor;->access$1700(Lcom/android/server/location/NSLocationMonitor;Landroid/app/Notification;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_3e

    .line 843
    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/NSLocationMonitor$3;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->removeForegroundNotification(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v2}, Lcom/android/server/location/NSLocationMonitor;->access$1900(Lcom/android/server/location/NSLocationMonitor;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 848
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 849
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 852
    .local v4, "msg":Landroid/os/Message;
    sget-object v5, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->NOTIFICATION_REMOVED:Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;

    invoke-virtual {v5}, Landroid/location/LocationConstants$MSG_CODE_FROM_FRAMEWORK;->ordinal()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->what:I

    .line 853
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 855
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_3f

    .line 841
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3e
    :goto_3e
    return-void

    .line 858
    .end local v0    # "notification":Landroid/app/Notification;
    :cond_3f
    :goto_3f
    return-void
.end method
