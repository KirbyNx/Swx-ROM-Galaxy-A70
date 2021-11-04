.class final Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;
.super Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.source "NotificationLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarNotificationHolder"
.end annotation


# instance fields
.field private mValue:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .registers 2
    .param p1, "value"    # Landroid/service/notification/StatusBarNotification;

    .line 136
    invoke-direct {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 138
    return-void
.end method


# virtual methods
.method public get()Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 144
    .local v0, "value":Landroid/service/notification/StatusBarNotification;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    .line 145
    return-object v0
.end method
