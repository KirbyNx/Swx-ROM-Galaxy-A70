.class Lcom/android/server/usb/UsbUI$9;
.super Landroid/os/UEventObserver;
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

    .line 458
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 461
    const-string v0, "SWITCH_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "switchState":Ljava/lang/String;
    const-string v1, "CCIC"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "ccic":Ljava/lang/String;
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    return-void

    .line 468
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUEvent(USB CCIC): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsbUI"

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v2, "115"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 472
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const v3, 0x1040cd3

    # invokes: Lcom/android/server/usb/UsbUI;->makeLongToast(I)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbUI;->access$1500(Lcom/android/server/usb/UsbUI;I)V

    .line 473
    iget-object v4, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v5, 0x6c

    const v6, 0x1040cd4

    const v7, 0x1040cd3

    const-wide/16 v8, 0xe

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_57

    .line 477
    :cond_48
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 478
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v3, 0x6c

    # invokes: Lcom/android/server/usb/UsbUI;->cancelNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbUI;->access$1600(Lcom/android/server/usb/UsbUI;I)V

    .line 481
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z
    invoke-static {v2}, Lcom/android/server/usb/UsbUI;->access$1700(Lcom/android/server/usb/UsbUI;)Z

    move-result v2

    .line 482
    .local v2, "prevIsUsbPortWet":Z
    const-string v3, "WATER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 483
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbUI;->access$1702(Lcom/android/server/usb/UsbUI;Z)Z

    goto :goto_7a

    .line 484
    :cond_6c
    const-string v3, "DRY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 485
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbUI;->access$1702(Lcom/android/server/usb/UsbUI;Z)Z

    .line 488
    :cond_7a
    :goto_7a
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->access$1700(Lcom/android/server/usb/UsbUI;)Z

    move-result v3

    if-eq v3, v2, :cond_8b

    .line 489
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$9;->this$0:Lcom/android/server/usb/UsbUI;

    # getter for: Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbUI;->access$1700(Lcom/android/server/usb/UsbUI;)Z

    move-result v4

    # invokes: Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbUI;->access$1800(Lcom/android/server/usb/UsbUI;Z)V

    .line 491
    :cond_8b
    return-void
.end method
