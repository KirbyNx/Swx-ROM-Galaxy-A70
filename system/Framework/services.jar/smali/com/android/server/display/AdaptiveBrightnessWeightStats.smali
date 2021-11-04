.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessWeightStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;,
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;,
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;,
        Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    }
.end annotation


# static fields
.field private static final CONTINUITY_DISTANCE_SIMILARITY_THRESHOLD:F = 50.0f

.field private static final CONTINUITY_MAX_DYNAMIC_SCALE_FACTOR:F = 3.0f

.field private static final CONTINUITY_MAX_STATIC:F = 10800.0f

.field private static final CONTINUITY_RATIO_SIMILARITY_THRESHOLD:F = 0.6f

.field private static final CONTINUITY_TIME_DURATION_THRESHOLD:F = 3600.0f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final DEBUG_LOG_WIDTH:Ljava/lang/String; = "%9"

.field private static final DEBUG_SPEW:Z = false

.field private static final SIMILAR_LUX_BOUNDARY_MIN_DISTANCE:F = 10.0f

.field private static final SIMILAR_LUX_BOUNDARY_RATIO:F = 2.5f

.field private static final TAG:Ljava/lang/String; = "AdaptiveBrightnessWeightStats"

.field private static final WEIGHT_MAX:F = 14400.0f


