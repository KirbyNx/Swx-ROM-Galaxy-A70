.class Lcom/android/server/policy/PhoneWindowManagerExt$8;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 4254
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$8;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4258
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 4259
    const-string/jumbo v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4260
    .local v1, "batteryLevel":I
    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 4262
    .local v3, "batteryStatus":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_BATTERY_CHANGED - Level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhoneWindowManagerExt"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$8;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLowBattery:Z
    invoke-static {v5, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 4265
    const/4 v2, 0x5

    if-gt v1, v2, :cond_4a

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4a

    .line 4267
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$8;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    # setter for: Lcom/android/server/policy/PhoneWindowManagerExt;->mIsLowBattery:Z
    invoke-static {v2, v4}, Lcom/android/server/policy/PhoneWindowManagerExt;->access$6002(Lcom/android/server/policy/PhoneWindowManagerExt;Z)Z

    .line 4270
    .end local v1    # "batteryLevel":I
    .end local v3    # "batteryStatus":I
    :cond_4a
    return-void
.end method
