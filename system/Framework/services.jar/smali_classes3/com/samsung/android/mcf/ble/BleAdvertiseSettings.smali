.class public final Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;
.super Ljava/lang/Object;
.source "BleAdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/BleAdvertiseSettings$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field public static final INTERVAL_HIGH:I = 0x2

.field public static final INTERVAL_LOW:I = 0x0

.field public static final INTERVAL_MEDIUM:I = 0x1

.field public static final KEY_BLE_ADV_CONNECTABLE:Ljava/lang/String; = "ble_AdvConn"

.field public static final KEY_BLE_ADV_INTERVAL:Ljava/lang/String; = "ble_AdvInterval"

.field public static final KEY_BLE_ADV_TX_POWER:Ljava/lang/String; = "ble_AdvTxPower"

.field public static final KEY_CUSTOM_TX_POWER:Ljava/lang/String; = "customTxPower"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final LONG_TIMEOUT:I = 0x36ee80

.field public static final MAX_CUSTOM_TX_POWER:I = 0xc

.field public static final MAX_TIMEOUT:I = 0x5265c00

.field public static final MIN_CUSTOM_TX_POWER:I = -0x32

.field public static final TX_POWER_HIGH:I = 0x3

.field public static final TX_POWER_LOW:I = 0x1

.field public static final TX_POWER_MEDIUM:I = 0x2

.field public static final TX_POWER_ULTRA_LOW:I


# instance fields
.field public final mCustomTxPower:I

.field public final mInterval:I

.field public final mIsConnectable:Z

.field public final mTimeout:I

.field public final mTxPowerLevel:I


# direct methods
.method public constructor <init>(IIZII)V
    .registers 6

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    .line 123
    iput p2, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    .line 124
    iput-boolean p3, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    .line 125
    iput p4, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    .line 126
    iput p5, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    return-void
.end method

.method public synthetic constructor <init>(IIZIILcom/samsung/android/mcf/ble/BleAdvertiseSettings$1;)V
    .registers 7

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;-><init>(IIZII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "ble_AdvInterval"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    .line 134
    const-string v0, "ble_AdvTxPower"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    .line 135
    const-string v0, "ble_AdvConn"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    .line 136
    const-string v0, "timeout"

    const/16 v2, 0x7530

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    .line 137
    const-string v0, "customTxPower"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    return-void
.end method


# virtual methods
.method public getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    .line 146
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 148
    :cond_7
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    const-string v1, "ble_AdvInterval"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    const-string v1, "ble_AdvTxPower"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    const-string v1, "ble_AdvConn"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    const-string v1, "timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    const-string v1, "customTxPower"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getCustomTxPower()I
    .registers 2

    .line 210
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    return v0
.end method

.method public getInterval()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 201
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    return v0
.end method

.method public getTxPowerLevel()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    return v0
.end method

.method public isConnectable()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleAdvertiseSettings{interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isConnectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mIsConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customTxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/ble/BleAdvertiseSettings;->mCustomTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