# instance fields
.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBucketBoundaries:[F

.field private final mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

.field private mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

.field private final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 182
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    invoke-direct {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;-><init>()V

    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "length":I
    new-array v1, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v3, v2

    if-ge v1, v3, :cond_1f

    .line 171
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 174
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptiveBrightnessWeightStats (parcel): mBrightnessMapper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdaptiveBrightnessWeightStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 179
    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 4
    .param p1, "bucketBoundaries"    # [F
    .param p2, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    .line 91
    return-void
.end method

.method public constructor <init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 14
    .param p1, "bucketBoundaries"    # [F
    .param p2, "stats"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .param p3, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "bucketBoundaries"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 105
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_88

    .line 108
    invoke-static {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->checkSorted([F)V

    .line 109
    if-nez p2, :cond_55

    .line 110
    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "stats is null. default!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    array-length v1, p1

    new-array p2, v1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 113
    const/4 v1, 0x0

    .line 117
    .local v1, "defaultWeight":F
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v2

    if-nez v2, :cond_32

    .line 118
    const-string/jumbo v2, "set max weight"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/high16 v1, 0x46610000    # 14400.0f

    .line 123
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    array-length v2, p1

    if-ge v0, v2, :cond_54

    .line 124
    aget v2, p1, v0

    .line 125
    invoke-virtual {p3, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v2

    .line 124
    invoke-static {v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v8

    .line 126
    .local v8, "defaultBrightnessInt":I
    new-instance v9, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget v3, p1, v0

    invoke-virtual {p3, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v4

    const-wide/16 v6, 0x0

    move-object v2, v9

    move v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v9, p2, v0

    .line 123
    .end local v8    # "defaultBrightnessInt":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 128
    .end local v0    # "i":I
    .end local v1    # "defaultWeight":F
    :cond_54
    goto :goto_59

    .line 130
    :cond_55
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_80

    .line 136
    :goto_59
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    .line 137
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 138
    const-string v0, "AdaptiveBrightnessWeightStats - mStats"

    invoke-static {v0, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 140
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 142
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-direct {v0, v1, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    .line 143
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    .line 145
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->initTransientStats()V

    .line 146
    return-void

    .line 131
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries and stats must be of same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(F[F)I
    .registers 3
    .param p0, "x0"    # F
    .param p1, "x1"    # [F

    .line 51
    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(F)F
    .registers 2
    .param p0, "x0"    # F

    .line 51
    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getLowerBoundary(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(F)F
    .registers 2
    .param p0, "x0"    # F

    .line 51
    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getUpperBoundary(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    .registers 4
    .param p0, "x0"    # F
    .param p1, "x1"    # Landroid/util/Spline;
    .param p2, "x2"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(FFFF)F
    .registers 5
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getDistributionRatio(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(FLjava/util/ArrayList;)I
    .registers 3
    .param p0, "x0"    # F
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 51
    invoke-static {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->findBrightnessIndex(FLjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [F

    .line 51
    invoke-static {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    return-void
.end method

.method private static checkSorted([F)V
    .registers 6
    .param p0, "values"    # [F

    .line 477
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 478
    return-void

    .line 480
    :cond_5
    const/4 v0, 0x0

    aget v2, p0, v0

    .line 481
    .local v2, "prevValue":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_9
    array-length v4, p0

    if-ge v3, v4, :cond_1d

    .line 482
    aget v4, p0, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v0

    :goto_15
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 483
    aget v2, p0, v3

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 485
    .end local v3    # "i":I
    :cond_1d
    return-void
.end method

.method private static findBrightnessIndex(FLjava/util/ArrayList;)I
    .registers 5
    .param p0, "brightnessInNits"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;",
            ">;)I"
        }
    .end annotation

    .line 287
    .local p1, "weightStatsInBoundary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 288
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 289
    nop

    .line 290
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v2

    .line 289
    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_19

    .line 291
    return v1

    .line 288
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 294
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private static getBrightnessForSpline(FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy;)F
    .registers 6
    .param p0, "lux"    # F
    .param p1, "spline"    # Landroid/util/Spline;
    .param p2, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 327
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 329
    .local v0, "brightnessInNitsToUpdate":F
    if-eqz p2, :cond_13

    .line 330
    nop

    .line 331
    invoke-virtual {p2, p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    move-result v1

    .line 330
    invoke-static {v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    int-to-float v1, v1

    .line 332
    .local v1, "brightnessToUpdate":F
    float-to-int v2, v1

    invoke-virtual {p2, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    .line 335
    .end local v1    # "brightnessToUpdate":F
    :cond_13
    return v0
.end method

.method private getBucketIndex(F)I
    .registers 3
    .param p1, "ambientBrightness"    # F

    .line 339
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {p1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v0

    return v0
.end method

.method private static getBucketIndex(F[F)I
    .registers 6
    .param p0, "ambientBrightness"    # F
    .param p1, "bucketBoundaries"    # [F

    .line 343
    const/4 v0, 0x0

    aget v0, p1, v0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_62

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_11

    goto :goto_62

    .line 347
    :cond_11
    const/4 v0, 0x0

    .line 348
    .local v0, "low":I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 349
    .local v1, "high":I
    :goto_15
    if-ge v0, v1, :cond_3e

    .line 350
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 351
    .local v2, "mid":I
    aget v3, p1, v2

    cmpg-float v3, v3, p0

    if-gtz v3, :cond_2d

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_2d

    .line 353
    move v0, v2

    .line 354
    add-int/lit8 v1, v2, 0x1

    .line 355
    goto :goto_3e

    .line 356
    :cond_2d
    aget v3, p1, v2

    cmpg-float v3, v3, p0

    if-gez v3, :cond_36

    .line 357
    add-int/lit8 v0, v2, 0x1

    goto :goto_3d

    .line 358
    :cond_36
    aget v3, p1, v2

    cmpl-float v3, v3, p0

    if-lez v3, :cond_3d

    .line 359
    move v1, v2

    .line 361
    .end local v2    # "mid":I
    :cond_3d
    :goto_3d
    goto :goto_15

    .line 364
    :cond_3e
    :goto_3e
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_53

    .line 365
    aget v2, p1, v0

    sub-float v2, p0, v2

    aget v3, p1, v1

    sub-float/2addr v3, p0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_51

    .line 366
    move v2, v0

    .local v2, "rounded":I
    goto :goto_61

    .line 368
    .end local v2    # "rounded":I
    :cond_51
    move v2, v1

    .restart local v2    # "rounded":I
    goto :goto_61

    .line 371
    .end local v2    # "rounded":I
    :cond_53
    aget v2, p1, v0

    div-float v2, p0, v2

    aget v3, p1, v1

    div-float/2addr v3, p0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_60

    .line 372
    move v2, v0

    .restart local v2    # "rounded":I
    goto :goto_61

    .line 374
    .end local v2    # "rounded":I
    :cond_60
    move v2, v1

    .line 378
    .restart local v2    # "rounded":I
    :goto_61
    return v2

    .line 345
    .end local v0    # "low":I
    .end local v1    # "high":I
    .end local v2    # "rounded":I
    :cond_62
    :goto_62
    const/4 v0, -0x1

    return v0
.end method

.method private static getDistributionRatio(FFFF)F
    .registers 8
    .param p0, "target"    # F
    .param p1, "lowBoundary"    # F
    .param p2, "actual"    # F
    .param p3, "highBoundary"    # F

    .line 299
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 300
    .local v0, "ratio":F
    const/4 v1, 0x0

    .line 304
    .local v1, "distance":F
    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_c

    .line 305
    const/high16 v2, 0x3f800000    # 1.0f

    return v2

    .line 308
    :cond_c
    cmpg-float v2, p1, p2

    if-gez v2, :cond_2b

    cmpg-float v2, p2, p3

    if-ltz v2, :cond_15

    goto :goto_2b

    .line 315
    :cond_15
    cmpg-float v2, p0, p2

    if-gez v2, :cond_20

    .line 316
    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float v0, v2, v3

    goto :goto_2a

    .line 317
    :cond_20
    cmpl-float v2, p0, p2

    if-lez v2, :cond_2a

    .line 318
    sub-float v2, p3, p0

    sub-float v3, p3, p2

    div-float v0, v2, v3

    .line 323
    :cond_2a
    :goto_2a
    return v0

    .line 310
    :cond_2b
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDistributionRatio: wrong boundary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdaptiveBrightnessWeightStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2
.end method

.method private static getLowerBoundary(F)F
    .registers 3
    .param p0, "lux"    # F

    .line 277
    const/high16 v0, 0x40200000    # 2.5f

    div-float v0, p0, v0

    const/high16 v1, 0x41200000    # 10.0f

    sub-float v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static getUpperBoundary(F)F
    .registers 3
    .param p0, "lux"    # F

    .line 282
    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .registers 13
    .param p0, "msg"    # Ljava/lang/String;
    .param p2, "bucketBoundaries"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;[F)V"
        }
    .end annotation

    .line 457
    .local p1, "stats":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v0, "msgString":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v1, "bucketBoundariesString":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v2, "statsString":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    array-length v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2f

    .line 464
    new-array v4, v6, [Ljava/lang/Object;

    aget v6, p2, v3

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%9d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 467
    .end local v3    # "i":I
    :cond_2f
    array-length v3, p1

    move v4, v5

    :goto_31
    if-ge v4, v3, :cond_45

    aget-object v7, p1, v4

    .line 468
    .local v7, "stat":Ljava/lang/Object;, "TT;"
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v5

    const-string v9, "%9s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .end local v7    # "stat":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 471
    :cond_45
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v4, "AdaptiveBrightnessWeightStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 199
    return v0

    .line 201
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 202
    return v1

    .line 204
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 205
    return v1

    .line 207
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    .line 208
    .local v2, "other":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    iget-object v4, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object v4, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 209
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 208
    :goto_2c
    return v0
.end method

.method public getBucketBoundaries()[F
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    return-object v0
.end method

.method public getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 3

    .line 497
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    if-eqz v0, :cond_9

    .line 498
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v0

    return-object v0

    .line 500
    :cond_9
    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "mContinuityStatsCollector is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-object v0
.end method

.method public getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .registers 3

    .line 489
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    if-eqz v0, :cond_9

    .line 490
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v0

    return-object v0

    .line 492
    :cond_9
    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "mTimeStatsCollector is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 214
    const/16 v0, 0x1f

    .line 215
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 216
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int/2addr v2, v3

    .line 217
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 218
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .registers 14
    .param p1, "ambientLux"    # F
    .param p2, "screenBrightness"    # F
    .param p3, "durationSec"    # F
    .param p4, "screenBrightnessSpline"    # Landroid/util/Spline;
    .param p5, "brightnessChangeEventForUserInitiated"    # Landroid/hardware/display/BrightnessChangeEvent;
    .param p6, "screenBrightnessSplineForUserInitiated"    # Landroid/util/Spline;
    .param p7, "userInitiated"    # Z

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "sbUserBrightness":Ljava/lang/StringBuilder;
    if-eqz p7, :cond_36

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1a

    iget v2, p5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1d

    :cond_1a
    const-string/jumbo v2, "null"

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log: l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " u:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    if-eqz p7, :cond_65

    move-object v2, v0

    goto :goto_67

    :cond_65
    const-string v2, ""

    :goto_67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "AdaptiveBrightnessWeightStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F)I

    move-result v1

    .line 259
    .local v1, "bucketIndex":I
    if-ltz v1, :cond_a0

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_a0

    if-eqz p4, :cond_a0

    .line 262
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->updateTransientStats(FFFLandroid/util/Spline;)V

    .line 264
    if-eqz p7, :cond_a0

    if-eqz p5, :cond_a0

    .line 265
    iget v2, p5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iget v3, p5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    sub-float/2addr v2, v3

    .line 266
    .local v2, "adjustment":F
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget v4, p5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v3, p1, v4, v2, p6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;)V

    .line 271
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v3, v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setLastUserBrightnessTime(J)V

    .line 274
    .end local v2    # "adjustment":F
    :cond_a0
    return-void
.end method

.method public setMaxWeight()V
    .registers 8

    .line 505
    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "setMaxWeight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 507
    .local v3, "bw":Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v5

    const/high16 v6, 0x46610000    # 14400.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    .line 506
    .end local v3    # "bw":Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 509
    :cond_20
    return-void
.end method

.method public summarizeStats()V
    .registers 15

    .line 384
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    .line 385
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v0

    .line 387
    .local v0, "newTimeStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->summarize()V

    .line 388
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v1

    .line 389
    .local v1, "newContinuityStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 391
    .local v2, "lastStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v4, "summarizeStats(): newTimeStats[]:"

    invoke-static {v4, v0, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 392
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v4, "summarizeStats(): newContinuityStats[]:"

    invoke-static {v4, v1, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 393
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v4, "summarizeStats(): lastStats[]:"

    invoke-static {v4, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 395
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v4, v4

    if-ge v3, v4, :cond_b8

    .line 401
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v5

    add-float/2addr v4, v5

    .line 403
    .local v4, "newWeightTotal":F
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_4c

    .line 404
    const/4 v6, 0x0

    .local v6, "newBrightnessMean":F
    goto :goto_6b

    .line 406
    .end local v6    # "newBrightnessMean":F
    :cond_4c
    move v6, v4

    .line 407
    .local v6, "denominator":F
    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v7

    aget-object v8, v1, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v8

    mul-float/2addr v7, v8

    aget-object v8, v0, v3

    .line 408
    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v8

    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 410
    .local v7, "numerator":F
    div-float v8, v7, v6

    move v6, v8

    .line 419
    .end local v7    # "numerator":F
    .local v6, "newBrightnessMean":F
    :goto_6b
    const/high16 v7, 0x46610000    # 14400.0f

    cmpl-float v8, v4, v7

    if-lez v8, :cond_75

    .line 420
    move v7, v6

    .line 421
    .local v7, "finalBrightnessMean":F
    const/high16 v8, 0x46610000    # 14400.0f

    .local v8, "finalWeightTotal":F
    goto :goto_a3

    .line 423
    .end local v7    # "finalBrightnessMean":F
    .end local v8    # "finalWeightTotal":F
    :cond_75
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v8

    .line 424
    .local v8, "lastWeightTotal":F
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v9

    .line 426
    .local v9, "lastBrightnessMean":F
    add-float v10, v8, v4

    .line 427
    .local v10, "finalWeightTotal":F
    cmpl-float v11, v10, v7

    if-lez v11, :cond_8f

    .line 428
    sub-float v8, v7, v4

    .line 429
    const/high16 v7, 0x46610000    # 14400.0f

    move v13, v8

    move v8, v7

    move v7, v13

    .end local v10    # "finalWeightTotal":F
    .local v7, "finalWeightTotal":F
    goto :goto_91

    .line 427
    .end local v7    # "finalWeightTotal":F
    .restart local v10    # "finalWeightTotal":F
    :cond_8f
    move v7, v8

    move v8, v10

    .line 432
    .end local v10    # "finalWeightTotal":F
    .local v7, "lastWeightTotal":F
    .local v8, "finalWeightTotal":F
    :goto_91
    invoke-static {v8, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_9a

    .line 433
    const/4 v10, 0x0

    move v7, v10

    .local v10, "finalBrightnessMean":F
    goto :goto_a3

    .line 435
    .end local v10    # "finalBrightnessMean":F
    :cond_9a
    move v10, v8

    .line 436
    .local v10, "denominator":F
    mul-float v11, v9, v7

    mul-float v12, v6, v4

    add-float/2addr v11, v12

    .line 439
    .local v11, "numerator":F
    div-float v12, v11, v10

    move v7, v12

    .line 446
    .end local v9    # "lastBrightnessMean":F
    .end local v10    # "denominator":F
    .end local v11    # "numerator":F
    .local v7, "finalBrightnessMean":F
    :goto_a3
    invoke-static {v8, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_b4

    .line 447
    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v5, v5, v3

    iget-object v9, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    aget v9, v9, v3

    invoke-virtual {v5, v9, v7, v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    .line 395
    .end local v4    # "newWeightTotal":F
    .end local v6    # "newBrightnessMean":F
    .end local v7    # "finalBrightnessMean":F
    .end local v8    # "finalWeightTotal":F
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 451
    .end local v3    # "i":I
    :cond_b8
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->initTransientStats()V

    .line 453
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v5, "summarizeStats(): mStats:"

    invoke-static {v5, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    .line 454
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 228
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 230
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 232
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->writeToParcel(Landroid/os/Parcel;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 234
    .end local v0    # "i":I
    :cond_19
    return-void
.end method
