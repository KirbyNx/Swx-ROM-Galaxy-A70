.class Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 160
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 163
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 165
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_24

    const-string/jumbo v1, "touchpad_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 167
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const-string v2, "false"

    # invokes: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$500(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mIsTouchpadEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->access$402(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)Z

    .line 169
    :cond_24
    return-void
.end method
