.class Lcom/android/server/enterprise/device/DeviceInfo$1;
.super Landroid/os/Handler;
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

    .line 131
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    goto :goto_d

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    # invokes: Lcom/android/server/enterprise/device/DeviceInfo;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->access$000(Lcom/android/server/enterprise/device/DeviceInfo;)V

    .line 136
    nop

    .line 141
    :goto_d
    return-void
.end method
