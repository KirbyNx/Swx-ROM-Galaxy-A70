.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutoBrightnessScaleFactorUpdated:Z

.field private mAutoBrightnessScaleFactorValue:F

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mLastAutoBrightnessScaleFactorValue:F

.field private mMaxGamma:F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mUserBrightnessOffset:F

.field private mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V
    .registers 10
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"    # [F
    .param p3, "backlight"    # [I
    .param p4, "maxGamma"    # F

    .line 1447
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 1434
    new-instance v0, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    invoke-direct {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    .line 1442
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    .line 1448
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    array-length v1, p3

    if-eqz v1, :cond_1d

    move v1, v2

    goto :goto_1e

    :cond_1d
    move v1, v3

    :goto_1e
    const-string v4, "Nits and backlight arrays must not be empty!"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1450
    array-length v1, p2

    array-length v4, p3

    if-ne v1, v4, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    const-string v1, "Nits and backlight arrays must be the same length!"

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v2, "nits"

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 1454
    nop

    .line 1456
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400()I

    move-result v1

    .line 1454
    const-string v2, "backlight"

    invoke-static {p3, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 1459
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 1460
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1470
    array-length v0, p2

    .line 1471
    .local v0, "N":I
    new-array v1, v0, [F

    .line 1472
    .local v1, "normalizedBacklight":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    if-ge v2, v0, :cond_59

    .line 1473
    aget v3, p3, v2

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v3

    aput v3, v1, v2

    .line 1472
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1476
    .end local v2    # "i":I
    :cond_59
    invoke-static {p2, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 1477
    invoke-static {v1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 1479
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1480
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_75

    .line 1481
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string/jumbo v3, "physical mapping strategy"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1483
    :cond_75
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1484
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1485
    return-void
.end method

.method private computeSpline()V
    .registers 18

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 1793
    .local v1, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 1794
    .local v2, "defaultLux":[F
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    .line 1795
    .local v3, "defaultNits":[F
    array-length v4, v3

    new-array v4, v4, [F

    .line 1796
    .local v4, "defaultBacklight":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v6, v4

    if-ge v5, v6, :cond_24

    .line 1797
    iget-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    aput v6, v4, v5

    .line 1796
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1805
    .end local v5    # "i":I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->isDefaultConfig()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_a1

    .line 1806
    iget-object v5, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v5

    .line 1807
    .local v5, "orgCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [F

    .line 1808
    .local v7, "orgLux":[F
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    .line 1810
    .local v8, "orgNits":[F
    const/4 v9, 0x0

    .line 1811
    .local v9, "sizeOfNormalPointsDefaultCurve":I
    const/4 v10, 0x0

    .line 1814
    .local v10, "sizeOfHbmPointsOrgCurve":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3c
    array-length v12, v2

    if-ge v11, v12, :cond_4e

    .line 1815
    aget v12, v2, v11

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4b

    add-int/lit8 v9, v9, 0x1

    .line 1814
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 1819
    .end local v11    # "i":I
    :cond_4e
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4f
    array-length v12, v7

    if-ge v11, v12, :cond_61

    .line 1820
    aget v12, v7, v11

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_5e

    add-int/lit8 v10, v10, 0x1

    .line 1819
    :cond_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    .line 1823
    .end local v11    # "i":I
    :cond_61
    add-int v11, v9, v10

    .line 1824
    .local v11, "size":I
    new-array v12, v11, [F

    .line 1825
    .local v12, "newLux":[F
    new-array v13, v11, [F

    .line 1828
    .local v13, "newNits":[F
    invoke-static {v2, v6, v12, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1829
    invoke-static {v3, v6, v13, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1832
    array-length v14, v7

    sub-int/2addr v14, v10

    invoke-static {v7, v14, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1834
    array-length v14, v8

    sub-int/2addr v14, v10

    invoke-static {v8, v14, v13, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1838
    array-length v14, v13

    new-array v14, v14, [F

    .line 1839
    .local v14, "newBacklight":[F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7b
    array-length v6, v14

    if-ge v15, v6, :cond_90

    .line 1840
    iget-object v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    move-object/from16 v16, v1

    .end local v1    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .local v16, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    aget v1, v13, v15

    invoke-virtual {v6, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    aput v1, v14, v15

    .line 1839
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v16

    const/4 v6, 0x0

    goto :goto_7b

    .end local v16    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .restart local v1    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_90
    move-object/from16 v16, v1

    .line 1843
    .end local v1    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .end local v15    # "i":I
    .restart local v16    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    invoke-virtual {v12}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [F

    .line 1844
    invoke-virtual {v14}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [F

    goto :goto_a3

    .line 1805
    .end local v5    # "orgCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .end local v7    # "orgLux":[F
    .end local v8    # "orgNits":[F
    .end local v9    # "sizeOfNormalPointsDefaultCurve":I
    .end local v10    # "sizeOfHbmPointsOrgCurve":I
    .end local v11    # "size":I
    .end local v12    # "newLux":[F
    .end local v13    # "newNits":[F
    .end local v14    # "newBacklight":[F
    .end local v16    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .restart local v1    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_a1
    move-object/from16 v16, v1

    .line 1847
    .end local v1    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    .restart local v16    # "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :goto_a3
    iget-object v1, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getOffsetAdjustedCurve([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v1

    .line 1851
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    .line 1852
    .local v5, "lux":[F
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    .line 1853
    .local v6, "backlight":[F
    array-length v7, v6

    new-array v7, v7, [F

    .line 1854
    .local v7, "nits":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_b5
    array-length v9, v7

    if-ge v8, v9, :cond_110

    .line 1855
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v10, v6, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    aput v9, v7, v8

    .line 1857
    iget-boolean v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-eqz v9, :cond_10d

    aget v9, v5, v8

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_10d

    .line 1858
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    if-eqz v9, :cond_f0

    iget v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    .line 1859
    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_df

    goto :goto_f0

    .line 1862
    :cond_df
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    aget v10, v5, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    div-float/2addr v9, v10

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v9, v10

    aput v9, v7, v8

    goto :goto_f7

    .line 1860
    :cond_f0
    :goto_f0
    aget v9, v7, v8

    iget v10, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v9, v10

    aput v9, v7, v8

    .line 1865
    :goto_f7
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v10, v7, v8

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_10d

    .line 1866
    iget-object v9, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v9, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    aput v9, v7, v8

    .line 1854
    :cond_10d
    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    .line 1872
    .end local v8    # "i":I
    :cond_110
    iget-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-eqz v8, :cond_11b

    .line 1873
    iget v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    iput v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLastAutoBrightnessScaleFactorValue:F

    .line 1874
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1878
    :cond_11b
    invoke-static {v5, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 1879
    return-void
.end method

.method private correctBrightness(FLjava/lang/String;I)F
    .registers 6
    .param p1, "brightness"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 1967
    if-eqz p2, :cond_f

    .line 1968
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1969
    .local v0, "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_f

    .line 1970
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1973
    .end local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_f
    const/4 v0, -0x1

    if-eq p3, v0, :cond_1f

    .line 1974
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v0

    .line 1975
    .restart local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    if-eqz v0, :cond_1f

    .line 1976
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result v1

    return v1

    .line 1979
    .end local v0    # "correction":Landroid/hardware/display/BrightnessCorrection;
    :cond_1f
    return p1
.end method

.method private getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F
    .registers 9
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "brightnessSpline"    # Landroid/util/Spline;

    .line 1529
    invoke-virtual {p4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 1532
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1538
    .local v1, "backlight":F
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->hasUserDataPoints()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1540
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result v1

    goto :goto_21

    .line 1541
    :cond_15
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_21

    .line 1542
    const-string v2, "BrightnessMappingStrategy"

    const-string/jumbo v3, "user point set, correction not applied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_21
    :goto_21
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_35

    .line 1547
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gez v2, :cond_35

    .line 1548
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1552
    :cond_35
    return v1
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

    .line 1919
    move-object v0, p1

    .line 1920
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 1921
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_13

    .line 1922
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "curve before adjust offset"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1925
    :cond_13
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1927
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-nez v2, :cond_4c

    .line 1928
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_4c

    .line 1929
    aget v3, v0, v2

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2c

    goto :goto_4c

    .line 1930
    :cond_2c
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 1931
    .local v3, "nits":F
    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v3, v4

    .line 1932
    iget-object v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v4, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    aput v4, v1, v2

    .line 1933
    aget v4, v1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_49

    aput v5, v1, v2

    .line 1928
    .end local v3    # "nits":F
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1938
    .end local v2    # "i":I
    :cond_4c
    :goto_4c
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_59

    .line 1939
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "curve after performance mode"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1943
    :cond_59
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 1944
    .local v2, "unadjustedLux":[F
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1945
    .local v3, "unadjustedBrightness":[F
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    .line 1948
    .local v4, "unadjustedSpline":Landroid/util/Spline;
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F

    move-result-object v1

    .line 1950
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_78

    .line 1951
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v5

    const-string v6, "curve after offset plus"

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1954
    :cond_78
    invoke-virtual {p0, v0, v1, v4, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;

    move-result-object v5

    .line 1955
    .local v5, "insertedOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [F

    .line 1956
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [F

    .line 1957
    iget-boolean v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v6, :cond_93

    .line 1958
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v6

    const-string v7, "curve after insert user point"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 1962
    .end local v2    # "unadjustedLux":[F
    .end local v3    # "unadjustedBrightness":[F
    .end local v4    # "unadjustedSpline":Landroid/util/Spline;
    .end local v5    # "insertedOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_93
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private getUnadjustedBrightness(F)F
    .registers 10
    .param p1, "lux"    # F

    .line 1882
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1889
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1890
    .local v1, "newLux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 1892
    .local v2, "newNits":[F
    array-length v3, v2

    new-array v3, v3, [F

    .line 1893
    .local v3, "newBrightness":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    array-length v5, v3

    if-ge v4, v5, :cond_22

    .line 1894
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v3, v4

    .line 1893
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1900
    .end local v4    # "i":I
    :cond_22
    iget-boolean v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    if-nez v4, :cond_55

    .line 1901
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_27
    array-length v5, v3

    if-ge v4, v5, :cond_55

    .line 1902
    aget v5, v1, v4

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_35

    goto :goto_55

    .line 1903
    :cond_35
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 1904
    .local v5, "nits":F
    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    mul-float/2addr v5, v6

    .line 1905
    iget-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v6, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    aput v6, v3, v4

    .line 1906
    aget v6, v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_52

    aput v7, v3, v4

    .line 1901
    .end local v5    # "nits":F
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1910
    .end local v4    # "i":I
    :cond_55
    :goto_55
    invoke-static {v1, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    .line 1911
    .local v4, "spline":Landroid/util/Spline;
    invoke-virtual {v4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    return v5
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 8
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 1613
    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->isValidUserLux(F)Z
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300(F)Z

    move-result v0

    const-string v1, "BrightnessMappingStrategy"

    if-nez v0, :cond_1d

    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserDataPoint: invalid user lux: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void

    .line 1619
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 1620
    .local v0, "unadjustedBrightness":F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_5c

    .line 1621
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

    .line 1622
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v2

    const-string v3, "add user data point"

    invoke-virtual {v2, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    .line 1623
    const-string/jumbo v3, "user data point"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v2

    .line 1624
    const-string v3, "current brightness"

    invoke-virtual {v2, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 1626
    :cond_5c
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v2

    .line 1629
    .local v2, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_84

    .line 1630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_84
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1640
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->addPoint(FFF)V

    .line 1643
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1644
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1653
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_30

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUserDataPoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "clear user data points"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1658
    :cond_30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1665
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->clear()V

    .line 1668
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    .line 1669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1670
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1672
    :cond_40
    return-void
.end method

.method public convertToBacklight(F)I
    .registers 5
    .param p1, "nits"    # F

    .line 1602
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 1603
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1604
    .local v0, "backlight":I
    nop

    .line 1605
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400()I

    move-result v1

    .line 1604
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1606
    return v0
.end method

.method public convertToNits(I)F
    .registers 4
    .param p1, "backlight"    # I

    .line 1596
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1767
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->dump(Ljava/io/PrintWriter;)V

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightnessOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightnessOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessScaleFactorValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method public getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 14
    .param p1, "backupConfig"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1696
    const/high16 v0, 0x41f00000    # 30.0f

    .line 1698
    .local v0, "copyLimitLux":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 1699
    .local v1, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 1700
    .local v2, "defaultLux":[F
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1702
    .local v3, "defaultNits":[F
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v4

    .line 1703
    .local v4, "backupCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    .line 1704
    .local v5, "backupLux":[F
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    .line 1705
    .local v6, "backupNits":[F
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v7

    .line 1707
    .local v7, "backupSpline":Landroid/util/Spline;
    const/4 v8, 0x0

    aget v9, v2, v8

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_4e

    aget v9, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_4e

    aget v9, v3, v8

    aget v8, v6, v8

    .line 1708
    invoke-static {v9, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_4e

    .line 1709
    const-string v8, "BrightnessMappingStrategy"

    const-string v9, "defulat brightness is higher than backup brightness"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v8, 0x0

    return-object v8

    .line 1713
    :cond_4e
    const/4 v8, 0x0

    .line 1714
    .local v8, "index":I
    :goto_4f
    aget v9, v2, v8

    const/high16 v10, 0x41f00000    # 30.0f

    invoke-static {v9, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-gez v9, :cond_64

    .line 1715
    aget v9, v2, v8

    invoke-virtual {v7, v9}, Landroid/util/Spline;->interpolate(F)F

    move-result v9

    aput v9, v3, v8

    .line 1716
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 1719
    :cond_64
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_65
    array-length v10, v2

    if-ge v9, v10, :cond_89

    .line 1720
    aget v10, v2, v9

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_86

    .line 1721
    add-int/lit8 v10, v9, -0x1

    aget v10, v3, v10

    aget v11, v3, v9

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-lez v10, :cond_86

    .line 1722
    add-int/lit8 v10, v9, -0x1

    aget v10, v3, v10

    aput v10, v3, v9

    .line 1719
    :cond_86
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 1726
    .end local v9    # "i":I
    :cond_89
    new-instance v9, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v9, v2, v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 1728
    .local v9, "backupBuilder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 1729
    invoke-virtual {v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v10

    return-object v10
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 1573
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getAutoBrightnessScaleFactorValue()F
    .registers 2

    .line 1761
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .registers 5
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 1523
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    move-result v0

    return v0
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1515
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getBrightnessForSpline(FLandroid/util/Spline;)F
    .registers 7
    .param p1, "lux"    # F
    .param p2, "brightnessSpline"    # Landroid/util/Spline;

    .line 1562
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_11

    .line 1563
    const-string v2, "BrightnessMappingStrategy"

    const-string/jumbo v3, "getBrightnessForSpline: null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0

    .line 1567
    :cond_11
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getBrightness(FLjava/lang/String;ILandroid/util/Spline;)F

    move-result v0

    return v0
.end method

.method public getBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 1558
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1690
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getShortTermModelTimeout()J
    .registers 5

    .line 1489
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_13

    .line 1490
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0

    .line 1492
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 1678
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public isDefaultConfig()Z
    .registers 3

    .line 1685
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 6
    .param p1, "adjustment"    # F

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 1581
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_27

    .line 1582
    const/4 v0, 0x0

    return v0

    .line 1584
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_50

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1589
    :cond_50
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1590
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1591
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessScaleFactor(I)Z
    .registers 5
    .param p1, "autoBrightnessScaleFactorSetting"    # I

    .line 1736
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    if-ne p1, v0, :cond_6

    .line 1737
    const/4 v0, 0x0

    return v0

    .line 1739
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

    .line 1740
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorSetting:I

    .line 1742
    const/4 v0, 0x0

    .line 1743
    .local v0, "autoBrightnessScaleFactorAdj":F
    const/16 v1, 0x5f

    if-ne p1, v1, :cond_28

    .line 1744
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_3f

    .line 1745
    :cond_28
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_30

    .line 1746
    const v0, 0x3c75c28f    # 0.015f

    goto :goto_3f

    .line 1747
    :cond_30
    const/16 v1, 0x55

    if-ne p1, v1, :cond_38

    .line 1748
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_3f

    .line 1749
    :cond_38
    const/16 v1, 0x50

    if-ne p1, v1, :cond_3f

    .line 1750
    const v0, 0x3b449ba6    # 0.003f

    .line 1752
    :cond_3f
    :goto_3f
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorValue:F

    .line 1754
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1755
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1756
    return v1
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 4
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1498
    if-nez p1, :cond_4

    .line 1499
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1501
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1502
    const/4 v0, 0x0

    return v0

    .line 1504
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1b

    .line 1505
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 1507
    :cond_1b
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 1508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessScaleFactorUpdated:Z

    .line 1509
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1510
    return v0
.end method
