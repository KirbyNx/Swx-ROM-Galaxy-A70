.class public final Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
.super Ljava/lang/Object;
.source "McfScanData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/McfScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bleSID:I

.field public contentsFilter:I

.field public needScreenOffScan:Z

.field public reportType:I

.field public scanMode:I

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x7530

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/discovery/McfScanData;
    .registers 11

    .line 226
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    if-eqz v0, :cond_2e

    .line 229
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    if-lez v0, :cond_1a

    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    if-eqz v0, :cond_12

    const v1, 0x36ee80

    if-gt v0, v1, :cond_12

    goto :goto_1a

    .line 230
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scanMode is too strong to perform a long timeout set scan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1a
    :goto_1a
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfScanData;

    iget v3, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    iget v4, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    iget-boolean v5, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    iget v6, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    iget v7, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    iget v8, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/mcf/discovery/McfScanData;-><init>(IIZIIILcom/samsung/android/mcf/discovery/McfScanData$1;)V

    return-object v0

    .line 227
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setScanData is Requirement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentsFilter(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    .line 221
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->contentsFilter:I

    return-object p0
.end method

.method public setRssiReport(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    .line 191
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->reportType:I

    return-object p0
.end method

.method public setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 4

    if-eq p2, p3, :cond_9

    .line 176
    invoke-static {p1, p2, p3}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->bleSID:I

    return-object p0

    .line 173
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong scan data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    .line 181
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->scanMode:I

    return-object p0
.end method

.method public setScreenOffScan(Z)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->needScreenOffScan:Z

    return-object p0
.end method

.method public setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    .registers 3

    if-ltz p1, :cond_a

    const v0, 0x36ee80

    if-gt p1, v0, :cond_a

    .line 207
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->timeout:I

    return-object p0

    .line 205
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout is out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
