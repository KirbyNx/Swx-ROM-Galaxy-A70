.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.super Ljava/lang/Object;
.source "BluetoothCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;,
        Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;
    }
.end annotation


# static fields
.field public static Manufacture:I = 0x75

.field public static final PAIRED_AND_SYNCED_DEVICES:I = 0x1

.field public static final PAIRED_DEVICES_ONLY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BluetoothCallHelper"

.field public static final scanMask:[B

.field public static final scanfilter:[B


# instance fields
.field public mBondedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mIsReceiverRegistered:Z

.field public mSyncedCallDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 47
    const/16 v0, 0xa

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanfilter:[B

    .line 54
    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->scanMask:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x42t
        0x9t
        -0x7ft
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data

    nop

    :array_1c
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$1;-><init>(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 92
    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const-string v0, "BluetoothCallHelper"

    if-nez p1, :cond_2f

    .line 98
    const-string p1, "checkBondedDeviceList"

    const-string p2, "Fail : can\'t access bluetooth Adapter"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_2f
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    const/4 p1, 0x1

    if-ne p1, p2, :cond_4e

    .line 107
    iget-object p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p2, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_48

    .line 108
    const-string p2, "BLUETOOTH_PRIVILEGED permission Granted "

    invoke-static {v0, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateSyncedDeviceList()V

    goto :goto_4e

    :cond_48
    nop

    .line 111
    const-string p2, "To get synced device list , need BLUETOOTH_PRIVILEGED permission"

    invoke-static {v0, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_4e
    :goto_4e
    iget-boolean p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-nez p2, :cond_62

    .line 116
    iput-boolean p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 117
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_62
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/external/BluetoothCallHelper;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->updateBondedDeviceList()V

    return-void
.end method

.method public static getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 292
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 294
    array-length v2, v1

    if-nez v2, :cond_12

    const-string p0, "BT_MAC_BYTE_IS_NULL"

    return-object p0

    .line 298
    :cond_12
    const/4 v2, 0x6

    new-array v3, v2, [B

    const/4 v4, 0x1

    move v5, v4

    :goto_17
    if-ge v5, v2, :cond_2b

    .line 300
    aget-byte v6, v1, v5

    and-int/lit8 v6, v6, 0x7f

    shl-int/2addr v6, v4

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2b
    nop

    .line 302
    const/4 v4, 0x0

    aget-byte v1, v1, v4

    or-int/lit8 v1, v1, -0x40

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 305
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/16 v4, 0x8

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    .line 308
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " //"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "getBleMacAddrFromBt :"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCallSupportDevice([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_78

    .line 252
    array-length v1, p0

    const/16 v2, 0x9

    if-ge v1, v2, :cond_9

    goto :goto_78

    .line 256
    :cond_9
    new-instance v1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;-><init>([B)V

    .line 257
    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->getManufacturerRawData()[B

    move-result-object p0

    .line 258
    invoke-virtual {v1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$MfData;->getDeviceId()[B

    move-result-object v1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , deviceID:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {v1}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    const-string v2, "BluetoothCallHelper"

    const-string v3, "isCallSupportDevice"

    invoke-static {v2, v3, p0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    aget-byte p0, v1, v0

    if-nez p0, :cond_43

    return v0

    .line 266
    :cond_43
    aget-byte p0, v1, v0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_78

    aget-byte p0, v1, v4

    if-le p0, v4, :cond_78

    .line 268
    aget-byte p0, v1, v0

    if-ne p0, v4, :cond_62

    aget-byte p0, v1, v4

    const/16 v5, 0x16

    if-lt p0, v5, :cond_62

    aget-byte p0, v1, v4

    const/16 v5, 0x18

    if-gt p0, v5, :cond_62

    .line 269
    const-string p0, "Beans"

    invoke-static {v2, v3, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_62
    nop

    .line 273
    aget-byte p0, v1, v0

    if-ne p0, v4, :cond_77

    aget-byte p0, v1, v4

    const/4 v0, 0x2

    if-lt p0, v0, :cond_77

    aget-byte p0, v1, v4

    const/16 v0, 0xa

    if-gt p0, v0, :cond_77

    .line 274
    const-string p0, "buds+"

    invoke-static {v2, v3, p0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return v4

    :cond_78
    :goto_78
    return v0
.end method

.method private updateBondedDeviceList()V
    .registers 7

    .line 211
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 217
    :cond_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    if-eqz v3, :cond_1b

    .line 219
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 220
    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 219
    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 221
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v3, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 223
    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 227
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">> calldevice "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "updateBondedDeviceList :"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSyncedDeviceList()V
    .registers 7

    .line 231
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 237
    :cond_13
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    if-eqz v3, :cond_1b

    .line 239
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 240
    invoke-static {v4}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 239
    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->isCallSupportDevice([B)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 241
    iget-object v4, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->getBleMacAddrFromBt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    iget-object v3, v3, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;-><init>(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 243
    iget-object v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 247
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">> calldevice "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCallHelper"

    const-string v2, "updateSyncedDeviceList :"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getBluetoothDevice"

    const-string v2, "BluetoothCallHelper"

    if-eqz v0, :cond_1e

    .line 192
    const-string v0, "found in bonded Calldevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 195
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 196
    const-string v0, "found in Synced CallDevice list "

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_38
    nop

    .line 200
    const-string p1, "can not found bluetooth Device"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBondedCallDevices()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    .line 165
    const-string v0, "BluetoothCallHelper"

    const-string v1, "getBondedCallDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSyncedCallDevices()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothCallHelper$BluetoothCallDevice;",
            ">;"
        }
    .end annotation

    .line 177
    const-string v0, "BluetoothCallHelper"

    const-string v1, "getSyncedCallDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasBondedCallDevice()Z
    .registers 4

    .line 142
    const-string v0, "BluetoothCallHelper"

    const-string v1, "hasBondedCallDevice"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSyncedCallDevice()Z
    .registers 4

    .line 154
    const-string v0, "BluetoothCallHelper"

    const-string v1, "hasSyncedCallDevice"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public release()V
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mIsReceiverRegistered:Z

    .line 129
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBondedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mSyncedCallDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    return-void
.end method
