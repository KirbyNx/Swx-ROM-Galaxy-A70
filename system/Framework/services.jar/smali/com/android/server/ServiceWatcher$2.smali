.class Lcom/android/server/ServiceWatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServiceWatcher;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ServiceWatcher;

    .line 254
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 259
    return-void

    .line 261
    :cond_7
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "userId":I
    if-ne v1, v2, :cond_12

    .line 263
    return-void

    .line 266
    :cond_12
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x31af1c32

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2d

    const v4, 0x392cb822

    if-eq v3, v4, :cond_23

    :cond_22
    goto :goto_36

    :cond_23
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x0

    goto :goto_36

    :cond_2d
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move v2, v5

    :goto_36
    if-eqz v2, :cond_41

    if-eq v2, v5, :cond_3b

    goto :goto_47

    .line 271
    :cond_3b
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/ServiceWatcher;->onUserUnlocked(I)V

    .line 272
    goto :goto_47

    .line 268
    :cond_41
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2, v1}, Lcom/android/server/ServiceWatcher;->onUserSwitched(I)V

    .line 269
    nop

    .line 277
    :goto_47
    return-void
.end method
