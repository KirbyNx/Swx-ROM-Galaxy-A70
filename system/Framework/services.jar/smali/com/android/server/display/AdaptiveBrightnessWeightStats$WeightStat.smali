.class public Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeightStat"
.end annotation


# instance fields
.field mBrightness:F

.field mWeight:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "brightness"    # F
    .param p2, "weight"    # F

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 600
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 603
    return-void
.end method


# virtual methods
.method public getBrightness()F
    .registers 2

    .line 615
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    return v0
.end method

.method public getWeight()F
    .registers 2

    .line 619
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    return v0
.end method

.method public set(FF)V
    .registers 3
    .param p1, "brightness"    # F
    .param p2, "weight"    # F

    .line 610
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    .line 611
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 612
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 628
    const-string v0, ""

    .line 630
    .local v0, "strWeight":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_1b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "%.1f"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 631
    :cond_1b
    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v2, v1, v2

    const-string v5, "%d"

    if-gez v2, :cond_31

    new-array v2, v3, [Ljava/lang/Object;

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 632
    :cond_31
    const/high16 v2, 0x447a0000    # 1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_45

    new-array v2, v3, [Ljava/lang/Object;

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    .line 633
    :cond_45
    new-array v2, v3, [Ljava/lang/Object;

    const/high16 v3, 0x45610000    # 3600.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "%.1fh"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 635
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateWeight(F)V
    .registers 3
    .param p1, "weight"    # F

    .line 606
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    .line 607
    return-void
.end method

.method public valid()Z
    .registers 2

    .line 623
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->mWeight:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
