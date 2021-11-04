.class Lcom/android/server/usb/UsbUI$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbUI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbUI;

    .line 231
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPortReceiver ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v0

    .line 236
    .local v0, "oldSourcePower":Z
    const-string/jumbo v2, "portStatus"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbPortStatus;

    .line 237
    .local v2, "status":Landroid/hardware/usb/UsbPortStatus;
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    goto :goto_36

    :cond_35
    const/4 v5, 0x0

    :goto_36
    # setter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbUI;->access$302(Lcom/android/server/usb/UsbUI;Z)Z

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldSourcePower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSourcePower="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v4}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eq v0, v1, :cond_75

    .line 240
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$400(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 241
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$3;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v3

    # invokes: Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbUI;->access$500(Lcom/android/server/usb/UsbUI;Z)V

    .line 244
    :cond_75
    return-void
.end method
