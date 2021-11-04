.class Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutoBrightnessScaleFactorUpdated:Z

.field private mAutoBrightnessScaleFactorValue:F

.field private final mBrightness:[F

.field private mLastAutoBrightnessScaleFactorValue:F

.field private final mLux:[F

.field private mMaxGamma:F

.field private mNitsToBacklightSpline:Landroid/util/Spline;

.field private mShortTermModelTimeout:J

.field private mSpline:Landroid/util/Spline;

.field private mUserBrightnessOffset:F

.field private mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;


# direct methods
.method private constructor <init>([F[IFJ[F[F[I)V
    .registers 23
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [I
    .param p3, "maxGamma"    # F
    .param p4, "timeout"    # J
    .param p6, "brightnessLevelsNits"    # [F
    .param p7, "nitsRange"    # [F
    .param p8, "backlightRange"    # [I

    .line 1020
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 1002
    new-instance v6, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    invoke-direct {v6, v7}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;-><init>(Z)V

    iput-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 1010
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    .line 1014
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 1015
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    .line 1021
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_4b

    .line 1022
    array-length v9, v1

    array-length v10, v3

    if-ne v9, v10, :cond_2a

    move v9, v8

    goto :goto_2b

    :cond_2a
    move v9, v7

    :goto_2b
    const-string v10, "Lux and nits arrays must be the same length!"

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1024
    array-length v9, v4

    if-eqz v9, :cond_38

    array-length v9, v5

    if-eqz v9, :cond_38

    move v9, v8

    goto :goto_39

    :cond_38
    move v9, v7

    :goto_39
    const-string/jumbo v10, "nitsRange and backlightRange arrays must not be empty!"

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1026
    array-length v9, v4

    array-length v10, v5

    if-ne v9, v10, :cond_44

    move v7, v8

    :cond_44
    const-string/jumbo v8, "nitsRange and backlightRange arrays must be the same length!"

    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_75

    .line 1030
    :cond_4b
    array-length v9, v1

    if-eqz v9, :cond_53

    array-length v9, v2

    if-eqz v9, :cond_53

    move v9, v8

    goto :goto_54

    :cond_53
    move v9, v7

    :goto_54
    const-string v10, "Lux and brightness arrays must not be empty!"

    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1032
    array-length v9, v1

    array-length v10, v2

    if-ne v9, v10, :cond_5e

    goto :goto_5f

    :cond_5e
    move v8, v7

    :goto_5f
    const-string v9, "Lux and brightness arrays must be the same length!"

    invoke-static {v8, v9}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1034
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v9, "lux"

    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 1035
    const v8, 0x7fffffff

    const-string v9, "brightness"

    invoke-static {v2, v7, v8, v9}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 1040
    :goto_75
    if-eqz v3, :cond_b0

    .line 1042
    array-length v7, v4

    .line 1043
    .local v7, "nitsRangeSize":I
    new-array v8, v7, [F

    .line 1044
    .local v8, "normalizedBacklight":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7b
    if-ge v9, v7, :cond_88

    .line 1045
    aget v10, v5, v9

    invoke-static {v10}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v10

    aput v10, v8, v9

    .line 1044
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 1047
    .end local v9    # "i":I
    :cond_88
    invoke-static {v4, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 1049
    array-length v9, v3

    .line 1050
    .local v9, "N":I
    new-array v10, v9, [F

    iput-object v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 1051
    new-array v10, v9, [F

    iput-object v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 1052
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_98
    if-ge v10, v9, :cond_af

    .line 1053
    iget-object v11, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v12, v1, v10

    aput v12, v11, v10

    .line 1054
    iget-object v11, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget-object v12, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v13, v3, v10

    invoke-virtual {v12, v13}, Landroid/util/Spline;->interpolate(F)F

    move-result v12

    aput v12, v11, v10

    .line 1052
    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .line 1056
    .end local v7    # "nitsRangeSize":I
    .end local v8    # "normalizedBacklight":[F
    .end local v9    # "N":I
    .end local v10    # "i":I
    :cond_af
    goto :goto_cf

    .line 1058
    :cond_b0
    array-length v7, v2

    .line 1059
    .local v7, "N":I
    new-array v8, v7, [F

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 1060
    new-array v8, v7, [F

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 1061
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ba
    if-ge v8, v7, :cond_cf

    .line 1062
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v10, v1, v8

    aput v10, v9, v8

    .line 1063
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v10, v2, v8

    invoke-static {v10}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v10

    aput v10, v9, v8

    .line 1061
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 1067
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_cf
    :goto_cf
    move/from16 v7, p3

    iput v7, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 1068
    iput v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1077
    iget-boolean v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v6, :cond_e3

    .line 1078
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v6

    const-string/jumbo v8, "simple mapping strategy"

    invoke-virtual {v6, v8}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1080
    :cond_e3
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1081
    move-wide/from16 v8, p4

    iput-wide v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    .line 1082
    return-void
.end method

.method synthetic constructor <init>([F[IFJ[F[F[ILcom/android/server/display/BrightnessMappingStrategy$1;)V
    .registers 10
    .param p1, "x0"    # [F
    .param p2, "x1"    # [I
    .param p3, "x2"    # F
    .param p4, "x3"    # J
    .param p6, "x4"    # [F
    .param p7, "x5"    # [F
    .param p8, "x6"    # [I
    .param p9, "x7"    # Lcom/android/server/display/BrightnessMappingStrategy$1;

    .line 987
    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJ[F[F[I)V

    return-void
.end method

.method private computeSpline()V
    .registers 9

    .line 1294
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    array-length v1, v0

    .line 1295
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 1296
    .local v0, "scaleFactoredBrightness":[F
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->hasUserDataPoints()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_36

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-nez v1, :cond_36

    .line 1297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v3, v0

    if-ge v1, v3, :cond_36

    .line 1298
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v3, v3, v1

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_24

    goto :goto_36

    .line 1299
    :cond_24
    aget v3, v0, v1

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v3, v4

    aput v3, v0, v1

    .line 1300
    aget v3, v0, v1

    cmpl-float v3, v3, v2

    if-lez v3, :cond_33

    aput v2, v0, v1

    .line 1297
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1310
    .end local v1    # "i":I
    :cond_36
    :goto_36
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v1

    .line 1315
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-eqz v3, :cond_99

    .line 1316
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 1317
    .local v3, "lux":[F
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    .line 1319
    .local v4, "brightness":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    array-length v6, v3

    if-ge v5, v6, :cond_8b

    .line 1320
    aget v6, v3, v5

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_59

    goto :goto_8b

    .line 1321
    :cond_59
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    if-eqz v6, :cond_79

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    .line 1322
    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_68

    goto :goto_79

    .line 1325
    :cond_68
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    goto :goto_80

    .line 1323
    :cond_79
    :goto_79
    aget v6, v4, v5

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v6, v7

    aput v6, v4, v5

    .line 1328
    :goto_80
    aget v6, v4, v5

    cmpl-float v6, v6, v2

    if-lez v6, :cond_88

    aput v2, v4, v5

    .line 1319
    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1331
    .end local v5    # "i":I
    :cond_8b
    :goto_8b
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    .line 1332
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1333
    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 1334
    return-void

    .line 1338
    .end local v3    # "lux":[F
    .end local v4    # "brightness":[F
    :cond_99
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 1339
    return-void
.end method

.method private getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;
    .registers 12
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userOffsetManager"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1368
    move-object v0, p1

    .line 1369
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1370
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_13

    .line 1371
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "curve before adjust offset"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1374
    :cond_13
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1376
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1377
    .local v2, "unadjustedLux":[F
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1378
    .local v3, "unadjustedBrightness":[F
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    .line 1381
    .local v4, "unadjustedSpline":Landroid/util/Spline;
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F

    move-result-object v1

    .line 1383
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_38

    .line 1384
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v5

    const-string v6, "curve after offset plus"

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1387
    :cond_38
    invoke-virtual {p0, v0, v1, v4, p3}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v5

    .line 1388
    .local v5, "insertedOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [F

    .line 1389
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [F

    .line 1390
    iget-boolean v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v6, :cond_53

    .line 1391
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v6

    const-string v7, "curve after insert user point"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1395
    .end local v2    # "unadjustedLux":[F
    .end local v3    # "unadjustedBrightness":[F
    .end local v4    # "unadjustedSpline":Landroid/util/Spline;
    .end local v5    # "insertedOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_53
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"    # F

    .line 1348
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    array-length v1, v0

    .line 1349
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 1351
    .local v0, "scaleFactoredBrightness":[F
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-nez v1, :cond_30

    .line 1352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 1353
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v2, v2, v1

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1c

    goto :goto_30

    .line 1354
    :cond_1c
    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 1355
    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2d

    aput v3, v0, v1

    .line 1352
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1359
    .end local v1    # "i":I
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 1360
    .local v1, "spline":Landroid/util/Spline;
    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 1162
    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->isValidUserLux(F)Z
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300(F)Z

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    if-nez v0, :cond_1d

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserDataPoint: invalid user lux: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void

    .line 1168
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1169
    .local v0, "unadjustedBrightness":F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5c

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "add user data point"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    .line 1172
    const-string/jumbo v3, "user data point"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    .line 1173
    const-string v3, "current brightness"

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1175
    :cond_5c
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v2

    .line 1178
    .local v2, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_84

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_84
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1189
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 1192
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1193
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1201
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUserDataPoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user data points"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1206
    :cond_30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1213
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 1216
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    .line 1217
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1219
    :cond_3d
    return-void
.end method

.method public convertToBacklight(F)I
    .registers 3
    .param p1, "nits"    # F

    .line 1155
    const/4 v0, -0x1

    return v0
.end method

.method public convertToNits(I)F
    .registers 3
    .param p1, "backlight"    # I

    .line 1149
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1249
    const-string v0, "SimpleMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightnessOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightnessOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method public getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 1128
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getAutoBrightnessScaleFactorValue()F
    .registers 2

    .line 1288
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 1105
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 1106
    .local v0, "backlight":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1a

    .line 1107
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_1a

    .line 1108
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1110
    :cond_1a
    return v0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrightnessForSpline(FLandroid/util/Spline;)F
    .registers 4
    .param p1, "lux"    # F
    .param p2, "brightnessSpline"    # Landroid/util/Spline;

    .line 1122
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 1117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortTermModelTimeout()J
    .registers 3

    .line 1086
    iget-wide v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 1225
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 1232
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"    # F

    .line 1133
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1134
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 1135
    const/4 v0, 0x0

    return v0

    .line 1137
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_3e

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1142
    :cond_3e
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1143
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessScaleFactor(I)Z
    .registers 4
    .param p1, "autoBrightnessScaleFactorSetting"    # I

    .line 1272
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    if-ne p1, v0, :cond_6

    .line 1273
    const/4 v0, 0x0

    return v0

    .line 1275
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessScaleFactor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    .line 1278
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1282
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 1283
    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1091
    const/4 v0, 0x0

    return v0
.end method
