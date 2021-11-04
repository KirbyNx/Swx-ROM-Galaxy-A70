.class Lcom/android/server/notification/NotificationLogManager$1$1;
.super Ljava/lang/Object;
.source "NotificationLogManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationLogManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationLogManager$1;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationLogManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationLogManager$1;

    .line 88
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager$1$1;->this$1:Lcom/android/server/notification/NotificationLogManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 91
    const-string v0, "NotificationLogManager"

    const-string v1, "binderDied!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$1$1;->this$1:Lcom/android/server/notification/NotificationLogManager$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationLogManager$1;->this$0:Lcom/android/server/notification/NotificationLogManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationLogManager;->access$002(Lcom/android/server/notification/NotificationLogManager;Lcom/android/internal/notification/INotificationLogListener;)Lcom/android/internal/notification/INotificationLogListener;

    .line 93
    return-void
.end method
