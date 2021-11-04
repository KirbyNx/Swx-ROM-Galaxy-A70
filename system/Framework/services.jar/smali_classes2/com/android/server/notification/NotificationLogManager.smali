.class public Lcom/android/server/notification/NotificationLogManager;
.super Ljava/lang/Object;
.source "NotificationLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationLogManager$LogerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "android.service.notification.NotificationLogListener"

.field private static final CONPONENT:Ljava/lang/String; = "com.android.systemui.noticenter.NotificationLogListener"

.field public static final REASON_DND_AUTOMATIC_ACTIVATION:I = 0x20

.field public static final REASON_NOTI_BLOCKED:I = 0x4

.field public static final REASON_NOTI_CANCELED_BY_APP:I = 0x1

.field public static final REASON_NOTI_CANCELED_BY_LISTENER:I = 0x2

.field public static final REASON_NOTI_CHANNEL_DELETE_AND_CREATE:I = 0x40

.field public static final REASON_NOTI_MUTE:I = 0x10

.field public static final REASON_NOTI_PKG_SUSPENDED:I = 0x8

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NotificationLogManager"

.field private static mLogManagerEventsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/notification/NotificationLogManager;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogListener:Lcom/android/internal/notification/INotificationLogListener;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationLogManager;->mLogManagerEventsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationLogManager;->DEBUG:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/android/server/notification/NotificationLogManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationLogManager$1;-><init>(Lcom/android/server/notification/NotificationLogManager;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 64
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    :cond_1f
    new-instance v0, Lcom/android/server/notification/NotificationLogManager$LogerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationLogManager$LogerHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mHandler:Landroid/os/Handler;

    .line 69
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    if-nez v0, :cond_31

    .line 70
    invoke-direct {p0}, Lcom/android/server/notification/NotificationLogManager;->startService()V

    .line 72
    :cond_31
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationLogManager;)Lcom/android/internal/notification/INotificationLogListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationLogManager;

    .line 39
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationLogManager;Lcom/android/internal/notification/INotificationLogListener;)Lcom/android/internal/notification/INotificationLogListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationLogManager;
    .param p1, "x1"    # Lcom/android/internal/notification/INotificationLogListener;

    .line 39
    iput-object p1, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationLogManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationLogManager;

    .line 39
    invoke-direct {p0}, Lcom/android/server/notification/NotificationLogManager;->stopService()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationLogManager;Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationLogManager;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationLogManager;->notifyLog(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/notification/NotificationLogManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/android/server/notification/NotificationLogManager;->sInstance:Lcom/android/server/notification/NotificationLogManager;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/android/server/notification/NotificationLogManager;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationLogManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/notification/NotificationLogManager;->sInstance:Lcom/android/server/notification/NotificationLogManager;

    .line 78
    :cond_b
    sget-object v0, Lcom/android/server/notification/NotificationLogManager;->sInstance:Lcom/android/server/notification/NotificationLogManager;

    return-object v0
.end method

.method private notifyLog(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 169
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "notifyLog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;

    invoke-direct {v1, p1}, Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 172
    .local v1, "sbnHodler":Lcom/android/server/notification/NotificationLogManager$StatusBarNotificationHolder;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    if-eqz v2, :cond_16

    .line 173
    iget-object v2, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    invoke-interface {v2, v1, p2}, Lcom/android/internal/notification/INotificationLogListener;->notifyNotificationLog(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/os/Bundle;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    .line 177
    :cond_16
    goto :goto_2f

    .line 175
    :catch_17
    move-exception v2

    .line 176
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify log : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private startService()V
    .registers 8

    .line 150
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.noticenter.NotificationLogListener"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, Lcom/android/server/notification/NotificationLogManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/notification/NotificationLogManager;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** NotificationLogManager: can\'t bind to -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3a
    return-void
.end method

.method private stopService()V
    .registers 3

    .line 161
    const-string v0, "NotificationLogManager"

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mLogListener:Lcom/android/internal/notification/INotificationLogListener;

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/NotificationLogManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_14

    .line 164
    iget-object v1, p0, Lcom/android/server/notification/NotificationLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    :cond_14
    return-void
.end method


# virtual methods
.method public clearLogEventsMap(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " clearLogEventsMap pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationLogManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lcom/android/server/notification/NotificationLogManager;->mLogManagerEventsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    .local v0, "value":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " return value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public notifyChannelEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "reason"    # I

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string/jumbo v1, "pkgString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "channelNameString"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyChannelEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " channelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationLogManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/server/notification/NotificationLogManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/NotificationLogManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationLogManager$3;-><init>(Lcom/android/server/notification/NotificationLogManager;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public notifyDndLogEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string/jumbo v1, "pkgString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDndLogEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationLogManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/server/notification/NotificationLogManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/NotificationLogManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationLogManager$2;-><init>(Lcom/android/server/notification/NotificationLogManager;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public notifyMuteReasonLogEvent(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "buzz"    # I
    .param p3, "beep"    # I

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string/jumbo v1, "pkgString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "buzzReason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v1, "beepReason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMuteReasonLogEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " buzz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationLogManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/android/server/notification/NotificationLogManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/notification/NotificationLogManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationLogManager$4;-><init>(Lcom/android/server/notification/NotificationLogManager;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public notifyNotificationLogEvent(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 224
    sget-object v0, Lcom/android/server/notification/NotificationLogManager;->mLogManagerEventsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 225
    .local v0, "compareEvent":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyNotificationLogEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " compareEvent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NotificationLogManager"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    if-nez v1, :cond_39

    goto :goto_54

    .line 243
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already has event notifyNotificationLogEvent pkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 227
    :cond_54
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New notifyNotificationLogEvent pkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v0, :cond_75

    .line 229
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr p2, v1

    .line 231
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added  notifyNotificationLogEvent pkg = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v1, Lcom/android/server/notification/NotificationLogManager;->mLogManagerEventsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v1, "extra":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    const-string/jumbo v2, "pkgString"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/notification/NotificationLogManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/notification/NotificationLogManager$5;

    invoke-direct {v3, p0, p3, v1}, Lcom/android/server/notification/NotificationLogManager$5;-><init>(Lcom/android/server/notification/NotificationLogManager;Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    .end local v1    # "extra":Landroid/os/Bundle;
    nop

    .line 246
    :goto_b4
    return-void
.end method
