.class public Lcom/android/server/usb/UsbStringTable;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    }
.end annotation


# static fields
.field private static final STRING_USB_APPLICATION_SPECIFIC:Ljava/lang/String; = "Application Specific"

.field private static final STRING_USB_AUDIO:Ljava/lang/String; = "Audio"

.field private static final STRING_USB_CDC_CONTROL:Ljava/lang/String; = "CDC Control"

.field private static final STRING_USB_CDC_DATA:Ljava/lang/String; = "CDC Data"

.field private static final STRING_USB_CONTENT_SECURITY:Ljava/lang/String; = "Content Security"

.field private static final STRING_USB_DEVICE:Ljava/lang/String; = "Interface Descriptors"

.field private static final STRING_USB_DIAGNOSTIC_DEVICE:Ljava/lang/String; = "Diagnostic Device"

.field private static final STRING_USB_HID:Ljava/lang/String; = "HID"

.field private static final STRING_USB_HUB:Ljava/lang/String; = "Hub"

.field private static final STRING_USB_IMAGE:Ljava/lang/String; = "Image"

.field private static final STRING_USB_MASS_STROAGE:Ljava/lang/String; = "Mass Storage"

.field private static final STRING_USB_MISCELLANEOUS:Ljava/lang/String; = "Miscellaneous"

.field private static final STRING_USB_PERSONAL_HEALTHCARE:Ljava/lang/String; = "Personal Healthcare"

.field private static final STRING_USB_PHYSICAL:Ljava/lang/String; = "Physical"

.field private static final STRING_USB_PRINTER:Ljava/lang/String; = "Printer"

.field private static final STRING_USB_SMART_CARD:Ljava/lang/String; = "Smart Card"

.field private static final STRING_USB_VENDOR_SPECIFIC:Ljava/lang/String; = "Vendor Specific"

.field private static final STRING_USB_VIDEO:Ljava/lang/String; = "Video"

.field private static final STRING_USB_WIRELESS_CONTROLLER:Ljava/lang/String; = "Wireless Controller"

.field private static final TAG:Ljava/lang/String; = "UsbDevice"


# instance fields
.field private final UsbClassSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/usb/UsbStringTable$UsbClassMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    .line 153
    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Interface Descriptors"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x1

    const-string v3, "Audio"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x2

    const-string v3, "CDC Control"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x3

    const-string v3, "HID"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x5

    const-string v3, "Physical"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "Image"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v2, 0x7

    const-string v3, "Printer"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0x8

    const-string v3, "Mass Storage"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "Hub"

    const-string v7, "Full speed Hub"

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x1

    const-string v6, "Hub"

    const-string v7, "Hi-speed hub with single TT"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x2

    const-string v6, "Hub"

    const-string v7, "Hi-speed hub with multiple TTs"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xa

    const-string v3, "CDC Data"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xb

    const-string v3, "Smart Card"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0xd

    const/4 v5, 0x0

    const-string v6, "Content Security"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xe

    const-string v3, "Video"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xf

    const-string v3, "Personal Healthcare"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0xdc

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "Diagnostic Device"

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0xe0

    const-string v6, "Wireless Controller"

    const-string v7, "Bluetooth Programming Interface"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x2

    const-string v6, "Wireless Controller"

    const-string v7, "UWB Radio Control Interface"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x3

    const-string v6, "Wireless Controller"

    const-string v7, "Remote NDIS"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x4

    const-string v6, "Wireless Controller"

    const-string v7, "Bluetooth AMP Controller"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "Wireless Controller"

    const-string v7, "Host Wire Adapter Control/Data interface"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x2

    const-string v6, "Wireless Controller"

    const-string v7, "Device Wire Adapter Control/Data interface"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x3

    const-string v6, "Wireless Controller"

    const-string v7, "Device Wire Adapter Isochronous interface"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0xef

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "Miscellaneous"

    const-string v7, "Active Sync device"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x2

    const-string v6, "Miscellaneous"

    const-string v7, "Palm Sync"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "Miscellaneous"

    const-string v7, "Interface Association Descriptor"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x2

    const-string v6, "Miscellaneous"

    const-string v7, "Wire Adapter Multifunction"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const-string v6, "Miscellaneous"

    const-string v7, "Cable Based Association Framework"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v3, 0xfe

    const/4 v4, 0x1

    const-string v6, "Miscellaneous"

    const-string v7, "Device Firmware Upgrade"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "Miscellaneous"

    const-string v7, "IRDA Bridge device"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v4, 0x3

    const-string v6, "Miscellaneous"

    const-string v7, "USB Test and Measurement Device"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v8, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v5, 0x1

    const-string v6, "Miscellaneous"

    const-string v7, "USB Test and Measurement Device"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/16 v2, 0xff

    const-string v3, "Vendor Specific"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;-><init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method


# virtual methods
.method public findString(III)Ljava/lang/String;
    .registers 9
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 136
    :try_start_3
    const-string v1, "Unknown device"

    .line 137
    .local v1, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 138
    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable;->UsbClassSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 139
    .local v2, "iter":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    .line 141
    .local v3, "map":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->equals(III)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 142
    invoke-virtual {v3}, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 143
    goto :goto_2c

    .line 145
    .end local v3    # "map":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_2b
    goto :goto_13

    .line 148
    .end local v2    # "iter":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    monitor-exit v0

    return-object v1

    .line 149
    .end local v1    # "ret":Ljava/lang/String;
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method
