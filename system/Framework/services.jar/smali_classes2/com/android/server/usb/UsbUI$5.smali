.class Lcom/android/server/usb/UsbUI$5;
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

    .line 261
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyModeReceiver ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string/jumbo v0, "reason"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "reason":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_50

    .line 268
    const-string v2, "EmergencyMode enabled"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->access$402(Lcom/android/server/usb/UsbUI;Z)Z

    .line 270
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$800(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$900(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 271
    :cond_4a
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # invokes: Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->access$500(Lcom/android/server/usb/UsbUI;Z)V

    goto :goto_7a

    .line 273
    :cond_50
    const/4 v3, 0x5

    if-ne v0, v3, :cond_7a

    .line 274
    const-string v3, "EmergencyMode disabled"

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # setter for: Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->access$402(Lcom/android/server/usb/UsbUI;Z)Z

    .line 276
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSourcePower:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$300(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$800(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$900(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 277
    :cond_75
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$5;->this$0:Lcom/android/server/usb/UsbUI;

    # invokes: Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->access$500(Lcom/android/server/usb/UsbUI;Z)V

    .line 280
    :cond_7a
    :goto_7a
    return-void
.end method
