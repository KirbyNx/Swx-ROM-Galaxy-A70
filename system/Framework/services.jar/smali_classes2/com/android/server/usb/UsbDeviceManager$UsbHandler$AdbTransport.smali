.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;
.super Landroid/debug/IAdbTransport$Stub;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdbTransport"
.end annotation


# instance fields
.field private final mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 937
    invoke-direct {p0}, Landroid/debug/IAdbTransport$Stub;-><init>()V

    .line 938
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 939
    return-void
.end method


# virtual methods
.method public onAdbEnabled(ZB)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "transportType"    # B

    .line 943
    if-nez p2, :cond_8

    .line 944
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 946
    :cond_8
    return-void
.end method
