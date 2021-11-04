.class Lcom/android/server/notification/SmartAlertController$5;
.super Landroid/content/BroadcastReceiver;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SmartAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;

    .line 189
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SmartAlertController"

    if-eqz v1, :cond_1f

    .line 194
    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$502(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v1}, Lcom/android/server/notification/SmartAlertController;->unregisterListener()V

    goto :goto_5a

    .line 197
    :cond_1f
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 198
    const-string v1, "ACTION_SCREEN_OFF"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$502(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 200
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    # getter for: Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z
    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->access$400(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 201
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v1}, Lcom/android/server/notification/SmartAlertController;->registerListener()V

    goto :goto_5a

    .line 203
    :cond_40
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 204
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$5;->this$0:Lcom/android/server/notification/SmartAlertController;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 205
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Lcom/android/server/notification/SmartAlertController;->mInCall:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/SmartAlertController;->access$102(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 207
    :cond_5a
    :goto_5a
    return-void
.end method
