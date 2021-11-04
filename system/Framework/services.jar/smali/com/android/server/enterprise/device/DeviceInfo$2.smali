.class Lcom/android/server/enterprise/device/DeviceInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .line 224
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 227
    const-string/jumbo v0, "isActive"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 228
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$102(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    goto :goto_2e

    .line 230
    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->access$202(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    .line 231
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/device/DeviceInfo;->access$302(Lcom/android/server/enterprise/device/DeviceInfo;J)J

    .line 232
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # setter for: Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->access$102(Lcom/android/server/enterprise/device/DeviceInfo;Z)Z

    .line 235
    :cond_2e
    :goto_2e
    return-void
.end method
