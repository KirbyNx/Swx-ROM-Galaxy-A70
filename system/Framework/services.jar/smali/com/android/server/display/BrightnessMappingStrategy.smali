.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
    }
.end annotation


# static fields
.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static LUX_NO_PERCEPTIBLE:F = 0.0f

.field private static final MAX_GRAD:F = 1.0f

.field private static final MIN_GRAD:F = 0.05f

.field private static final MIN_PERMISSABLE_INCREASE:F = 0.004f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final SHORT_TERM_MODEL_THRESHOLD_RATIO:F = 0.6f

.field private static final SIMILAR_LUX_BOUNDARY_MIN_DISTANCE:F = 10.0f

.field private static final SIMILAR_LUX_BOUNDARY_RATIO:F = 2.5f

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static sHbmLux:F

.field private static sScreenExtendedBrightnessRangeMaximum:I


# instance fields
.field private final MIN_SHORT_TERM_MODEL_THRESHOLD:I

.field protected mLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/server/display/BrightnessMappingStrategy;->LUX_NO_PERCEPTIBLE:F

    .line 79
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->MIN_SHORT_TERM_MODEL_THRESHOLD:I

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/display/utils/Plog;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    return-object v0
.end method

.method static synthetic access$200()F
    .registers 1

    .line 58
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    return v0
.end method

