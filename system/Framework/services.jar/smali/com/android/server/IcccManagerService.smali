.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field public static final COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field private static final CURR_BIN_STATUS:I = -0xffff6

.field private static final HDM_STATUS:I = -0xfffffa

.field private static final ICCC_DRK_KEY_DIR:Ljava/lang/String; = "/data/misc/tz_iccc/"

.field private static final ICCC_DRK_KEY_FILENAME:Ljava/lang/String; = "key.dat"

.field private static final ICCC_DRK_KEY_FILENAME_BKP:Ljava/lang/String; = "key.dat.bkp"

.field private static final ICCC_DRK_SERVICE_NAME:Ljava/lang/String; = "ICCC"

.field public static final ICCC_ERROR_DEVICE_STATUS_FAILED_VERSION_MISMATCH:I = 0x18

.field public static final ICCC_GET_DEVICE_STATUS_RETRY_COUNT:I = 0x1

.field private static final NONCE_SIZE:I = 0x20

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field static TAG:Ljava/lang/String; = null

.field private static final URANDOM_DRIVER_PATH:Ljava/lang/String; = "/dev/urandom"

.field private static final WARRANTY_BIT:I = -0xffff4

.field private static mContext:Landroid/content/Context;


# instance fields
.field icccBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "IcccManagerService"

    sput-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 78
    new-instance v0, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v0, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start IcccManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 8
    .param p0, "in"    # [B

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    .line 435
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 437
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 141
    const-string v0, "IcccManagerService"

    .line 142
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    .line 148
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "IcccManagerService() - Valid Caller"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    return v1

    .line 143
    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "IcccManagerService() - Invalid Caller"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    throw v1
.end method

.method private createNonce()Ljava/lang/String;
    .registers 7

    .line 412
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "file":Ljava/io/File;
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 414
    .local v2, "nonce":[B
    const/4 v3, 0x0

    .line 416
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 417
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_28
    .catchall {:try_start_d .. :try_end_17} :catchall_26

    .line 418
    .local v5, "size":I
    if-eq v5, v1, :cond_1e

    .line 419
    nop

    .line 427
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 419
    return-object v4

    .line 421
    :cond_1e
    :try_start_1e
    invoke-static {v2}, Lcom/android/server/IcccManagerService;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_22} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_28
    .catchall {:try_start_1e .. :try_end_22} :catchall_26

    .line 427
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 421
    return-object v1

    .line 427
    .end local v5    # "size":I
    :catchall_26
    move-exception v1

    goto :goto_36

    .line 424
    :catch_28
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :try_start_29
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_31

    .line 422
    :catch_2d
    move-exception v1

    .line 423
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 427
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_31
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 428
    nop

    .line 429
    return-object v4

    .line 427
    :goto_36
    invoke-virtual {p0, v3}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 428
    throw v1
.end method

.method private deleteIcccKey()Z
    .registers 5

    .line 371
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/tz_iccc/"

    const-string/jumbo v2, "key.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "key.dat.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 374
    .local v1, "fileBkp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 377
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 379
    const/4 v2, 0x1

    return v2

    .line 381
    :cond_27
    const/4 v2, 0x0

    return v2
.end method

