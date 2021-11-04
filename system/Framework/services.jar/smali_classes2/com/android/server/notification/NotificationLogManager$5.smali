.class Lcom/android/server/notification/NotificationLogManager$5;
.super Ljava/lang/Object;
.source "NotificationLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationLogManager;->notifyNotificationLogEvent(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationLogManager;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationLogManager;Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationLogManager;

    .line 236
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager$5;->this$0:Lcom/android/server/notification/NotificationLogManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationLogManager$5;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/server/notification/NotificationLogManager$5;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$5;->this$0:Lcom/android/server/notification/NotificationLogManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationLogManager$5;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/server/notification/NotificationLogManager$5;->val$extra:Landroid/os/Bundle;

    # invokes: Lcom/android/server/notification/NotificationLogManager;->notifyLog(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationLogManager;->access$200(Lcom/android/server/notification/NotificationLogManager;Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V

    .line 240
    return-void
.end method
