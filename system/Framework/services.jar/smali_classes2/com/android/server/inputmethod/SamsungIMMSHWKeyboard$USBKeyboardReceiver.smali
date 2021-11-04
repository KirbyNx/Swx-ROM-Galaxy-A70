.class Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SamsungIMMSHWKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "USBKeyboardReceiver"
.end annotation


# static fields
.field private static final USB_INTENT_EXTRA_DEVICE_COUNTER:Ljava/lang/String; = "android.intent.extra.device_counter"

.field private static final USB_INTENT_EXTRA_DEVICE_STATE:Ljava/lang/String; = "android.intent.extra.device_state"


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 133
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 142
    .local v1, "usbDevice":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    .line 143
    .local v2, "interfaceCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() USBK interfaceCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungIMMSHWKeyboard"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    if-ge v3, v2, :cond_ce

    .line 145
    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    .line 146
    .local v7, "usbInterface":Landroid/hardware/usb/UsbInterface;
    if-nez v7, :cond_4b

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() usbInterface is null, index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto/16 :goto_ca

    .line 151
    :cond_4b
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v8

    .line 152
    .local v8, "clazz":I
    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v9

    .line 154
    .local v9, "protocol":I
    const/4 v10, 0x3

    if-ne v8, v10, :cond_ca

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ca

    .line 155
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 156
    iget-object v10, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v10}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v10

    if-gez v10, :cond_8c

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ACTION_USB_DEVICE_ATTACHED] change mUSBKeyboardCount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v11}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "--> 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v10, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v10, v11}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$002(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 160
    :cond_8c
    iget-object v10, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # operator++ for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v10}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$008(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    goto :goto_ce

    .line 161
    :cond_92
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ce

    .line 162
    iget-object v11, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v11}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v11

    if-ge v11, v10, :cond_c4

    .line 163
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ACTION_USB_DEVICE_DETACHED] change mUSBKeyboardCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v12}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "--> 1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v11, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v11, v10}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$002(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 166
    :cond_c4
    iget-object v10, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # operator-- for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v10}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$010(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    goto :goto_ce

    .line 144
    .end local v7    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    .end local v8    # "clazz":I
    .end local v9    # "protocol":I
    :cond_ca
    :goto_ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_28

    .line 172
    .end local v3    # "i":I
    :cond_ce
    :goto_ce
    const/4 v3, 0x0

    .line 173
    .local v3, "isKeyboardAttached":Z
    iget-object v7, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I
    invoke-static {v7}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$100(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    if-eq v7, v8, :cond_de

    .line 174
    const/4 v3, 0x1

    .line 176
    :cond_de
    iget-object v7, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v7}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v8

    # setter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I
    invoke-static {v7, v8}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$102(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 178
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_116

    .line 179
    if-eqz v3, :cond_14a

    .line 180
    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v6, 0x4

    # |= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$276(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() USBK Connect C : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->connectedHWKeyboard()V
    invoke-static {v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$300(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    goto :goto_14a

    .line 184
    :cond_116
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 185
    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v5

    if-nez v5, :cond_14a

    .line 186
    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    const/4 v6, -0x5

    # &= operator for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v5, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$272(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)I

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() USBK DisConnect C : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$000(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v5, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # invokes: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->updateBrightnessMode()V
    invoke-static {v5}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$400(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 191
    :cond_14a
    :goto_14a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() keyboardState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$USBKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    # getter for: Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I
    invoke-static {v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->access$200(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method