.method private enforcePermission()Z
    .registers 3

    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 134
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 135
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private generateIcccKey()[B
    .registers 11

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 326
    .local v1, "outputStreamBkp":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 329
    .local v2, "encapsulatedKey":[B
    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/tz_iccc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_13

    .line 331
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_13
    new-instance v4, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v5, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 335
    .local v4, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 336
    .local v5, "token":J
    const-string v7, "ICCC"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v7

    move-object v2, v7

    .line 337
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    if-eqz v2, :cond_69

    .line 340
    array-length v7, v2

    if-eqz v7, :cond_60

    .line 341
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "key.dat"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .local v7, "outputFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v8

    .line 343
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 344
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 347
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "key.dat.bkp"

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v8, "outputFileBkp":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v9

    .line 349
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 350
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 351
    .end local v7    # "outputFile":Ljava/io/File;
    .end local v8    # "outputFileBkp":Ljava/io/File;
    goto :goto_7d

    .line 352
    :cond_60
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Invalid encapsulated/wrapped ICCC key length from DRK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x0

    goto :goto_7d

    .line 356
    :cond_69
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "drkService.createServiceKeySession returned NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_70} :catch_79
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_70} :catch_74
    .catchall {:try_start_3 .. :try_end_70} :catchall_72

    .line 357
    const/4 v2, 0x0

    goto :goto_7d

    .line 364
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .end local v5    # "token":J
    :catchall_72
    move-exception v3

    goto :goto_85

    .line 361
    :catch_74
    move-exception v3

    .line 362
    .local v3, "e":Ljava/io/IOException;
    :try_start_75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7d

    .line 359
    :catch_79
    move-exception v3

    .line 360
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_72

    .line 364
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_7d
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 366
    nop

    .line 367
    return-object v2

    .line 364
    :goto_85
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 366
    throw v3
.end method

.method static native get_Trusted_Boot_Data()I
.end method

.method private declared-synchronized get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "iccc_response"    # Ljava/lang/String;

    monitor-enter p0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "result":I
    const v1, -0xffff4

    :try_start_5
    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1

    move v0, v1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 157
    const v1, -0xffff6

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1

    move v0, v1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 159
    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_5b

    move-object p1, v1

    .line 161
    monitor-exit p0

    return-object p1

    .line 153
    .end local v0    # "result":I
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    .end local p1    # "iccc_response":Ljava/lang/String;
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static native iccc_attestation_platform([B)[B
.end method

.method static native iccc_device_status(I[B[BZ)[B
.end method

.method static native iccc_load()I
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method static native iccc_unload()I
.end method

.method private readIcccKey()[B
    .registers 7

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 389
    .local v1, "wrappedKey":[B
    :try_start_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/tz_iccc/"

    const-string/jumbo v4, "key.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v2, "readFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 391
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 394
    .local v3, "size":I
    new-array v4, v3, [B

    move-object v1, v4

    .line 395
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 396
    array-length v4, v1

    if-nez v4, :cond_3a

    .line 397
    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Key file is empty. wrappedKey.length = 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2d} :catch_36
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_31
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    .line 398
    const/4 v1, 0x0

    goto :goto_3a

    .line 406
    .end local v2    # "readFile":Ljava/io/File;
    .end local v3    # "size":I
    :catchall_2f
    move-exception v2

    goto :goto_3f

    .line 403
    :catch_31
    move-exception v2

    .line 404
    .local v2, "e":Ljava/io/IOException;
    :try_start_32
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3a

    .line 401
    :catch_36
    move-exception v2

    .line 402
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_2f

    .line 406
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 407
    nop

    .line 408
    return-object v1

    .line 406
    :goto_3f
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 407
    throw v2
.end method

.method private releaseDrk()Z
    .registers 9

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "result":Z
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    sget-object v2, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    .line 311
    .local v1, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 312
    .local v2, "token":J
    invoke-virtual {v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->releaseServiceKeySession()I

    move-result v4

    .line 313
    .local v4, "drkResult":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    if-nez v4, :cond_17

    .line 315
    const/4 v0, 0x1

    goto :goto_2e

    .line 317
    :cond_17
    const/4 v0, 0x0

    .line 318
    sget-object v5, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failure releasing drk service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_2e
    return v0
.end method

.method private restoreBackup(Ljava/io/File;Ljava/io/File;)[B
    .registers 9
    .param p1, "fileBkp"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;

    .line 274
    sget-object v0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Restoring backup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 277
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 280
    .local v2, "wrappedKeyBkp":[B
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 281
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 282
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 283
    .local v3, "size":I
    if-eqz v3, :cond_33

    .line 284
    new-array v4, v3, [B

    move-object v2, v4

    .line 285
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 287
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 288
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 289
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_3a

    .line 291
    :cond_33
    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v5, "The backup key length is ZERO"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v3    # "size":I
    :goto_3a
    goto :goto_4e

    .line 294
    :cond_3b
    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v4, "The backup key does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_42} :catch_4a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_42} :catch_45
    .catchall {:try_start_a .. :try_end_42} :catchall_43

    goto :goto_4e

    .line 301
    :catchall_43
    move-exception v3

    goto :goto_56

    .line 298
    :catch_45
    move-exception v3

    .line 299
    .local v3, "e":Ljava/io/IOException;
    :try_start_46
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4e

    .line 296
    :catch_4a
    move-exception v3

    .line 297
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_43

    .line 301
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_4e
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    nop

    .line 304
    return-object v2

    .line 301
    :goto_56
    invoke-virtual {p0, v0}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/android/server/IcccManagerService;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    throw v3
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .registers 3
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 442
    if-eqz p1, :cond_8

    .line 443
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 445
    :catch_6
    move-exception v0

    goto :goto_9

    .line 447
    :cond_8
    :goto_8
    nop

    .line 448
    :goto_9
    return-void
.end method

.method public declared-synchronized getDeviceStatus(I[B)[B
    .registers 12
    .param p1, "comp_type"    # I
    .param p2, "nonce"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "isWrapped":Z
    const/4 v1, 0x0

    .line 205
    .local v1, "response":[B
    const/4 v2, 0x0

    .line 206
    .local v2, "isRetry":Z
    const/4 v3, 0x0

    .line 208
    .local v3, "retry_count":I
    :try_start_5
    const-string/jumbo v4, "getDeviceStatus"

    invoke-static {v4}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 212
    :goto_b
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_load()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 213
    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "iccc_load failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_d3

    .line 214
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 217
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/misc/tz_iccc/"

    const-string/jumbo v6, "key.dat"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_33

    .line 219
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->generateIcccKey()[B

    move-result-object v5

    .line 220
    .local v5, "wrappedKey":[B
    const/4 v0, 0x0

    .line 221
    const/4 v2, 0x0

    goto :goto_50

    .line 223
    .end local v5    # "wrappedKey":[B
    :cond_33
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->readIcccKey()[B

    move-result-object v5

    .line 224
    .restart local v5    # "wrappedKey":[B
    const/4 v0, 0x1

    .line 225
    if-nez v5, :cond_50

    .line 226
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/tz_iccc/"

    const-string/jumbo v8, "key.dat.bkp"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v6, "fileBkp":Ljava/io/File;
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Failed to read ICCC wrappedKey. Try to restore backup"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, v6, v4}, Lcom/android/server/IcccManagerService;->restoreBackup(Ljava/io/File;Ljava/io/File;)[B

    move-result-object v7

    move-object v5, v7

    .line 232
    .end local v6    # "fileBkp":Ljava/io/File;
    :cond_50
    :goto_50
    if-nez v5, :cond_68

    .line 233
    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "wrappedKey is null, delete ICCC key for a new try"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v6

    if-nez v6, :cond_74

    .line 235
    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v7, "deleteIcccKey failure"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 238
    :cond_68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 239
    .local v6, "token":J
    invoke-static {p1, p2, v5, v0}, Lcom/android/server/IcccManagerService;->iccc_device_status(I[B[BZ)[B

    move-result-object v8

    move-object v1, v8

    .line 240
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    .end local v6    # "token":J
    :cond_74
    :goto_74
    invoke-static {}, Lcom/android/server/IcccManagerService;->iccc_unload()I

    move-result v6

    if-eqz v6, :cond_82

    .line 244
    sget-object v6, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "iccc_unload failure"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_82
    const/4 v6, 0x1

    if-nez v0, :cond_a3

    .line 248
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->releaseDrk()Z

    .line 249
    if-eqz v1, :cond_8d

    array-length v7, v1

    if-ne v7, v6, :cond_c6

    .line 250
    :cond_8d
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "response is not as expected, delete ICCC key for a new try"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v7

    if-nez v7, :cond_c6

    .line 252
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "deleteIcccKey failure"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 256
    :cond_a3
    if-eqz v1, :cond_c5

    array-length v7, v1

    if-ne v7, v6, :cond_c5

    .line 257
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_c6

    .line 258
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "Mismatch found, delete ICCC key for a new try"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->deleteIcccKey()Z

    move-result v7

    if-nez v7, :cond_c3

    .line 260
    sget-object v7, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v8, "deleteIcccKey failure"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_1c .. :try_end_c3} :catchall_d3

    .line 262
    :cond_c3
    const/4 v2, 0x1

    goto :goto_c6

    .line 265
    :cond_c5
    const/4 v2, 0x0

    .line 268
    .end local v4    # "file":Ljava/io/File;
    :cond_c6
    :goto_c6
    if-eqz v2, :cond_d1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "retry_count":I
    .local v4, "retry_count":I
    if-lt v3, v6, :cond_ce

    move v3, v4

    goto :goto_d1

    :cond_ce
    move v3, v4

    goto/16 :goto_b

    .line 270
    .end local v4    # "retry_count":I
    .restart local v3    # "retry_count":I
    :cond_d1
    :goto_d1
    monitor-exit p0

    return-object v1

    .line 202
    .end local v0    # "isWrapped":Z
    .end local v1    # "response":[B
    .end local v2    # "isRetry":Z
    .end local v3    # "retry_count":I
    .end local v5    # "wrappedKey":[B
    .end local p1    # "comp_type":I
    .end local p2    # "nonce":[B
    :catchall_d3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSecureData(I)I
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "result":I
    :try_start_2
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9

    move v0, v1

    .line 168
    monitor-exit p0

    return v0

    .line 165
    .end local v0    # "result":I
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    .end local p1    # "type":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTrustedBootData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "result":I
    :try_start_2
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_9

    move v0, v1

    .line 187
    monitor-exit p0

    return v0

    .line 184
    .end local v0    # "result":I
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAttestationData([B)[B
    .registers 4
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "response":[B
    :try_start_2
    const-string/jumbo v1, "setAttestationData"

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 196
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_attestation_platform([B)[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_f

    move-object v0, v1

    .line 197
    monitor-exit p0

    return-object v0

    .line 191
    .end local v0    # "response":[B
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    .end local p1    # "blob":[B
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureData(II)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "result":I
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 175
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result v1

    move v0, v1

    goto :goto_16

    .line 177
    .end local p0    # "this":Lcom/android/server/IcccManagerService;
    :cond_e
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_18

    .line 178
    const/4 v0, -0x1

    .line 180
    :goto_16
    monitor-exit p0

    return v0

    .line 172
    .end local v0    # "result":I
    .end local p1    # "type":I
    .end local p2    # "value":I
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
