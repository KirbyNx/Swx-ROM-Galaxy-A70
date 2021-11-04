.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessWeights"
.end annotation


# instance fields
.field private mBrightness:F

.field private mLastUserBrightnessTime:J

.field private mLux:F

.field private mWeight:F


# direct methods
.method public constructor <init>(FFFJ)V
    .registers 6
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "weight"    # F
    .param p4, "lastUserBrightnessTimes"    # J

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 519
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 520
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 521
    iput-wide p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 522
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .registers 8

    .line 569
    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    iget-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    .line 574
    .local v0, "brightnessWeights":Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    return-object v0
.end method

.method public getBrightness()F
    .registers 2

    .line 561
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    return v0
.end method

.method public getLastUserBrightnessTime()J
    .registers 3

    .line 535
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    return-wide v0
.end method

.method public getLux()F
    .registers 2

    .line 553
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    return v0
.end method

.method public getWeight()F
    .registers 2

    .line 565
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 543
    return-void
.end method

.method public set(FFF)V
    .registers 4
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "weight"    # F

    .line 525
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    .line 526
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 527
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    .line 528
    return-void
.end method

.method public setBrightness(F)V
    .registers 2
    .param p1, "brightness"    # F

    .line 557
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    .line 558
    return-void
.end method

.method public setLastUserBrightnessTime(J)V
    .registers 3
    .param p1, "now"    # J

    .line 531
    iput-wide p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    .line 532
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v1

    .line 581
    .local v1, "weight":F
    const-string v2, ""

    .line 583
    .local v2, "strWeight":Ljava/lang/String;
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_22

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "%.1f"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 584
    :cond_22
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v1, v3

    const-string v6, "%d"

    if-gez v3, :cond_38

    new-array v3, v5, [Ljava/lang/Object;

    float-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 585
    :cond_38
    const/high16 v3, 0x447a0000    # 1000.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4c

    new-array v3, v5, [Ljava/lang/Object;

    float-to-int v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 586
    :cond_4c
    new-array v3, v5, [Ljava/lang/Object;

    const/high16 v6, 0x45610000    # 3600.0f

    div-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "%.1fh"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 588
    :goto_5e
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    aput-object v2, v3, v5

    const-string v4, "%d:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 546
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLux:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 547
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 548
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mWeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 549
    iget-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->mLastUserBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 550
    return-void
.end method