.method static synthetic access$300(F)Z
    .registers 2
    .param p0, "x0"    # F

    .line 58
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidUserLux(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 58
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    return v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 25
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 90
    move-object/from16 v0, p0

    const-string v1, "BrightnessMappingStrategy"

    const-string v2, "create"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const v2, 0x1070074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v2

    .line 93
    .local v2, "luxLevels":[F
    const v3, 0x1070073

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 95
    .local v13, "brightnessLevelsBacklight":[I
    const v3, 0x1070071

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v14

    .line 97
    .local v14, "brightnessLevelsNits":[F
    const/high16 v3, 0x1130000

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v15

    .line 101
    .local v15, "autoBrightnessAdjustmentMaxGamma":F
    const v3, 0x10700dd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v12

    .line 103
    .local v12, "nitsRange":[F
    const v3, 0x10700dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    .line 106
    .local v11, "backlightRange":[I
    const-wide/32 v9, 0x927c0

    .line 110
    .local v9, "shortTermModelTimeout":J
    const v3, 0x10e00d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    .line 112
    const v3, 0x10e0029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    sput v3, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    .line 115
    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5f

    .line 116
    const v3, 0x471c4000    # 40000.0f

    sput v3, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    .line 120
    :cond_5f
    invoke-static {v12, v11}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 121
    invoke-static {v2, v14}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v3

    if-eqz v3, :cond_dd

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS:Z

    if-eqz v3, :cond_dd

    .line 124
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil$Country;->CHINA:Z

    if-eqz v3, :cond_94

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v3, :cond_94

    .line 125
    const-string v3, "Use SimpleMappingStrategy (nits based)"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    move-object v4, v2

    move v6, v15

    move-wide v7, v9

    move-wide/from16 v17, v9

    .end local v9    # "shortTermModelTimeout":J
    .local v17, "shortTermModelTimeout":J
    move-object v9, v14

    move-object v10, v12

    move-object/from16 v19, v11

    .end local v11    # "backlightRange":[I
    .local v19, "backlightRange":[I
    move-object/from16 v20, v13

    move-object v13, v12

    .end local v12    # "nitsRange":[F
    .local v13, "nitsRange":[F
    .local v20, "brightnessLevelsBacklight":[I
    move-object/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJ[F[F[ILcom/android/server/display/BrightnessMappingStrategy$1;)V

    return-object v1

    .line 124
    .end local v17    # "shortTermModelTimeout":J
    .end local v19    # "backlightRange":[I
    .end local v20    # "brightnessLevelsBacklight":[I
    .restart local v9    # "shortTermModelTimeout":J
    .restart local v11    # "backlightRange":[I
    .restart local v12    # "nitsRange":[F
    .local v13, "brightnessLevelsBacklight":[I
    :cond_94
    move-wide/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object v13, v12

    .line 130
    .end local v9    # "shortTermModelTimeout":J
    .end local v11    # "backlightRange":[I
    .end local v12    # "nitsRange":[F
    .local v13, "nitsRange":[F
    .restart local v17    # "shortTermModelTimeout":J
    .restart local v19    # "backlightRange":[I
    .restart local v20    # "brightnessLevelsBacklight":[I
    const v3, 0x10e00e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 132
    .local v3, "minimumBacklight":I
    const v5, 0x10e00df

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 134
    .local v5, "maximumBacklight":I
    const/4 v6, 0x0

    move-object/from16 v12, v19

    .end local v19    # "backlightRange":[I
    .local v12, "backlightRange":[I
    aget v6, v12, v6

    if-gt v6, v3, :cond_b6

    array-length v6, v12

    sub-int/2addr v6, v4

    aget v4, v12, v6

    if-ge v4, v5, :cond_bb

    .line 136
    :cond_b6
    const-string v4, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_bb
    const-string v4, "Use PhysicalMappingStrategy"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v1, v2, v14}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 142
    .local v1, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    move-wide/from16 v10, v17

    .end local v17    # "shortTermModelTimeout":J
    .local v10, "shortTermModelTimeout":J
    invoke-virtual {v1, v10, v11}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 143
    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 144
    invoke-virtual {v1, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 145
    new-instance v4, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6

    invoke-direct {v4, v6, v13, v12, v15}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v4

    .line 121
    .end local v1    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v3    # "minimumBacklight":I
    .end local v5    # "maximumBacklight":I
    .end local v10    # "shortTermModelTimeout":J
    .end local v20    # "brightnessLevelsBacklight":[I
    .restart local v9    # "shortTermModelTimeout":J
    .restart local v11    # "backlightRange":[I
    .local v12, "nitsRange":[F
    .local v13, "brightnessLevelsBacklight":[I
    :cond_dd
    move-object/from16 v20, v13

    move-object v13, v12

    move-object v12, v11

    move-wide v10, v9

    .end local v9    # "shortTermModelTimeout":J
    .end local v11    # "backlightRange":[I
    .restart local v10    # "shortTermModelTimeout":J
    .local v12, "backlightRange":[I
    .local v13, "nitsRange":[F
    .restart local v20    # "brightnessLevelsBacklight":[I
    goto :goto_e8

    .line 120
    .end local v10    # "shortTermModelTimeout":J
    .end local v20    # "brightnessLevelsBacklight":[I
    .restart local v9    # "shortTermModelTimeout":J
    .restart local v11    # "backlightRange":[I
    .local v12, "nitsRange":[F
    .local v13, "brightnessLevelsBacklight":[I
    :cond_e3
    move-object/from16 v20, v13

    move-object v13, v12

    move-object v12, v11

    move-wide v10, v9

    .line 148
    .end local v9    # "shortTermModelTimeout":J
    .end local v11    # "backlightRange":[I
    .restart local v10    # "shortTermModelTimeout":J
    .local v12, "backlightRange":[I
    .local v13, "nitsRange":[F
    .restart local v20    # "brightnessLevelsBacklight":[I
    :goto_e8
    move-object/from16 v9, v20

    .end local v20    # "brightnessLevelsBacklight":[I
    .local v9, "brightnessLevelsBacklight":[I
    invoke-static {v2, v9}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 149
    const-string v3, "Use SimpleMappingStrategy"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v1

    move-object v4, v2

    move-object v5, v9

    move v6, v15

    move-wide v7, v10

    move-object/from16 v21, v9

    .end local v9    # "brightnessLevelsBacklight":[I
    .local v21, "brightnessLevelsBacklight":[I
    move-object/from16 v9, v16

    move-wide/from16 v22, v10

    .end local v10    # "shortTermModelTimeout":J
    .local v22, "shortTermModelTimeout":J
    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object v0, v12

    .end local v12    # "backlightRange":[I
    .local v0, "backlightRange":[I
    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IFJ[F[F[ILcom/android/server/display/BrightnessMappingStrategy$1;)V

    return-object v1

    .line 155
    .end local v0    # "backlightRange":[I
    .end local v21    # "brightnessLevelsBacklight":[I
    .end local v22    # "shortTermModelTimeout":J
    .restart local v9    # "brightnessLevelsBacklight":[I
    .restart local v10    # "shortTermModelTimeout":J
    .restart local v12    # "backlightRange":[I
    :cond_115
    move-object/from16 v21, v9

    move-object v0, v12

    .end local v9    # "brightnessLevelsBacklight":[I
    .end local v12    # "backlightRange":[I
    .restart local v0    # "backlightRange":[I
    .restart local v21    # "brightnessLevelsBacklight":[I
    const-string/jumbo v3, "not found. null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string/jumbo v1, "nitsRange"

    invoke-static {v13, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    .line 157
    const-string v1, "backlightRange"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    .line 158
    const-string/jumbo v1, "luxLevels"

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    .line 159
    const-string v1, "brightnessLevelsNits"

    invoke-static {v14, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([FLjava/lang/String;)V

    .line 160
    const-string v1, "brightnessLevelsBacklight"

    move-object/from16 v3, v21

    .end local v21    # "brightnessLevelsBacklight":[I
    .local v3, "brightnessLevelsBacklight":[I
    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    .line 161
    const-string v1, "dynamicAutoBrightnessLevels"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    .line 162
    const-string v1, "dynamicAutoBrightnessValues"

    invoke-static {v3, v1}, Lcom/android/server/power/PowerManagerUtil;->printArray([ILjava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findInsertionPoint([FF)I
    .registers 4
    .param p0, "arr"    # [F
    .param p1, "val"    # F

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 559
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_b

    .line 560
    return v0

    .line 558
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    :cond_e
    array-length v0, p0

    return v0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 184
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 185
    .local v0, "N":I
    new-array v1, v0, [F

    .line 186
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_13

    .line 187
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 189
    .end local v2    # "i":I
    :cond_13
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 5
    .param p0, "lux"    # [I

    .line 170
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 171
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 172
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 174
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 10
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "lux"    # F
    .param p4, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 525
    invoke-static {p1, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 528
    .local v0, "idx":I
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 529
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 530
    .local v1, "newLuxLevels":[F
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 531
    .local v2, "newBrightnessLevels":[F
    aput p3, v1, v0

    .line 532
    aput p4, v2, v0

    goto :goto_4d

    .line 533
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1a
    aget v1, p1, v0

    cmpl-float v1, v1, p3

    if-nez v1, :cond_2d

    .line 534
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 535
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 536
    .restart local v2    # "newBrightnessLevels":[F
    aput p4, v2, v0

    goto :goto_4d

    .line 538
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_2d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 539
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    aput p3, v1, v0

    .line 541
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 542
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    aput p4, v2, v0

    .line 547
    :goto_4d
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .registers 13
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 194
    const-string v0, "BrightnessMappingStrategy"

    const/4 v1, 0x0

    if-eqz p0, :cond_fe

    if-eqz p1, :cond_fe

    array-length v2, p0

    if-eqz v2, :cond_fe

    array-length v2, p1

    if-nez v2, :cond_f

    goto/16 :goto_fe

    .line 199
    :cond_f
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_33

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v1

    .line 203
    :cond_33
    array-length v2, p0

    .line 204
    .local v2, "N":I
    aget v3, p0, v1

    .line 205
    .local v3, "prevX":F
    aget v4, p1, v1

    .line 206
    .local v4, "prevY":F
    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    const-string v7, " prevY: "

    const-string/jumbo v8, "prevX: "

    if-ltz v6, :cond_e5

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_e5

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_e5

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_54

    goto/16 :goto_e5

    .line 210
    :cond_54
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_55
    if-ge v5, v2, :cond_e3

    .line 211
    aget v6, p0, v5

    cmpl-float v6, v3, v6

    const-string v9, " y["

    const-string v10, "]: "

    if-gez v6, :cond_ac

    aget v6, p1, v5

    cmpl-float v6, v4, v6

    if-lez v6, :cond_68

    goto :goto_ac

    .line 216
    :cond_68
    aget v6, p0, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_80

    aget v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_79

    goto :goto_80

    .line 220
    :cond_79
    aget v3, p0, v5

    .line 221
    aget v4, p1, v5

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    .line 217
    :cond_80
    :goto_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v1

    .line 212
    :cond_ac
    :goto_ac
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " x["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p0, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v1

    .line 223
    .end local v5    # "i":I
    :cond_e3
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_e5
    :goto_e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v1

    .line 195
    .end local v2    # "N":I
    .end local v3    # "prevX":F
    .end local v4    # "prevY":F
    :cond_fe
    :goto_fe
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "null"

    if-nez p0, :cond_110

    move-object v4, v3

    goto :goto_115

    :cond_110
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_115
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " y: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-nez p1, :cond_120

    goto :goto_125

    :cond_120
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v1
.end method

.method private static isValidMapping([F[I)Z
    .registers 12
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 227
    const-string v0, "BrightnessMappingStrategy"

    const/4 v1, 0x0

    if-eqz p0, :cond_dd

    if-eqz p1, :cond_dd

    array-length v2, p0

    if-eqz v2, :cond_dd

    array-length v2, p1

    if-nez v2, :cond_f

    goto/16 :goto_dd

    .line 232
    :cond_f
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_33

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v1

    .line 236
    :cond_33
    array-length v2, p0

    .line 237
    .local v2, "N":I
    aget v3, p0, v1

    .line 238
    .local v3, "prevX":F
    aget v4, p1, v1

    .line 239
    .local v4, "prevY":I
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    const-string v6, " prevY: "

    const-string/jumbo v7, "prevX: "

    if-ltz v5, :cond_c4

    if-ltz v4, :cond_c4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto/16 :goto_c4

    .line 243
    :cond_4c
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4d
    if-ge v5, v2, :cond_c2

    .line 244
    aget v8, p0, v5

    cmpl-float v8, v3, v8

    const-string v9, "]: "

    if-gez v8, :cond_89

    aget v8, p1, v5

    if-le v4, v8, :cond_5c

    goto :goto_89

    .line 249
    :cond_5c
    aget v8, p0, v5

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 253
    :cond_82
    aget v3, p0, v5

    .line 254
    aget v4, p1, v5

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 245
    :cond_89
    :goto_89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " x["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p0, v5

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " y["

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p1, v5

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v1

    .line 256
    .end local v5    # "i":I
    :cond_c2
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_c4
    :goto_c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v1

    .line 228
    .end local v2    # "N":I
    .end local v3    # "prevX":F
    .end local v4    # "prevY":I
    :cond_dd
    :goto_dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "null"

    if-nez p0, :cond_ef

    move-object v4, v3

    goto :goto_f4

    :cond_ef
    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_f4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " y: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    if-nez p1, :cond_ff

    goto :goto_104

    :cond_ff
    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return v1
.end method

.method private static isValidUserLux(F)Z
    .registers 2
    .param p0, "userLux"    # F

    .line 654
    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_d

    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    .line 655
    const/4 v0, 0x1

    return v0

    .line 658
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected static normalizeAbsoluteBrightness(I)F
    .registers 5
    .param p0, "brightness"    # I

    .line 454
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->sScreenExtendedBrightnessRangeMaximum:I

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v0

    return v0
.end method

.method public static permissibleMinimumRatio(FF)F
    .registers 5
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 643
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->LUX_NO_PERCEPTIBLE:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_d

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 645
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 648
    :cond_d
    const v0, 0x3d4ccccd    # 0.05f

    const/high16 v1, 0x3e800000    # 0.25f

    add-float v2, p0, v1

    .line 649
    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    add-float/2addr v1, p1

    .line 650
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    sub-float/2addr v2, v1

    mul-float/2addr v2, v0

    .line 648
    invoke-static {v2}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method public static permissibleRatio(FF)F
    .registers 4
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 636
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    .line 637
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    .line 638
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    .line 636
    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private smoothCurve([F[FI)V
    .registers 12
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "idx"    # I

    .line 567
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 568
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v1, "unsmoothed curve"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 570
    :cond_c
    aget v0, p1, p3

    .line 571
    .local v0, "prevLux":F
    aget v1, p2, p3

    .line 573
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p3, 0x1

    .local v2, "i":I
    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_38

    .line 574
    aget v3, p1, v2

    .line 575
    .local v3, "currLux":F
    aget v4, p2, v2

    .line 588
    .local v4, "currBrightness":F
    sget v5, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_20

    .line 589
    goto :goto_38

    .line 592
    :cond_20
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 593
    .local v5, "perceptibleMinBrightness":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 594
    .local v6, "newBrightness":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_31

    .line 595
    const/high16 v6, 0x3f800000    # 1.0f

    .line 599
    :cond_31
    move v0, v3

    .line 600
    move v1, v6

    .line 601
    aput v6, p2, v2

    .line 573
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "perceptibleMinBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 604
    .end local v2    # "i":I
    :cond_38
    :goto_38
    aget v0, p1, p3

    .line 605
    aget v1, p2, p3

    .line 606
    add-int/lit8 v2, p3, -0x1

    .restart local v2    # "i":I
    :goto_3e
    if-ltz v2, :cond_5a

    .line 607
    aget v3, p1, v2

    .line 608
    .restart local v3    # "currLux":F
    aget v4, p2, v2

    .line 618
    .restart local v4    # "currBrightness":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4a

    .line 619
    goto :goto_5a

    .line 622
    :cond_4a
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 623
    .restart local v5    # "perceptibleMinBrightness":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 626
    .restart local v6    # "newBrightness":F
    move v0, v3

    .line 627
    move v1, v6

    .line 628
    aput v6, p2, v2

    .line 606
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "perceptibleMinBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_3e

    .line 630
    .end local v2    # "i":I
    :cond_5a
    :goto_5a
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_66

    .line 631
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "smoothed curve"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 633
    :cond_66
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToBacklight(F)I
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method protected getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 15
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F
    .param p3, "userLux"    # F
    .param p4, "userBrightness"    # F
    .param p5, "adjustment"    # F
    .param p6, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 694
    move-object v0, p1

    .line 695
    .local v0, "newLux":[F
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 696
    .local v1, "newBrightness":[F
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_12

    .line 697
    sget-object v2, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v3, "unadjusted curve"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 699
    :cond_12
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p5, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p5

    .line 700
    neg-float v4, p5

    invoke-static {p6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 701
    .local v4, "gamma":F
    iget-boolean v5, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v5, :cond_58

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAdjustedCurve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, p5

    .line 703
    invoke-static {p6, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 702
    const-string v6, "BrightnessMappingStrategy"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_58
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_72

    .line 706
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5d
    array-length v6, v1

    if-ge v5, v6, :cond_72

    .line 708
    aget v6, v1, v5

    cmpl-float v6, v6, v3

    if-lez v6, :cond_67

    .line 709
    goto :goto_72

    .line 712
    :cond_67
    aget v6, v1, v5

    invoke-static {v6, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    aput v6, v1, v5

    .line 706
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 715
    .end local v5    # "i":I
    :cond_72
    :goto_72
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_7e

    .line 716
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v5, "gamma adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 718
    :cond_7e
    cmpl-float v2, p3, v2

    if-eqz v2, :cond_b0

    .line 719
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 721
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 722
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 723
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_b0

    .line 724
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    const-string/jumbo v5, "gamma and user adjusted curve"

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 726
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 727
    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [F

    const-string/jumbo v7, "user adjusted curve"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/server/display/utils/Plog;->logCurve(Ljava/lang/String;[F[F)Lcom/android/server/display/utils/Plog;

    .line 730
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_b0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getAutoBrightnessScaleFactorValue()F
.end method

.method public getBrightness(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 319
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(FLjava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public abstract getBrightness(FLjava/lang/String;I)F
.end method

.method public abstract getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getBrightnessForSpline(FLandroid/util/Spline;)F
.end method

.method public abstract getBrightnessSpline()Landroid/util/Spline;
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getShortTermModelTimeout()J
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method protected inferAutoBrightnessAdjustment(FFF)F
    .registers 12
    .param p1, "maxGamma"    # F
    .param p2, "desiredBrightness"    # F
    .param p3, "currentBrightness"    # F

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 668
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_39

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_14

    goto :goto_39

    .line 671
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1c

    .line 672
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3b

    .line 674
    :cond_1c
    cmpl-float v2, p2, v3

    if-nez v2, :cond_23

    .line 675
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 678
    :cond_23
    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p3}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 680
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_3b

    .line 669
    :cond_39
    :goto_39
    sub-float v0, p2, p3

    .line 682
    :goto_3b
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 683
    iget-boolean v2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v2, :cond_a2

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inferAutoBrightnessAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v6, v0

    .line 685
    invoke-static {p1, v6}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " == "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    const-string v7, "BrightnessMappingStrategy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {p3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_a2
    return v0
.end method

.method protected insertOffsetPoints([F[FLandroid/util/Spline;Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)Landroid/util/Pair;
    .registers 14
    .param p1, "luxLevels"    # [F
    .param p2, "brightnessLevels"    # [F
    .param p3, "unadjustedSpline"    # Landroid/util/Spline;
    .param p4, "userOffsetManager"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Landroid/util/Spline;",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;",
            ")",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 494
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 496
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 498
    .local v1, "userOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    if-eqz v1, :cond_50

    .line 499
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 500
    .local v2, "userOffsetLux":[F
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    .line 502
    .local v3, "userOffsetBrightness":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    array-length v5, v2

    if-ge v4, v5, :cond_39

    .line 503
    aget v5, v2, v4

    .line 505
    .local v5, "luxToInsert":F
    const/4 v6, 0x0

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_36

    sget v6, Lcom/android/server/display/BrightnessMappingStrategy;->sHbmLux:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_36

    .line 506
    invoke-virtual {p3, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    aget v7, v3, v4

    add-float/2addr v6, v7

    .line 509
    .local v6, "brightnessToInsert":F
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [F

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, [F

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v0

    .line 502
    .end local v5    # "luxToInsert":F
    .end local v6    # "brightnessToInsert":F
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 513
    .end local v4    # "i":I
    :cond_39
    invoke-virtual {p4}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getLastAddedLux()F

    move-result v4

    .line 514
    .local v4, "lastUserLux":F
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    invoke-static {v5, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v5

    .line 516
    .local v5, "idx":I
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [F

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->smoothCurve([F[FI)V

    .line 519
    .end local v2    # "userOffsetLux":[F
    .end local v3    # "userOffsetBrightness":[F
    .end local v4    # "lastUserLux":F
    .end local v5    # "idx":I
    :cond_50
    return-object v0
.end method

.method public abstract isDefaultConfig()Z
.end method

.method protected plusOffsetBrightness([F[FLcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;)[F
    .registers 11
    .param p1, "existingLux"    # [F
    .param p2, "existingBrightness"    # [F
    .param p3, "userOffsetManager"    # Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    .line 468
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 469
    .local v0, "newBrightness":[F
    invoke-virtual {p3}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->getCurve()Landroid/util/Pair;

    move-result-object v1

    .line 471
    .local v1, "userOffsetCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    if-eqz v1, :cond_3a

    .line 472
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    .line 474
    .local v2, "offsetSpline":Landroid/util/Spline;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, v0

    if-ge v3, v4, :cond_3a

    .line 476
    aget v4, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    .line 477
    goto :goto_3a

    .line 481
    :cond_24
    aget v4, v0, v3

    aget v6, p1, v3

    invoke-virtual {v2, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    add-float/2addr v4, v6

    aput v4, v0, v3

    .line 483
    aget v4, v0, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_37

    .line 484
    aput v5, v0, v3

    .line 474
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 489
    .end local v2    # "offsetSpline":Landroid/util/Spline;
    .end local v3    # "i":I
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setAutoBrightnessScaleFactor(I)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 268
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 273
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->setLoggingEnabled(Z)Z

    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public shouldResetShortTermModel(FF)Z
    .registers 12
    .param p1, "ambientLux"    # F
    .param p2, "shortTermModelAnchor"    # F

    .line 414
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    .line 415
    .local v0, "config":Landroid/hardware/display/BrightnessConfiguration;
    const v1, 0x3f19999a    # 0.6f

    .line 416
    .local v1, "minThresholdRatio":F
    const v2, 0x3f19999a    # 0.6f

    .line 417
    .local v2, "maxThresholdRatio":F
    if-eqz v0, :cond_28

    .line 418
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 419
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelLowerLuxMultiplier()F

    move-result v1

    .line 421
    :cond_1a
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_28

    .line 422
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelUpperLuxMultiplier()F

    move-result v2

    .line 433
    :cond_28
    const/high16 v3, 0x41f00000    # 30.0f

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 435
    .local v3, "shortTermModelThreshold":F
    sub-float v4, p2, v3

    .line 436
    .local v4, "minAmbientLux":F
    add-float v5, p2, v3

    .line 439
    .local v5, "maxAmbientLux":F
    cmpg-float v6, v4, p1

    const-string v7, "BrightnessMappingStrategy"

    if-gez v6, :cond_68

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_68

    .line 440
    iget-boolean v6, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v6, :cond_66

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " < "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_66
    const/4 v6, 0x0

    return v6

    .line 446
    :cond_68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ShortTermModel: shouldResetShortTermModel ambient lux is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v6, 0x1

    return v6
.end method
