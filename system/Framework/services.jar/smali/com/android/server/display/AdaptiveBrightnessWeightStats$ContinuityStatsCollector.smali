.class Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContinuityStatsCollector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;,
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;
    }
.end annotation


# static fields
.field private static final THRESHOLD_LUX_FOR_LOG_DISTANCE:F = 10.0f


# instance fields
.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBucketBoundaries:[F

.field private final mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

.field private final mCurrentUserBrightnessStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrevUserBrightnessStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

.field private final mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;


# direct methods
.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V
    .registers 9
    .param p1, "bucketBoundariesForResult"    # [F
    .param p2, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p3, "timeStatsCollector"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;
    .param p4, "totalStats"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 810
    array-length v0, p1

    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 811
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 812
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 815
    .end local v0    # "i":I
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    .line 817
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 819
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 821
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 822
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 792
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 792
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-object v0
.end method

.method private addCurrentUserBrightnessStatsToPrevious()V
    .registers 10

    .line 1105
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 1106
    .local v1, "ubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    .line 1108
    .end local v1    # "ubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    goto :goto_6

    .line 1111
    :cond_2a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5a

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCurrentUserBrightnessStatsToPrevious: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessWeightStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1116
    .end local v0    # "i":I
    :cond_5a
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1117
    return-void
.end method

.method private addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V
    .registers 15
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "adjustment"    # F
    .param p4, "spline"    # Landroid/util/Spline;
    .param p6, "userInitiated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Landroid/util/Spline;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;Z)V"
        }
    .end annotation

    .line 830
    .local p5, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;>;"
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 831
    .local v0, "preTimeDuration":F
    if-eqz p6, :cond_8

    .line 832
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getTimeDurationForBucketLux(F)F

    move-result v0

    .line 835
    :cond_8
    new-instance v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;-><init>(FFFLandroid/util/Spline;F)V

    .line 837
    .local v1, "newUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    invoke-static {v1, p5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->removeRedundantUserBrightnessStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)V

    .line 838
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserBrightnessStat: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_38

    const-string/jumbo v4, "userInitiated "

    goto :goto_3a

    :cond_38
    const-string v4, ""

    :goto_3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdaptiveBrightnessWeightStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 843
    .end local v2    # "i":I
    :cond_50
    return-void
.end method

