.class Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeStatsCollector"
.end annotation


# instance fields
.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBucketBoundaries:[F

.field private final mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field private final mTransientStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 7
    .param p1, "bucketBoundariesForResult"    # [F
    .param p2, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    .line 648
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 650
    array-length v0, p1

    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 652
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v2, v1, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 655
    .end local v0    # "i":I
    :cond_22
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 656
    return-void
.end method


# virtual methods
.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object v0
.end method

.method public initTransientStats()V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 663
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v1, "tempArrBrightnessWeights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v1    # "tempArrBrightnessWeights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 667
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public summarize()V
    .registers 10

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 729
    const/4 v1, 0x0

    .line 730
    .local v1, "weightTotal":F
    const/4 v2, 0x0

    .line 732
    .local v2, "brightnessMean":F
    const/4 v3, 0x0

    .line 733
    .local v3, "numerator":F
    const/4 v4, 0x0

    .line 735
    .local v4, "denominator":F
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 736
    .local v6, "timeStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    add-float/2addr v4, v7

    .line 737
    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    .line 738
    .end local v6    # "timeStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    goto :goto_19

    .line 740
    :cond_35
    div-float v2, v3, v4

    .line 741
    move v1, v4

    .line 743
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 728
    .end local v1    # "weightTotal":F
    .end local v2    # "brightnessMean":F
    .end local v3    # "numerator":F
    .end local v4    # "denominator":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 745
    .end local v0    # "i":I
    :cond_42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .local v0, "bucketBoundariesString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v1, "statsString":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v2, "transientStatsString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v5, :cond_2e

    .line 758
    new-array v5, v7, [Ljava/lang/Object;

    aget v4, v4, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const-string v4, "%9d"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 761
    .end local v3    # "i":I
    :cond_2e
    const/4 v3, 0x0

    .line 762
    .local v3, "maxSizeOfBrightnessWeightsForEachBoundary":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    .line 763
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 764
    .local v5, "thisSize":I
    if-le v5, v3, :cond_47

    .line 765
    move v3, v5

    .line 762
    .end local v5    # "thisSize":I
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 769
    .end local v4    # "i":I
    :cond_4a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4b
    if-ge v4, v3, :cond_90

    .line 770
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4e
    iget-object v8, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_86

    .line 771
    iget-object v8, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 772
    .local v8, "timeStatsInBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 773
    .local v9, "size":I
    const-string v10, "%9s"

    if-ge v4, v9, :cond_76

    .line 774
    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    .line 776
    :cond_76
    new-array v11, v7, [Ljava/lang/Object;

    const-string v12, "-"

    aput-object v12, v11, v6

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .end local v8    # "timeStatsInBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    .end local v9    # "size":I
    :goto_83
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 779
    .end local v5    # "j":I
    :cond_86
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 782
    .end local v4    # "i":I
    :cond_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 785
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 782
    return-object v4
.end method

.method public updateTransientStats(FFFLandroid/util/Spline;)V
    .registers 24
    .param p1, "ambientLux"    # F
    .param p2, "screenBrightness"    # F
    .param p3, "durationSec"    # F
    .param p4, "screenBrightnessSpline"    # Landroid/util/Spline;

    .line 671
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v4

    .line 672
    .local v4, "bucketIndex":I
    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v5, v5, v4

    .line 675
    .local v5, "currentBucketLux":F
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getLowerBoundary(F)F
    invoke-static {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$200(F)F

    move-result v6

    .line 676
    .local v6, "lowBoundaryLux":F
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getUpperBoundary(F)F
    invoke-static {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$300(F)F

    move-result v7

    .line 679
    .local v7, "highBoundaryLux":F
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 680
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v6, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 679
    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 681
    .local v8, "lowBoundaryBucketIndex":I
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    .line 682
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v7, v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v9

    iget-object v11, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    .line 681
    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->constrain(III)I

    move-result v9

    .line 684
    .local v9, "highBoundaryBucketIndex":I
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v11, v10, v8

    cmpg-float v11, v11, v6

    if-gez v11, :cond_48

    .line 685
    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    if-gt v8, v10, :cond_48

    .line 686
    add-int/lit8 v8, v8, 0x1

    .line 689
    :cond_48
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v10, v10, v9

    cmpl-float v10, v10, v7

    if-lez v10, :cond_54

    .line 690
    if-lez v9, :cond_54

    .line 691
    add-int/lit8 v9, v9, -0x1

    .line 695
    :cond_54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateTransientStats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, "  b:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " t:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AdaptiveBrightnessWeightStats"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move v10, v8

    .local v10, "i":I
    :goto_90
    if-gt v10, v9, :cond_115

    .line 700
    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 701
    .local v12, "timeStatsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    iget-object v13, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v13, :cond_103

    .line 702
    iget-object v14, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    aget v14, v14, v10

    .line 703
    .local v14, "boundaryLuxToUpdate":F
    move-object/from16 v15, p4

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    invoke-static {v14, v15, v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$400(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v13

    .line 705
    .local v13, "brightnessInNitsToUpdate":F
    if-ne v4, v10, :cond_dc

    .line 706
    move/from16 v16, v4

    .end local v4    # "bucketIndex":I
    .local v16, "bucketIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    .end local v8    # "lowBoundaryBucketIndex":I
    .local v17, "lowBoundaryBucketIndex":I
    const-string/jumbo v8, "updateTransientStats: b: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " ambientLux:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " currentBucketLux:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " mBrightnessMapper: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 705
    .end local v16    # "bucketIndex":I
    .end local v17    # "lowBoundaryBucketIndex":I
    .restart local v4    # "bucketIndex":I
    .restart local v8    # "lowBoundaryBucketIndex":I
    :cond_dc
    move/from16 v16, v4

    move/from16 v17, v8

    .line 711
    .end local v4    # "bucketIndex":I
    .end local v8    # "lowBoundaryBucketIndex":I
    .restart local v16    # "bucketIndex":I
    .restart local v17    # "lowBoundaryBucketIndex":I
    :goto_e0
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getDistributionRatio(FFFF)F
    invoke-static {v14, v6, v5, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$500(FFFF)F

    move-result v4

    .line 713
    .local v4, "distributionRatio":F
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->findBrightnessIndex(FLjava/util/ArrayList;)I
    invoke-static {v13, v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$600(FLjava/util/ArrayList;)I

    move-result v8

    .line 714
    .local v8, "index":I
    if-ltz v8, :cond_f8

    .line 716
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float v2, v3, v4

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->updateWeight(F)V

    goto :goto_109

    .line 718
    :cond_f8
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float v2, v3, v4

    invoke-direct {v1, v13, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109

    .line 701
    .end local v13    # "brightnessInNitsToUpdate":F
    .end local v14    # "boundaryLuxToUpdate":F
    .end local v16    # "bucketIndex":I
    .end local v17    # "lowBoundaryBucketIndex":I
    .local v4, "bucketIndex":I
    .local v8, "lowBoundaryBucketIndex":I
    :cond_103
    move-object/from16 v15, p4

    move/from16 v16, v4

    move/from16 v17, v8

    .line 699
    .end local v4    # "bucketIndex":I
    .end local v8    # "lowBoundaryBucketIndex":I
    .end local v12    # "timeStatsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    .restart local v16    # "bucketIndex":I
    .restart local v17    # "lowBoundaryBucketIndex":I
    :goto_109
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, v16

    move/from16 v8, v17

    goto/16 :goto_90

    .line 724
    .end local v10    # "i":I
    .end local v16    # "bucketIndex":I
    .end local v17    # "lowBoundaryBucketIndex":I
    .restart local v4    # "bucketIndex":I
    .restart local v8    # "lowBoundaryBucketIndex":I
    :cond_115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTransientStats: updateTransientStats:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void
.end method
