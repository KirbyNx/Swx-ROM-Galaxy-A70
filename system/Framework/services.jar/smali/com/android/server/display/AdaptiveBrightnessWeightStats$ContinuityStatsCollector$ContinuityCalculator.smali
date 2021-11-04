.class Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuityCalculator"
.end annotation


# instance fields
.field public mBrightness:F

.field public mContinuity:F

.field public mLux:F

.field public mSb:Ljava/lang/StringBuilder;

.field public mSimilarity:F

.field public mTimeDuration:F

.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)V
    .registers 2

    .line 1131
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    .line 1133
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1134
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    .line 1135
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    .line 1136
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    .line 1138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;
    .param p2, "x1"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;-><init>(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)V

    return-void
.end method


# virtual methods
.method public calculate()V
    .registers 5

    .line 1141
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1142
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    .line 1143
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b6

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    .line 1144
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    .line 1145
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_b6

    .line 1155
    :cond_2b
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mTimeDuration:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3f

    const/high16 v1, 0x45610000    # 3600.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3f

    .line 1156
    const v1, -0x46ee5d4c

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .local v0, "timeFactor":F
    goto :goto_40

    .line 1158
    .end local v0    # "timeFactor":F
    :cond_3f
    const/4 v0, 0x0

    .line 1161
    .restart local v0    # "timeFactor":F
    :goto_40
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    invoke-static {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->access$900(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->this$0:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    # getter for: Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F
    invoke-static {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->access$1000(Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;)[F

    move-result-object v3

    # invokes: Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I
    invoke-static {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->access$100(F[F)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    .line 1163
    .local v1, "dynamicMaxContinuity":F
    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x4628c000    # 10800.0f

    mul-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContinuityCalculator.calculate(): mContinuity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mContinuity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mLux: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mSimilarity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSimilarity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " timeFactor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$ContinuityCalculator;->mSb:Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1166
    const-string v3, "AdaptiveBrightnessWeightStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void

    .line 1151
    .end local v0    # "timeFactor":F
    .end local v1    # "dynamicMaxContinuity":F
    :cond_b6
    :goto_b6
    return-void
.end method
