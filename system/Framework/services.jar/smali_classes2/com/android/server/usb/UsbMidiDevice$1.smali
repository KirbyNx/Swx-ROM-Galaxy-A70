.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 78
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    .line 114
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 9
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 82
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 83
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v1

    .line 84
    .local v1, "inputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v2

    .line 85
    .local v2, "outputPorts":I
    const/4 v3, 0x0

    .line 87
    .local v3, "hasOpenPorts":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_1b

    .line 88
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 89
    const/4 v3, 0x1

    .line 90
    goto :goto_1b

    .line 87
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 94
    .end local v4    # "i":I
    :cond_1b
    :goto_1b
    if-nez v3, :cond_2b

    .line 95
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1e
    if-ge v4, v2, :cond_2b

    .line 96
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_28

    .line 97
    const/4 v3, 0x1

    .line 98
    goto :goto_2b

    .line 95
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 103
    .end local v4    # "i":I
    :cond_2b
    :goto_2b
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 104
    if-eqz v3, :cond_44

    :try_start_34
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 105
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$200(Lcom/android/server/usb/UsbMidiDevice;)Z

    goto :goto_53

    .line 109
    :catchall_42
    move-exception v5

    goto :goto_55

    .line 106
    :cond_44
    if-nez v3, :cond_53

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 107
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$300(Lcom/android/server/usb/UsbMidiDevice;)V

    .line 109
    :cond_53
    :goto_53
    monitor-exit v4

    .line 110
    return-void

    .line 109
    :goto_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_34 .. :try_end_56} :catchall_42

    throw v5
.end method
