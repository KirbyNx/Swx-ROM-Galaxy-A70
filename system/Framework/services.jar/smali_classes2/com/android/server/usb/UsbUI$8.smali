.class Lcom/android/server/usb/UsbUI$8;
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

    .line 427
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUEvent(USB Control): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "type":Ljava/lang/String;
    const-string v1, "STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "usberr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 436
    const-string v2, "WORDS"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x8d9698

    if-eq v4, v5, :cond_3d

    :cond_3c
    goto :goto_46

    :cond_3d
    const-string v4, "abnormal_reset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v3, 0x0

    :goto_46
    if-eqz v3, :cond_49

    goto :goto_78

    .line 438
    :cond_49
    const-string v2, "ADD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 439
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const v3, 0x1040c88

    # invokes: Lcom/android/server/usb/UsbUI;->makeLongToast(I)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbUI;->access$1500(Lcom/android/server/usb/UsbUI;I)V

    .line 440
    iget-object v4, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v5, 0x6d

    const v6, 0x1040c87

    const v7, 0x1040c86

    const-wide/16 v8, 0xc

    # invokes: Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V
    invoke-static/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->access$1200(Lcom/android/server/usb/UsbUI;IIIJ)V

    goto :goto_78

    .line 444
    :cond_69
    const-string v2, "REMOVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 445
    iget-object v2, p0, Lcom/android/server/usb/UsbUI$8;->this$0:Lcom/android/server/usb/UsbUI;

    const/16 v3, 0x6d

    # invokes: Lcom/android/server/usb/UsbUI;->cancelNotification(I)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbUI;->access$1600(Lcom/android/server/usb/UsbUI;I)V

    .line 453
    :cond_78
    :goto_78
    return-void
.end method
