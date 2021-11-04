.class public final Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
.super Ljava/lang/Object;
.source "McfUWBRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public antennaPairSelection:I

.field public authPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public authType:I

.field public bleSID:I

.field public dataEncryptionType:I

.field public deviceRole:I

.field public deviceType:I

.field public enableDualAoa:Z

.field public maxRrRetry:I

.field public needScreenOffRanging:Z

.field public needToReportSubscribersRanging:Z

.field public rangingInterval:I

.field public targetDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    .line 378
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    .line 379
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    .line 380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    .line 381
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    .line 382
    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    .line 383
    iput-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 384
    iput-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    .line 385
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    .line 386
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    .line 387
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    .line 389
    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
    .registers 19

    .line 583
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    if-eqz v1, :cond_5c

    .line 587
    iget v1, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_54

    const/16 v2, 0x7530

    if-gt v1, v2, :cond_54

    .line 592
    iget v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    if-nez v2, :cond_1a

    const v2, 0x1d4c0

    .line 593
    div-int/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    .line 595
    :cond_1a
    iget v15, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    const/4 v1, -0x1

    if-eq v15, v1, :cond_4c

    .line 598
    iget v2, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    if-eq v2, v1, :cond_44

    .line 601
    new-instance v1, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;

    iget v4, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    iget v5, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    iget v6, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    iget-object v7, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    iget-boolean v8, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    iget-boolean v9, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    iget-object v10, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    iget-boolean v11, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    iget v12, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    iget v13, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    iget v14, v0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    const/16 v17, 0x0

    move-object v3, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;-><init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIIILcom/samsung/android/mcf/ranging/McfUWBRangingConfig$1;)V

    return-object v1

    .line 599
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setDeviceType is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setDeviceRole is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging Interval value should be between 100 and 30000."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setRangingData is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAntennaPairSelection(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    .line 415
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->antennaPairSelection:I

    return-object p0

    .line 413
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid antennaPairSelection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthPayloads(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 442
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authPayloads:Ljava/util/ArrayList;

    return-object p0

    .line 440
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "authPayloads is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    .line 427
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->authType:I

    return-object p0
.end method

.method public setDataEncryption(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 554
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataEncryptionType is wrong"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_e
    :goto_e
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->dataEncryptionType:I

    return-object p0
.end method

.method public setDeviceRole(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1d

    .line 562
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceRole : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceRole:I

    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1d

    .line 570
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1d
    :goto_1d
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->deviceType:I

    return-object p0
.end method

.method public setEnableDualAoa(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    .line 514
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->enableDualAoa:Z

    return-object p0
.end method

.method public setMaxRrRetry(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 3

    if-lez p1, :cond_5

    .line 541
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->maxRrRetry:I

    return-object p0

    .line 539
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxRrRetry must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRangingAppId(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4

    .line 399
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->bleSID:I

    return-object p0
.end method

.method public setRangingInterval(I)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    .line 526
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->rangingInterval:I

    return-object p0
.end method

.method public setReportSubscribersRanging(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    .line 454
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needToReportSubscribersRanging:Z

    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 2

    .line 466
    iput-boolean p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->needScreenOffRanging:Z

    return-object p0
.end method

.method public setTargetBluetoothDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 483
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    return-object p0

    .line 479
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bluetoothDevices is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetMcfDevice(Ljava/util/ArrayList;)Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/McfDevice;",
            ">;)",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;"
        }
    .end annotation

    .line 496
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfDevice;

    .line 501
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    return-object p0

    .line 497
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mcfDevices is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
