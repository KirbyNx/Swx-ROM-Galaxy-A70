.class public final Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
.super Ljava/lang/Object;
.source "BleScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/BleScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mPhy:I

.field public mScanFilterRssiValue:I

.field public mScanMode:I

.field public mTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    .line 273
    const/16 v0, -0x80

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    .line 274
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .registers 9

    .line 352
    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    if-lez v0, :cond_16

    iget v0, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    if-eqz v0, :cond_e

    const v1, 0x36ee80

    if-gt v0, v1, :cond_e

    goto :goto_16

    .line 353
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_16
    :goto_16
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings;

    iget v3, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    iget v4, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    iget v5, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    iget v6, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mcf/ble/BleScanSettings;-><init>(IIIILcom/samsung/android/mcf/ble/BleScanSettings$1;)V

    return-object v0
.end method

.method public setPhy(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/16 v0, 0xff

    if-ne p1, v0, :cond_b

    goto :goto_13

    .line 340
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid phy value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_13
    :goto_13
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mPhy:I

    return-object p0
.end method

.method public setScanFilterRssiThreshold(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 5

    const/16 v0, -0x80

    if-lt p1, v0, :cond_b

    const/16 v0, 0x14

    if-gt p1, v0, :cond_b

    .line 305
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanFilterRssiValue:I

    return-object p0

    .line 303
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter is out of range of spec, rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    .line 290
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mScanMode:I

    return-object p0

    .line 288
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter is out of range of spec, scanMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x36ee80

    if-gt p1, v0, :cond_a

    .line 321
    iput p1, p0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->mTimeout:I

    return-object p0

    .line 319
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
