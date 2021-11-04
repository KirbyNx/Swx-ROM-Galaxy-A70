.class Lcom/android/server/usb/UsbUI$4;
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

    .line 247
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->access$600(Lcom/android/server/usb/UsbUI;)Z

    move-result v0

    .line 250
    .local v0, "oldHiccupState":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    const-string/jumbo v2, "misc_event"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_15

    const/4 v3, 0x1

    :cond_15
    # setter for: Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z
    invoke-static {v1, v3}, Lcom/android/server/usb/UsbUI;->access$602(Lcom/android/server/usb/UsbUI;Z)Z

    .line 253
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$600(Lcom/android/server/usb/UsbUI;)Z

    move-result v1

    if-eq v0, v1, :cond_55

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldHiccupState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsHiccupState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    .line 255
    # getter for: Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$600(Lcom/android/server/usb/UsbUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    const-string v2, "UsbUI"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$4;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->access$600(Lcom/android/server/usb/UsbUI;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "CD"

    goto :goto_52

    :cond_50
    const-string v2, "CR"

    :goto_52
    # invokes: Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbUI;->access$700(Lcom/android/server/usb/UsbUI;Ljava/lang/String;)V

    .line 258
    :cond_55
    return-void
.end method
