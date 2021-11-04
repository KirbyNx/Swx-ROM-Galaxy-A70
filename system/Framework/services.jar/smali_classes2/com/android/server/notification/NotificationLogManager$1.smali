.class Lcom/android/server/notification/NotificationLogManager$1;
.super Ljava/lang/Object;
.source "NotificationLogManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationLogManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationLogManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationLogManager;

    .line 81
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 107
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "onBindingDied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    # invokes: Lcom/android/server/notification/NotificationLogManager;->stopService()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationLogManager;->access$100(Lcom/android/server/notification/NotificationLogManager;)V

    .line 109
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 83
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz p2, :cond_30

    .line 85
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    invoke-static {p2}, Lcom/android/internal/notification/INotificationLogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/notification/INotificationLogListener;

    move-result-object v1

    # setter for: Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationLogManager;->access$002(Lcom/android/server/notification/NotificationLogManager;Lcom/android/internal/notification/INotificationLogListener;)Lcom/android/internal/notification/INotificationLogListener;

    .line 86
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    # getter for: Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;
    invoke-static {v0}, Lcom/android/server/notification/NotificationLogManager;->access$000(Lcom/android/server/notification/NotificationLogManager;)Lcom/android/internal/notification/INotificationLogListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 88
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    # getter for: Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;
    invoke-static {v0}, Lcom/android/server/notification/NotificationLogManager;->access$000(Lcom/android/server/notification/NotificationLogManager;)Lcom/android/internal/notification/INotificationLogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/notification/INotificationLogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationLogManager$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationLogManager$1$1;-><init>(Lcom/android/server/notification/NotificationLogManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_2f

    .line 96
    goto :goto_30

    .line 95
    :catch_2f
    move-exception v0

    .line 99
    :cond_30
    :goto_30
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 102
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationLogManager;->access$002(Lcom/android/server/notification/NotificationLogManager;Lcom/android/internal/notification/INotificationLogListener;)Lcom/android/internal/notification/INotificationLogListener;

    .line 104
    return-void
.end method
