.class Lcom/android/server/connectivity/KnoxLegacyVpn$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxLegacyVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KnoxLegacyVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KnoxLegacyVpn;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/KnoxLegacyVpn;

    .line 292
    iput-object p1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 297
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x122164c

    if-eq v2, v3, :cond_12

    :cond_11
    goto :goto_1b

    :cond_12
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_78

    .line 299
    :cond_1e
    const-string v1, "KnoxLegacyVpn"

    const-string v2, "Locale changed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mEnableLockdownVpn:Z
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$000(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 302
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownNotiTitleRes:I
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$100(Lcom/android/server/connectivity/KnoxLegacyVpn;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mLockdownNotiIconRes:I
    invoke-static {v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$200(Lcom/android/server/connectivity/KnoxLegacyVpn;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/KnoxLegacyVpn;->showNotificationForLockdown(II)V

    goto :goto_78

    .line 303
    :cond_3d
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mAlwaysOn:Z
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$300(Lcom/android/server/connectivity/KnoxLegacyVpn;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$400(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_61

    .line 305
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$400(Lcom/android/server/connectivity/KnoxLegacyVpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->updateAlwaysOnNotification(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$500(Lcom/android/server/connectivity/KnoxLegacyVpn;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_78

    .line 306
    :cond_61
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v1, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    iget-object v1, v1, Lcom/android/server/connectivity/KnoxLegacyVpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v1, :cond_78

    .line 308
    iget-object v1, p0, Lcom/android/server/connectivity/KnoxLegacyVpn$1;->this$0:Lcom/android/server/connectivity/KnoxLegacyVpn;

    # getter for: Lcom/android/server/connectivity/KnoxLegacyVpn;->mUserHandle:I
    invoke-static {v1}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$600(Lcom/android/server/connectivity/KnoxLegacyVpn;)I

    move-result v2

    # invokes: Lcom/android/server/connectivity/KnoxLegacyVpn;->showNotificationForLegacy(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/KnoxLegacyVpn;->access$700(Lcom/android/server/connectivity/KnoxLegacyVpn;I)V

    .line 314
    :cond_78
    :goto_78
    return-void
.end method
