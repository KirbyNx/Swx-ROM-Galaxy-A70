.class public Lcom/android/server/accessibility/CVDCalculator;
.super Ljava/lang/Object;
.source "CVDCalculator.java"


# static fields
.field public static final DEUTAN:I = 0x1

.field public static final DMC_ONLY:I = 0x0

.field public static final DMC_SDC_HYBRID:I = 0x1

.field public static final NOT_COLORBLIND:I = 0x3

.field public static final PROTAN:I = 0x0

.field private static final RGB_CMY_MAX:I = 0xc

.field public static final TRITAN:I = 0x2


# instance fields
.field private CVDMethod:I

.field private CVDSeverity:D

.field private CVDStrength:D

.field private CVDType:I

.field private SpotsU:[D

.field private SpotsV:[D

.field private c_index:D

.field private mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

.field private mInputNums:[I

.field private majorAngle:D

.field private majorRadius:D

.field private minorRadius:D

.field private s_index:D

.field private tes:D

.field private u:[D

.field private v:[D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x10

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    .line 63
    new-array v1, v0, [D

    fill-array-data v1, :array_72

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    .line 66
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    .line 67
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    .line 87
    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 95
    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    invoke-direct {v0}, Lcom/android/server/accessibility/ColorTransferTable;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 98
    return-void

    :array_2e
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    :array_72
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method

.method private Calc()V
    .registers 31

    .line 230
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 232
    .local v1, "cvdStrength":D
    const/16 v3, 0xf

    new-array v4, v3, [D

    .line 233
    .local v4, "temp2u":[D
    new-array v5, v3, [D

    .line 235
    .local v5, "temp2v":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    if-ge v6, v3, :cond_26

    .line 236
    iget-object v7, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    aget-wide v10, v7, v6

    sub-double/2addr v8, v10

    aput-wide v8, v4, v6

    .line 237
    iget-object v7, v0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    aget-wide v10, v7, v6

    sub-double/2addr v8, v10

    aput-wide v8, v5, v6

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 240
    .end local v6    # "i":I
    :cond_26
    const-wide/16 v6, 0x0

    .line 241
    .local v6, "sum1":D
    const-wide/16 v8, 0x0

    .line 242
    .local v8, "sum2":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2b
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-ge v10, v3, :cond_4d

    .line 243
    aget-wide v13, v4, v10

    mul-double/2addr v13, v11

    aget-wide v15, v5, v10

    mul-double/2addr v13, v15

    add-double/2addr v6, v13

    .line 244
    aget-wide v13, v4, v10

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    move-object/from16 v16, v4

    .end local v4    # "temp2u":[D
    .local v16, "temp2u":[D
    aget-wide v3, v5, v10

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v13, v3

    add-double/2addr v8, v13

    .line 242
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v16

    const/16 v3, 0xf

    goto :goto_2b

    .end local v16    # "temp2u":[D
    .restart local v4    # "temp2u":[D
    :cond_4d
    move-object/from16 v16, v4

    .line 246
    .end local v4    # "temp2u":[D
    .end local v10    # "i":I
    .restart local v16    # "temp2u":[D
    div-double v3, v6, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    div-double/2addr v3, v11

    .line 248
    .local v3, "piAngle":D
    const/4 v10, 0x2

    new-array v13, v10, [D

    .line 249
    .local v13, "moms":[D
    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    aput-wide v17, v13, v14

    .line 250
    const/4 v15, 0x1

    aput-wide v17, v13, v15

    .line 253
    cmpg-double v17, v3, v17

    const-wide v19, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-gez v17, :cond_6d

    add-double v19, v3, v19

    .local v19, "newAngle":D
    goto :goto_6f

    .line 254
    .end local v19    # "newAngle":D
    :cond_6d
    sub-double v19, v3, v19

    .line 256
    .restart local v19    # "newAngle":D
    :goto_6f
    const/16 v17, 0x0

    move/from16 v10, v17

    .restart local v10    # "i":I
    :goto_73
    const/16 v15, 0xf

    if-ge v10, v15, :cond_b7

    .line 257
    aget-wide v21, v13, v14

    aget-wide v23, v5, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    aget-wide v25, v16, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    sub-double v14, v23, v25

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v21, v21, v14

    const/4 v14, 0x0

    aput-wide v21, v13, v14

    .line 258
    const/4 v14, 0x1

    aget-wide v21, v13, v14

    aget-wide v23, v5, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    aget-wide v25, v16, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v25, v25, v28

    sub-double v14, v23, v25

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double v21, v21, v14

    const/4 v14, 0x1

    aput-wide v21, v13, v14

    .line 256
    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_73

    .line 261
    .end local v10    # "i":I
    :cond_b7
    const/4 v10, 0x0

    aget-wide v14, v13, v10

    const-wide/high16 v21, 0x402e000000000000L    # 15.0

    div-double v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    aput-wide v14, v13, v10

    .line 262
    const/4 v14, 0x1

    aget-wide v23, v13, v14

    div-double v23, v23, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    aput-wide v21, v13, v14

    .line 263
    aget-wide v21, v13, v10

    aget-wide v23, v13, v14

    cmpl-double v15, v21, v23

    const-wide v21, 0x400921fb54442d18L    # Math.PI

    const-wide v23, 0x4066800000000000L    # 180.0

    if-lez v15, :cond_f0

    .line 264
    aget-wide v11, v13, v10

    iput-wide v11, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    .line 265
    aget-wide v10, v13, v14

    iput-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    .line 266
    mul-double v23, v23, v19

    div-double v10, v23, v21

    iput-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    goto :goto_ff

    .line 268
    :cond_f0
    aget-wide v10, v13, v14

    iput-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    .line 269
    const/4 v10, 0x0

    aget-wide v11, v13, v10

    iput-wide v11, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    .line 270
    mul-double v23, v23, v3

    div-double v10, v23, v21

    iput-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    .line 273
    :goto_ff
    iget-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    const-wide v14, 0x4022795e9e1b089aL    # 9.23705

    div-double v14, v10, v14

    iput-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    .line 274
    iget-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    div-double v14, v10, v14

    iput-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    .line 275
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    move-wide/from16 v21, v1

    .end local v1    # "cvdStrength":D
    .local v21, "cvdStrength":D
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    .line 277
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    const-wide v10, 0x3ff999999999999aL    # 1.6

    cmpg-double v1, v1, v10

    if-gtz v1, :cond_134

    .line 278
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_153

    .line 279
    :cond_134
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    const-wide v14, 0x3fe6666666666666L    # 0.7

    cmpl-double v12, v1, v14

    if-ltz v12, :cond_143

    .line 280
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_153

    .line 281
    :cond_143
    const-wide v14, -0x3fafc00000000000L    # -65.0

    cmpg-double v1, v1, v14

    if-gez v1, :cond_150

    .line 282
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    goto :goto_153

    .line 284
    :cond_150
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 287
    :goto_153
    iget-wide v1, v0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    .line 288
    .local v1, "adjusted_c":D
    cmpg-double v12, v1, v10

    if-gez v12, :cond_15e

    const-wide v1, 0x3ff999999999999aL    # 1.6

    .line 289
    :cond_15e
    const-wide v14, 0x4010cccccccccccdL    # 4.2

    cmpl-double v12, v1, v14

    if-lez v12, :cond_16c

    const-wide v1, 0x4010cccccccccccdL    # 4.2

    .line 290
    :cond_16c
    sub-double v10, v1, v10

    const-wide v14, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v10, v14

    .line 291
    .end local v21    # "cvdStrength":D
    .local v10, "cvdStrength":D
    iput-wide v10, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    .line 295
    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpg-double v12, v10, v14

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    if-gez v12, :cond_186

    .line 296
    mul-double v17, v17, v10

    move-wide/from16 v14, v17

    .local v17, "SimSeverity":D
    goto :goto_194

    .line 298
    .end local v17    # "SimSeverity":D
    :cond_186
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    sub-double v14, v10, v14

    mul-double v14, v14, v17

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    div-double v14, v14, v17

    add-double v17, v14, v21

    move-wide/from16 v14, v17

    .line 301
    .local v14, "SimSeverity":D
    :goto_194
    iput-wide v14, v0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    .line 302
    return-void
.end method

.method private InitMakeUV()Z
    .registers 8

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 203
    .local v1, "num":I
    const/4 v0, 0x1

    .line 206
    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    aput-wide v5, v2, v4

    .line 207
    iget-object v2, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v5, v3, v4

    aput-wide v5, v2, v4

    .line 210
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    const/16 v3, 0xf

    if-ge v2, v3, :cond_38

    .line 211
    :try_start_19
    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    aget v3, v3, v2

    move v1, v3

    .line 212
    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    aget-wide v5, v5, v1

    aput-wide v5, v3, v4

    .line 213
    iget-object v3, p0, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    aget-wide v5, v5, v1

    aput-wide v5, v3, v4
    :try_end_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_32} :catch_35

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 215
    .end local v2    # "i":I
    :catch_35
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    goto :goto_39

    .line 217
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_38
    nop

    .line 220
    :goto_39
    return v0
.end method

.method private roundHalfUp(D)D
    .registers 9
    .param p1, "value"    # D

    .line 539
    const-wide/16 v0, 0x0

    .line 541
    .local v0, "roundedValue":D
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v2

    .line 542
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-double v0, v4

    .line 543
    div-double/2addr v0, v2

    .line 545
    return-wide v0
.end method


# virtual methods
.method public calculate()V
    .registers 1

    .line 160
    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->Calc()V

    .line 161
    return-void
.end method

.method public getCVDMethod()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    return v0
.end method

.method public getCVDSeverity()D
    .registers 5

    .line 184
    const-wide/16 v0, 0x0

    .line 187
    .local v0, "roundedCVDSeverity":D
    iget-wide v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/CVDCalculator;->roundHalfUp(D)D

    move-result-wide v0

    .line 189
    return-wide v0
.end method

.method public getCVDStrength()D
    .registers 3

    .line 615
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDStrength:D

    return-wide v0
.end method

.method public getCVDType()I
    .registers 2

    .line 174
    iget v0, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    return v0
.end method

.method public getC_index()D
    .registers 3

    .line 585
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    return-wide v0
.end method

.method public getMajorAngle()D
    .registers 3

    .line 575
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    return-wide v0
.end method

.method public getMajorRadius()D
    .registers 3

    .line 555
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    return-wide v0
.end method

.method public getMinorRadius()D
    .registers 3

    .line 565
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    return-wide v0
.end method

.method public getPredefinedServerityAndUserParameter(II)[D
    .registers 5
    .param p1, "intensity"    # I
    .param p2, "type"    # I

    .line 522
    iget-object v0, p0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/ColorTransferTable;->getPredefinedValueForEachType(II)[D

    move-result-object v0

    .line 524
    .local v0, "predefinedValue":[D
    if-eqz v0, :cond_9

    .line 525
    return-object v0

    .line 527
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRGBCMY(D)[I
    .registers 11
    .param p1, "userParameter"    # D

    .line 313
    const/4 v0, 0x0

    .line 317
    .local v0, "rgbCmy":[I
    iget v2, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    iget v3, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    iget-wide v4, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    move-object v1, p0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    move-result-object v0

    .line 319
    return-object v0
.end method

.method public getRGBCMY(IIDD)[I
    .registers 35
    .param p1, "cvdMethod"    # I
    .param p2, "cvdType"    # I
    .param p3, "severity"    # D
    .param p5, "userParameter"    # D

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    const/4 v13, 0x0

    .line 337
    .local v13, "firstInteger":I
    const/4 v14, 0x0

    .line 340
    .local v14, "secondInteger":I
    const/4 v2, 0x0

    .line 341
    .local v2, "rgbCmy":[I
    const/16 v3, 0xc

    new-array v15, v3, [I

    .line 343
    .end local v2    # "rgbCmy":[I
    .local v15, "rgbCmy":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRGBCMY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CVDType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Severity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CVDCalculator"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0xb

    const/16 v23, 0xa

    const/16 v24, 0x9

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/4 v5, 0x1

    const v2, 0xff00

    const/16 v25, 0xff

    if-nez v1, :cond_148

    .line 347
    if-eqz v10, :cond_7d

    if-eq v10, v5, :cond_7d

    if-ne v10, v7, :cond_63

    goto :goto_7d

    .line 403
    :cond_63
    aput v2, v15, v21

    .line 404
    aput v25, v15, v5

    .line 405
    aput v25, v15, v7

    .line 406
    aput v25, v15, v20

    .line 407
    aput v2, v15, v19

    .line 408
    aput v25, v15, v18

    .line 409
    aput v25, v15, v6

    .line 410
    aput v25, v15, v17

    .line 411
    aput v2, v15, v16

    .line 412
    aput v25, v15, v24

    .line 413
    aput v25, v15, v23

    .line 414
    aput v25, v15, v22

    goto/16 :goto_266

    .line 350
    :cond_7d
    :goto_7d
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 351
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 353
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v21

    .line 355
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 356
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 358
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v8, 0x1

    aput v2, v15, v8

    .line 360
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 361
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 363
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v9, 0x2

    aput v2, v15, v9

    .line 365
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 366
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 368
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v20

    .line 370
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 371
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 373
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v19

    .line 375
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 376
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 378
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v18

    .line 380
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 381
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 383
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v6, 0x6

    aput v2, v15, v6

    .line 385
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 386
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 388
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v17

    .line 390
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v13

    .line 391
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_DMC(IIIDD)I

    move-result v14

    .line 393
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v16

    .line 395
    aput v25, v15, v24

    .line 396
    aput v25, v15, v23

    .line 397
    aput v25, v15, v22

    goto/16 :goto_266

    .line 418
    :cond_148
    move v8, v5

    move v9, v7

    if-ne v1, v8, :cond_249

    .line 419
    if-eqz v10, :cond_16d

    if-eq v10, v8, :cond_16d

    if-ne v10, v9, :cond_153

    goto :goto_16d

    .line 484
    :cond_153
    aput v2, v15, v21

    .line 485
    aput v25, v15, v8

    .line 486
    aput v25, v15, v9

    .line 487
    aput v25, v15, v20

    .line 488
    aput v2, v15, v19

    .line 489
    aput v25, v15, v18

    .line 490
    aput v25, v15, v6

    .line 491
    aput v25, v15, v17

    .line 492
    aput v2, v15, v16

    .line 493
    aput v25, v15, v24

    .line 494
    aput v25, v15, v23

    .line 495
    aput v25, v15, v22

    goto/16 :goto_266

    .line 422
    :cond_16d
    :goto_16d
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v27, v8

    move/from16 v26, v9

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 423
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 425
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v21

    .line 427
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 428
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 430
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v27

    .line 432
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 433
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 435
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v26

    .line 437
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 438
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 440
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v20

    .line 442
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 443
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 445
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v19

    .line 447
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 448
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 450
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v18

    .line 452
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 453
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 455
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    const/4 v8, 0x6

    aput v2, v15, v8

    .line 457
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x3

    move v1, v8

    move-wide/from16 v8, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 458
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 460
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v17

    .line 462
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v13

    .line 463
    iget-object v2, v0, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    const/4 v3, 0x2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ColorTransferTable;->getColorTransferValue_Hybrid(IIIDD)I

    move-result v14

    .line 465
    mul-int/lit16 v2, v13, 0x100

    add-int/2addr v2, v14

    aput v2, v15, v16

    .line 469
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    if-ge v2, v1, :cond_242

    .line 470
    const/16 v1, 0xcc

    aput v1, v15, v24

    .line 471
    aput v1, v15, v23

    .line 472
    aput v1, v15, v22

    goto :goto_266

    .line 475
    :cond_242
    aput v25, v15, v24

    .line 476
    aput v25, v15, v23

    .line 477
    aput v25, v15, v22

    goto :goto_266

    .line 502
    :cond_249
    move v1, v6

    move/from16 v27, v8

    move/from16 v26, v9

    aput v2, v15, v21

    .line 503
    aput v25, v15, v27

    .line 504
    aput v25, v15, v26

    .line 505
    aput v25, v15, v20

    .line 506
    aput v2, v15, v19

    .line 507
    aput v25, v15, v18

    .line 508
    aput v25, v15, v1

    .line 509
    aput v25, v15, v17

    .line 510
    aput v2, v15, v16

    .line 511
    aput v25, v15, v24

    .line 512
    aput v25, v15, v23

    .line 513
    aput v25, v15, v22

    .line 516
    :goto_266
    return-object v15
.end method

.method public getS_index()D
    .registers 3

    .line 595
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->s_index:D

    return-wide v0
.end method

.method public getTes()D
    .registers 3

    .line 605
    iget-wide v0, p0, Lcom/android/server/accessibility/CVDCalculator;->tes:D

    return-wide v0
.end method

.method public setCVDMethod(I)Z
    .registers 4
    .param p1, "cvdMethod"    # I

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "result":Z
    if-eqz p1, :cond_b

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    goto :goto_b

    .line 135
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    goto :goto_e

    .line 131
    :cond_b
    :goto_b
    iput p1, p0, Lcom/android/server/accessibility/CVDCalculator;->CVDMethod:I

    .line 132
    const/4 v0, 0x1

    .line 139
    :goto_e
    return v0
.end method

.method public setNum([I)Z
    .registers 3
    .param p1, "nums"    # [I

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    iput-object p1, p0, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    .line 113
    invoke-direct {p0}, Lcom/android/server/accessibility/CVDCalculator;->InitMakeUV()Z

    move-result v0

    .line 116
    return v0
.end method
