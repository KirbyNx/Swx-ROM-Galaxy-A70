.class public Lcom/samsung/android/mcf/McfBleAdapterImpl;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "McfBleAdapterImpl.java"

# interfaces
.implements Lcom/samsung/android/mcf/McfBleAdapter;


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field public static final FLAGS_FIELD_BYTES:I = 0x3

.field public static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field public static final MAX_ADVERTISE_COUNT:I = 0x5

.field public static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field public static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field public final mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;",
            "Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

.field public final mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public final mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

.field public final mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            "Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/ble/BleAdapterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6

    .line 66
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    .line 145
    new-instance p1, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl$1;-><init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    .line 212
    new-instance p1, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl$2;-><init>(Lcom/samsung/android/mcf/McfBleAdapterImpl;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 67
    new-instance p1, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->mCallbackMonitor:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/-$$Lambda$AHEMFV-W_1Vdu4s6NqXzBzTqOxo;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ble/BleAdapterCallback;Ljava/util/function/BiPredicate;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    .line 68
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcf/McfBleAdapterImpl;Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcf/McfBleAdapterImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static byteLength([B)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    .line 402
    :cond_4
    array-length p0, p0

    :goto_5
    return p0
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .registers 5

    .line 396
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static is16BitUuid(Landroid/os/ParcelUuid;)Z
    .registers 7

    .line 343
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return v1

    .line 347
    :cond_18
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const-wide v4, -0xffff00000001L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long p0, v2, v4

    if-nez p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public static is32BitUuid(Landroid/os/ParcelUuid;)Z
    .registers 6

    .line 351
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    sget-object v3, Lcom/samsung/android/mcf/McfBleAdapterImpl;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return v2

    .line 355
    :cond_18
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v2

    .line 358
    :cond_1f
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    const-wide/16 v3, 0x1000

    cmp-long p0, v0, v3

    if-nez p0, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method private stopAllAdvertise()V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    .line 293
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    invoke-interface {v2, v1}, Lcom/samsung/android/mcf/ble/BleAdvertiser;->stopAdvertise(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z

    goto :goto_a

    .line 295
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mAdvertiseCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private stopAllScan()V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 285
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    invoke-interface {v2, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    goto :goto_a

    .line 287
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mScanCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private totalBytes(Lcom/samsung/android/mcf/ble/BleAdvertiseData;Z)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_8

    const/4 p2, 0x3

    goto :goto_9

    :cond_8
    move p2, v0

    .line 305
    :goto_9
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    move v1, v0

    move v0, v2

    move v2, v1

    goto :goto_2c

    .line 311
    :cond_1e
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v0

    goto :goto_2c

    :cond_2a
    move v1, v2

    move v2, v0

    :goto_2c
    if-eqz v0, :cond_33

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_33
    if-eqz v2, :cond_3a

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_3a
    if-eqz v1, :cond_41

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    .line 329
    :cond_41
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 330
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 331
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getServiceData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->byteLength([B)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 333
    :cond_5c
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getManufacturerSpecificData()[B

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 334
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getManufacturerSpecificData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->byteLength([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 336
    :cond_6d
    invoke-virtual {p1}, Lcom/samsung/android/mcf/ble/BleAdvertiseData;->getIncludeDeviceName()Z

    move-result p1

    if-eqz p1, :cond_82

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    :cond_82
    return p2
.end method

.method public static uuidToBytes(Landroid/os/ParcelUuid;)[B
    .registers 9

    if-eqz p0, :cond_6e

    .line 366
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0xff00

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v0, :cond_21

    .line 367
    new-array v0, v3, [B

    .line 368
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result p0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    .line 369
    aput-byte v3, v0, v5

    and-int/2addr p0, v2

    shr-int/2addr p0, v4

    int-to-byte p0, p0

    .line 370
    aput-byte p0, v0, v1

    return-object v0

    .line 374
    :cond_21
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v0

    const/16 v6, 0x10

    if-eqz v0, :cond_4b

    const/4 v0, 0x4

    .line 375
    new-array v0, v0, [B

    .line 376
    invoke-static {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result p0

    and-int/lit16 v7, p0, 0xff

    int-to-byte v7, v7

    .line 377
    aput-byte v7, v0, v5

    and-int/2addr v2, p0

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    .line 378
    aput-byte v2, v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    shr-int/2addr v1, v6

    int-to-byte v1, v1

    .line 379
    aput-byte v1, v0, v3

    const/high16 v1, -0x1000000

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x3

    .line 380
    aput-byte p0, v0, v1

    return-object v0

    .line 385
    :cond_4b
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 386
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 388
    new-array p0, v6, [B

    .line 389
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 390
    invoke-virtual {v6, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 391
    invoke-virtual {v6, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-object p0

    .line 363
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuid cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 97
    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->closeInternal()V

    return-void
.end method

.method public closeInternal()V
    .registers 5

    .line 106
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v1, "closeInternal"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->stopAllScan()V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/mcf/McfBleAdapterImpl;->stopAllAdvertise()V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2d

    .line 114
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->invalidateService()V

    return-void
.end method

.method public getBleAdvertise()Lcom/samsung/android/mcf/ble/BleAdvertiser;
    .registers 4

    .line 138
    const-string v0, "getBleAdvertise"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleAdvertiser:Lcom/samsung/android/mcf/ble/BleAdvertiser;

    return-object v0
.end method

.method public getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;
    .registers 4

    .line 129
    const-string v0, "getBleScanner"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    return-object v0
.end method

.method public isMine(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Z
    .registers 3

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->isMyId(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/ble/BleAdapterCallback;)Z

    move-result p1

    return p1
.end method

.method public open()I
    .registers 4

    .line 86
    const-string v0, "open"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportBleAdapter(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    return v0

    .line 89
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v1, 0x6

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/AbstractClient;->sendMessage(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/mcf/McfBleAdapterImpl;->mCallback:Lcom/samsung/android/mcf/ble/wrapper/BleAdapterCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
