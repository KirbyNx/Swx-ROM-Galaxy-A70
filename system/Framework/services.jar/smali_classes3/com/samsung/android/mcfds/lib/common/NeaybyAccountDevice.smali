.class public Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;
.super Ljava/lang/Object;
.source "NeaybyAccountDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice$DeviceType;
    }
.end annotation


# static fields
.field public static final DEVICE_ADDED:I = 0x0

.field public static final DEVICE_REMOVED:I = 0x1

.field public static final DEVICE_UPDATED:I = 0x2

.field static final KEY_DEVICE_ID:Ljava/lang/String; = "DeviceId"

.field static final KEY_DEVICE_NAME:Ljava/lang/String; = "DeviceName"

.field static final KEY_DEVICE_SUBTYPE:Ljava/lang/String; = "DeviceSubType"

.field static final KEY_DEVICE_TYPE:Ljava/lang/String; = "DeviceType"

.field private static final TAG:Ljava/lang/String; = "[MCF_DS_LIB]_MyAccountDevice"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceSubType:I

.field private mDeviceType:I


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    .line 26
    const/16 v1, 0xb

    iput v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    .line 52
    if-nez p1, :cond_d

    .line 53
    return-void

    .line 55
    :cond_d
    const-string v2, "DeviceId"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    .line 56
    const-string v2, "DeviceName"

    invoke-virtual {p1, v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    .line 57
    const-string v2, "DeviceType"

    invoke-virtual {p1, v2, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    .line 58
    const-string v0, "DeviceSubType"

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "deviceSubType"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    .line 26
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    .line 38
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    .line 41
    iput p4, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    .line 42
    return-void
.end method

.method public static createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;
    .registers 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 70
    if-eqz p0, :cond_8

    .line 71
    new-instance v0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    .line 73
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_1f

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 137
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    invoke-virtual {v1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_20

    .line 139
    .end local v0    # "result":Z
    :cond_1d
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_20

    .line 134
    .end local v0    # "result":Z
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    .line 142
    .restart local v0    # "result":Z
    :goto_20
    return v0
.end method

.method public getBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 84
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 85
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 86
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_b
    const-string v2, "DeviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 91
    const-string v2, "DeviceName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_19
    iget v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    const-string v2, "DeviceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    iget v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    const-string v2, "DeviceSubType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 95
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSubType()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceSubType:I

    return v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 127
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
