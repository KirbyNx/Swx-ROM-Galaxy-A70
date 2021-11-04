.class Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultParameters"
.end annotation


# static fields
.field private static IDX_DYNAMIC_PROTECT:I

.field private static IDX_DYNAMIC_REENTRY:I

.field private static IDX_PROTECTED_HOME:I

.field private static IDX_PROTECTED_LMKD:I

.field private static IDX_RAM:I

.field private static IDX_TARGET_FREE:I

.field static UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I

.field static UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I

.field static UNKNOWN_GB_TARGET_FREE:I

.field private static sDynamicParameters:[[F

.field private static sParameters:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 31
    const v0, 0x8000

    sput v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_TARGET_FREE:I

    .line 32
    const/16 v0, 0x20

    sput v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I

    .line 33
    sput v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    .line 36
    const/4 v1, 0x1

    sput v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I

    .line 37
    const/4 v2, 0x2

    sput v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_LMKD:I

    .line 38
    const/4 v3, 0x3

    sput v3, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I

    .line 40
    const/16 v4, 0x8

    new-array v5, v4, [[I

    const/4 v6, 0x5

    new-array v7, v6, [I

    fill-array-data v7, :array_9a

    aput-object v7, v5, v0

    new-array v7, v6, [I

    fill-array-data v7, :array_a8

    aput-object v7, v5, v1

    new-array v7, v6, [I

    fill-array-data v7, :array_b6

    aput-object v7, v5, v2

    new-array v7, v6, [I

    fill-array-data v7, :array_c4

    aput-object v7, v5, v3

    new-array v7, v6, [I

    fill-array-data v7, :array_d2

    const/4 v8, 0x4

    aput-object v7, v5, v8

    new-array v7, v6, [I

    fill-array-data v7, :array_e0

    aput-object v7, v5, v6

    new-array v7, v6, [I

    fill-array-data v7, :array_ee

    const/4 v9, 0x6

    aput-object v7, v5, v9

    new-array v7, v6, [I

    fill-array-data v7, :array_fc

    const/4 v10, 0x7

    aput-object v7, v5, v10

    sput-object v5, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    .line 50
    sput v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    .line 51
    sput v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    .line 52
    new-array v4, v4, [[F

    new-array v5, v3, [F

    fill-array-data v5, :array_10a

    aput-object v5, v4, v0

    new-array v0, v3, [F

    fill-array-data v0, :array_114

    aput-object v0, v4, v1

    new-array v0, v3, [F

    fill-array-data v0, :array_11e

    aput-object v0, v4, v2

    new-array v0, v3, [F

    fill-array-data v0, :array_128

    aput-object v0, v4, v3

    new-array v0, v3, [F

    fill-array-data v0, :array_132

    aput-object v0, v4, v8

    new-array v0, v3, [F

    fill-array-data v0, :array_13c

    aput-object v0, v4, v6

    new-array v0, v3, [F

    fill-array-data v0, :array_146

    aput-object v0, v4, v9

    new-array v0, v3, [F

    fill-array-data v0, :array_150

    aput-object v0, v4, v10

    sput-object v4, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    return-void

    :array_9a
    .array-data 4
        0x2
        0x1e5
        0x5
        0x3
        0x375
    .end array-data

    :array_a8
    .array-data 4
        0x3
        0x266
        0x7
        0x6
        0x44a
    .end array-data

    :array_b6
    .array-data 4
        0x4
        0x276
        0xb
        0x8
        0x57e
    .end array-data

    :array_c4
    .array-data 4
        0x6
        0x44c
        0x13
        0x9
        0x7f2
    .end array-data

    :array_d2
    .array-data 4
        0x8
        0x866
        0x18
        0xa
        0x9f6
    .end array-data

    :array_e0
    .array-data 4
        0xc
        0x999
        0x1c
        0xe
        0xb29
    .end array-data

    :array_ee
    .array-data 4
        0x10
        0x999
        0x1c
        0xe
        0xb29
    .end array-data

    :array_fc
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10a
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_114
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40e00000    # 7.0f
    .end array-data

    :array_11e
    .array-data 4
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
    .end array-data

    :array_128
    .array-data 4
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41500000    # 13.0f
    .end array-data

    :array_132
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41800000    # 16.0f
    .end array-data

    :array_13c
    .array-data 4
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41800000    # 16.0f
    .end array-data

    :array_146
    .array-data 4
        0x41800000    # 16.0f
        0x41600000    # 14.0f
        0x41880000    # 17.0f
    .end array-data

    :array_150
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()[[I
    .registers 1

    .line 29
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 29
    sget v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 29
    sget v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 29
    sget v0, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I

    return v0
.end method

.method static getDynamicProtectedCount(I)F
    .registers 6
    .param p0, "ramSizeGb"    # I

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v2, v1, v0

    sget v3, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_21

    .line 93
    aget-object v2, v1, v0

    aget v2, v2, v3

    int-to-float v3, p0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1e

    .line 94
    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_PROTECT:I

    aget v1, v1, v2

    return v1

    .line 92
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_21
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static getProtectedCountOnHomeTrigger(I)I
    .registers 5
    .param p0, "ramSizeGb"    # I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v1, v0

    sget v3, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v2, v3

    if-lez v2, :cond_1b

    .line 84
    aget-object v2, v1, v0

    aget v2, v2, v3

    if-lt v2, p0, :cond_18

    .line 85
    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_HOME:I

    aget v1, v1, v2

    return v1

    .line 83
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method static getProtectedCountOnLmkdTrigger(I)I
    .registers 5
    .param p0, "ramSizeGb"    # I

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v1, v0

    sget v3, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v2, v3

    if-lez v2, :cond_1b

    .line 75
    aget-object v2, v1, v0

    aget v2, v2, v3

    if-lt v2, p0, :cond_18

    .line 76
    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_PROTECTED_LMKD:I

    aget v1, v1, v2

    return v1

    .line 74
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method static getReentry(I)F
    .registers 5
    .param p0, "ramSizeGb"    # I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v1, v1, v2

    if-lez v1, :cond_20

    .line 102
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sDynamicParameters:[[F

    aget-object v3, v1, v0

    aget v2, v3, v2

    int-to-float v3, p0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1d

    .line 103
    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_DYNAMIC_REENTRY:I

    aget v1, v1, v2

    return v1

    .line 101
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "i":I
    :cond_20
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method static getTargetFree(I)I
    .registers 5
    .param p0, "ramSizeGb"    # I

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->sParameters:[[I

    aget-object v2, v1, v0

    sget v3, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_RAM:I

    aget v2, v2, v3

    if-lez v2, :cond_1b

    .line 66
    aget-object v2, v1, v0

    aget v2, v2, v3

    if-lt v2, p0, :cond_18

    .line 67
    aget-object v1, v1, v0

    sget v2, Lcom/android/server/ipm/chimera/ChimeraStrategy$DefaultParameters;->IDX_TARGET_FREE:I

    aget v1, v1, v2

    return v1

    .line 64
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method
