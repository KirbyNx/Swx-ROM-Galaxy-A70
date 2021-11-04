.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationData"
.end annotation


# static fields
.field static final EXTRA_KEY_NOTIFICATION_ACTIONS:Ljava/lang/String; = "noti_actions"

.field static final KEY_BUBBLE:Ljava/lang/String; = "bubble"

.field static final KEY_COLOR:Ljava/lang/String; = "color"

.field static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field static final KEY_COMPONENT_TIME:Ljava/lang/String; = "component_time"

.field static final KEY_CONTENT_INTENT:Ljava/lang/String; = "content_intent"

.field static final KEY_FLAG:Ljava/lang/String; = "flag"

.field static final KEY_GROUP_KEY:Ljava/lang/String; = "group_key"

.field static final KEY_IS_HEADUP:Ljava/lang/String; = "isHeadup"

.field static final KEY_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field static final KEY_NOTIFICATION_COLOR:Ljava/lang/String; = "notification_color"

.field static final KEY_NOTI_CATEGORY:Ljava/lang/String; = "category"

.field static final KEY_NOTI_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field static final KEY_NOTI_GROUPING_ALERT:Ljava/lang/String; = "alert_group"

.field static final KEY_NOTI_HAS_AUDIBLE_ALERT:Ljava/lang/String; = "audible_alert"

.field static final KEY_NOTI_ID:Ljava/lang/String; = "noti_id"

.field static final KEY_NOTI_KEY:Ljava/lang/String; = "noti_key"

.field static final KEY_NOTI_TAG:Ljava/lang/String; = "noti_tag"

.field static final KEY_NOTI_VISIVILITY:Ljava/lang/String; = "noti_visiblity"

.field static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field static final KEY_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field static final KEY_SUB_TEXT:Ljava/lang/String; = "subText"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TICKER_TEXT:Ljava/lang/String; = "tickerText"

.field static final KEY_TITLE_TEXT:Ljava/lang/String; = "titleText"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field mNotificationInfo:Landroid/os/Bundle;

.field mTime:J


# direct methods
.method constructor <init>(JLandroid/os/Bundle;)V
    .registers 4
    .param p1, "time"    # J
    .param p3, "notificationInfo"    # Landroid/os/Bundle;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-wide p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 229
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 230
    return-void
.end method


# virtual methods
.method public isOnGoing()Z
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " NotificationData { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v1, "tag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "noti_tag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