.method private calculateContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 9
    .param p1, "userBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;"
        }
    .end annotation

    .line 1020
    .local p2, "prevUserBrightnessStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;>;"
    const/4 v0, 0x0

    .line 1022
    .local v0, "continuityStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getPrevUserBrightnessStatForContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    move-result-object v1

    .line 1024
    .local v1, "prevUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    if-eqz v1, :cond_28

    .line 1025
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;-><init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;)V

    .line 1028
    .local v2, "continuityCalculator":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getElapsedTimeSinceFirstShortTermReset(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V

    .line 1031
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getSimilarity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V

    .line 1034
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->calculate()V

    .line 1036
    iget v3, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1037
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget v4, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    iget v5, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    move-object v0, v3

    .line 1041
    .end local v2    # "continuityCalculator":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;
    :cond_28
    return-object v0
.end method

.method private distributeToBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;)V
    .registers 21
    .param p1, "origUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .param p2, "origContinuityStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .param p3, "rawContinuityStats"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 1047
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v2

    .line 1048
    .local v2, "bucketIndex":I
    iget-object v3, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v3, v3, v2

    .line 1051
    .local v3, "currentBucketLux":F
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getLowerBoundary(F)F
    invoke-static {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$200(F)F

    move-result v4

    .line 1052
    .local v4, "lowBoundaryLux":F
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getUpperBoundary(F)F
    invoke-static {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$300(F)F

    move-result v5

    .line 1055
    .local v5, "highBoundaryLux":F
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 1056
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v4, v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    .line 1055
    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 1057
    .local v6, "lowBoundaryBucketIndex":I
    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    .line 1058
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v5, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v7

    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 1057
    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 1060
    .local v7, "highBoundaryBucketIndex":I
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v9, v8, v6

    cmpg-float v9, v9, v4

    if-gez v9, :cond_48

    .line 1061
    array-length v8, v8

    add-int/lit8 v8, v8, -0x2

    if-gt v6, v8, :cond_48

    .line 1062
    add-int/lit8 v6, v6, 0x1

    .line 1065
    :cond_48
    iget-object v8, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v8, v8, v7

    cmpl-float v8, v8, v5

    if-lez v8, :cond_54

    .line 1066
    if-lez v7, :cond_54

    .line 1067
    add-int/lit8 v7, v7, -0x1

    .line 1072
    :cond_54
    move v8, v6

    .local v8, "i":I
    :goto_55
    if-gt v8, v7, :cond_fb

    .line 1073
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v9, :cond_f1

    .line 1074
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    aget v9, v9, v8

    .line 1075
    .local v9, "boundaryLuxToUpdate":F
    nop

    .line 1076
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 1075
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    invoke-static {v9, v10, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$400(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v10

    .line 1079
    .local v10, "brightnessInNitsToUpdate":F
    if-ne v2, v8, :cond_ae

    .line 1080
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "distributeToBucketBoundaries: continuityStat: b: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getSpline()Landroid/util/Spline;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    invoke-static {v9, v12, v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$400(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ambientLux:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " currentBucketLux:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " mBrightnessMapper: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1080
    const-string v13, "AdaptiveBrightnessWeightStats"

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 1079
    :cond_ae
    move-object/from16 v12, p2

    .line 1086
    :goto_b0
    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getDistributionRatio(FFFF)F
    invoke-static {v9, v4, v3, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$500(FFFF)F

    move-result v11

    .line 1088
    .local v11, "distributionRatio":F
    aget-object v13, v1, v8

    if-eqz v13, :cond_e2

    .line 1089
    aget-object v13, v1, v8

    invoke-virtual {v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    .line 1090
    .local v13, "denominator":F
    aget-object v14, v1, v8

    invoke-virtual {v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v14

    aget-object v15, v1, v8

    invoke-virtual {v15}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v15

    mul-float/2addr v14, v15

    .line 1091
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v15

    mul-float/2addr v15, v10

    mul-float/2addr v15, v11

    add-float/2addr v14, v15

    .line 1093
    .local v14, "numerator":F
    aget-object v15, v1, v8

    move/from16 v16, v2

    .end local v2    # "bucketIndex":I
    .local v16, "bucketIndex":I
    div-float v2, v14, v13

    invoke-virtual {v15, v2, v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 1094
    .end local v13    # "denominator":F
    .end local v14    # "numerator":F
    goto :goto_f5

    .line 1095
    .end local v16    # "bucketIndex":I
    .restart local v2    # "bucketIndex":I
    :cond_e2
    move/from16 v16, v2

    .end local v2    # "bucketIndex":I
    .restart local v16    # "bucketIndex":I
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 1096
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v13

    mul-float/2addr v13, v11

    invoke-direct {v2, v10, v13}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v2, v1, v8

    goto :goto_f5

    .line 1073
    .end local v9    # "boundaryLuxToUpdate":F
    .end local v10    # "brightnessInNitsToUpdate":F
    .end local v11    # "distributionRatio":F
    .end local v16    # "bucketIndex":I
    .restart local v2    # "bucketIndex":I
    :cond_f1
    move-object/from16 v12, p2

    move/from16 v16, v2

    .line 1072
    .end local v2    # "bucketIndex":I
    .restart local v16    # "bucketIndex":I
    :goto_f5
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto/16 :goto_55

    .end local v16    # "bucketIndex":I
    .restart local v2    # "bucketIndex":I
    :cond_fb
    move/from16 v16, v2

    .line 1101
    .end local v2    # "bucketIndex":I
    .end local v8    # "i":I
    .restart local v16    # "bucketIndex":I
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    const-string v8, "distributeToBucketBoundaries() rawContinuityStats: "

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    invoke-static {v8, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$800(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 1102
    return-void
.end method

.method private getElapsedTimeSinceFirstShortTermReset(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V
    .registers 12
    .param p1, "currentUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .param p2, "prevUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .param p3, "continuityCalculator"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;

    .line 949
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 950
    .local v0, "elapsedTimeSinceFirstShortTermReset":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 951
    .local v1, "beforeLastShortTermReset":F
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 953
    .local v2, "afterLastShortTermReset":F
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v3

    .line 956
    .local v3, "currentLux":F
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getPostTimeDuration()F

    move-result v1

    .line 959
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getPreTimeDuration()F

    move-result v2

    .line 962
    add-float v0, v1, v2

    .line 964
    iput v0, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    .line 965
    iget-object v4, p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 966
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    float-to-int v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    float-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 965
    const-string v6, " cl:%.1f pl:%.1f t(%d + %d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    return-void
.end method

.method private getSimilarity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;)V
    .registers 19
    .param p1, "currentUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .param p2, "prevUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .param p3, "continuityCalculator"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;

    .line 974
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result v1

    .line 975
    .local v1, "currentUserBrightness":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getBrightness()F

    move-result v2

    .line 977
    .local v2, "prevUserBrightness":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result v3

    .line 978
    .local v3, "currentAdjustment":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getAdjustment()F

    move-result v4

    .line 981
    .local v4, "prevAdjustment":F
    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 983
    .local v5, "brightnessDistance":F
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 984
    .local v6, "brightnessRatio":F
    const/4 v7, 0x0

    cmpl-float v8, v1, v7

    if-lez v8, :cond_2d

    cmpl-float v8, v2, v7

    if-lez v8, :cond_2d

    .line 985
    cmpl-float v8, v1, v2

    if-lez v8, :cond_2a

    .line 986
    div-float v8, v2, v1

    goto :goto_2c

    .line 987
    :cond_2a
    div-float v8, v1, v2

    :goto_2c
    move v6, v8

    .line 990
    :cond_2d
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 991
    .local v8, "adjustmentRatio":F
    cmpl-float v9, v3, v7

    if-lez v9, :cond_41

    cmpl-float v9, v4, v7

    if-lez v9, :cond_41

    .line 992
    cmpl-float v9, v3, v4

    if-lez v9, :cond_3e

    .line 993
    div-float v9, v4, v3

    goto :goto_40

    .line 994
    :cond_3e
    div-float v9, v3, v4

    :goto_40
    move v8, v9

    .line 998
    :cond_41
    mul-float v9, v3, v4

    cmpl-float v7, v9, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v7, :cond_4b

    .line 999
    move v7, v9

    goto :goto_4c

    :cond_4b
    move v7, v10

    .line 1001
    .local v7, "sameTendency":Z
    :goto_4c
    if-eqz v7, :cond_62

    const/high16 v11, 0x42480000    # 50.0f

    cmpg-float v11, v5, v11

    if-ltz v11, :cond_5f

    const v11, 0x3f19999a    # 0.6f

    cmpl-float v12, v6, v11

    if-gtz v12, :cond_5f

    cmpl-float v11, v8, v11

    if-lez v11, :cond_62

    .line 1005
    :cond_5f
    const/high16 v11, 0x3f800000    # 1.0f

    .local v11, "similarity":F
    goto :goto_63

    .line 1007
    .end local v11    # "similarity":F
    :cond_62
    const/4 v11, 0x0

    .line 1010
    .restart local v11    # "similarity":F
    :goto_63
    iput v11, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1011
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v12

    iput v12, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    .line 1012
    iput v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    .line 1014
    iget-object v12, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    .line 1015
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x3

    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v13, v9

    const/4 v9, 0x5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v13, v9

    .line 1014
    const-string v9, " cb:%.1f pb:%.1f (%s,%d,%.2f,%.2f)"

    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    return-void
.end method

.method private getTimeDurationForBucketLux(F)F
    .registers 5
    .param p1, "lux"    # F

    .line 910
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {p1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v0

    .line 912
    .local v0, "bucketIndex":I
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 913
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v1

    .line 914
    .local v1, "timeStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v2

    .line 916
    .local v2, "timeDuration":F
    return v2
.end method

.method private static removeRedundantUserBrightnessStats(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "newUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;)V"
        }
    .end annotation

    .line 1121
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1122
    .local v0, "iterExistingUserBrightnessStats":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 1125
    .local v1, "existingUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    invoke-virtual {p0, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->isInSameBoundary(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1126
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1128
    .end local v1    # "existingUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    :cond_19
    goto :goto_4

    .line 1129
    :cond_1a
    return-void
.end method

.method private updateContinuityStats()V
    .registers 6

    .line 871
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v2, v1

    if-ge v0, v2, :cond_f

    .line 872
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 875
    .end local v0    # "i":I
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    .line 877
    .local v0, "rawContinuityStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 878
    .local v2, "ubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->calculateContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v3

    .line 880
    .local v3, "continuityStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->valid()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 882
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->distributeToBucketBoundaries(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;)V

    .line 884
    .end local v2    # "ubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .end local v3    # "continuityStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    :cond_37
    goto :goto_1a

    .line 886
    :cond_38
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v3, v2

    if-ge v1, v3, :cond_56

    .line 887
    aget-object v3, v0, v1

    if-eqz v3, :cond_53

    .line 888
    aget-object v2, v2, v1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 886
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 891
    .end local v1    # "i":I
    :cond_56
    return-void
.end method

.method private updateTimeDurationPrevUserBrightnessStats()V
    .registers 7

    .line 894
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 895
    .local v1, "prevUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v2

    .line 896
    .local v2, "lux":F
    invoke-direct {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getTimeDurationForBucketLux(F)F

    move-result v3

    .line 897
    .local v3, "timeDuration":F
    invoke-virtual {v1, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->updatePostTimeDuration(F)V

    .line 899
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pmstemp: updateTimeDurationPrevUserBrightnessStats: lux: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " timeDuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdaptiveBrightnessWeightStats"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    .end local v1    # "prevUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .end local v2    # "lux":F
    .end local v3    # "timeDuration":F
    goto :goto_6

    .line 907
    :cond_3d
    return-void
.end method


# virtual methods
.method public addUserBrightnessStat(FFFLandroid/util/Spline;)V
    .registers 12
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "adjustment"    # F
    .param p4, "spline"    # Landroid/util/Spline;

    .line 825
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    .line 826
    return-void
.end method

.method public clear()V
    .registers 4

    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 847
    aget-object v1, v1, v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v2, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    .line 846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 850
    .end local v0    # "i":I
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 852
    return-void
.end method

.method getPrevUserBrightnessStatForContinuity(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;Ljava/util/ArrayList;)Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .registers 10
    .param p1, "currentUserBrightnessStat"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;",
            ">;)",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;"
        }
    .end annotation

    .line 922
    .local p2, "prevUserBrightnessStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;>;"
    const/4 v0, 0x0

    .line 924
    .local v0, "prevUserBrightnessStat":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 925
    .local v1, "minDistance":F
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v2

    .line 927
    .local v2, "currentLux":F
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    .line 928
    .local v4, "pubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    invoke-virtual {p1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->isInSameBoundary(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 929
    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_26

    .line 932
    move-object v0, v4

    .line 933
    goto :goto_3d

    .line 935
    :cond_26
    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->getLux()F

    move-result v5

    div-float v5, v2, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 936
    .local v5, "distance":F
    cmpg-float v6, v5, v1

    if-gez v6, :cond_3c

    .line 937
    move v1, v5

    .line 938
    move-object v0, v4

    .line 942
    .end local v4    # "pubs":Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
    .end local v5    # "distance":F
    :cond_3c
    goto :goto_c

    .line 944
    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 2

    .line 855
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object v0
.end method

.method public summarize()V
    .registers 1

    .line 860
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->updateContinuityStats()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->updateTimeDurationPrevUserBrightnessStats()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addCurrentUserBrightnessStatsToPrevious()V

    .line 867
    return-void
.end method
