.class public Lcom/android/server/policy/TspGripCommand;
.super Ljava/lang/Object;
.source "TspGripCommand.java"


# static fields
.field private static final DEFAULT_EDGE_ZONE:I = 0x3c

.field private static final DEFAULT_LAND_X1:I = 0xa

.field private static final DEFAULT_PORT_X1:I = 0xa

.field private static final DEFAULT_PORT_X2:I = 0x20

.field private static final DEFAULT_PORT_X3:I = 0x20

.field private static final DEFAULT_PORT_Y1:I = 0x300

.field private static final DEFAULT_PORT_Y2:I = 0xa00

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_LAND:I = 0x5

.field private static final INDEX_EDGE_PORT:I = 0x4

.field private static final INDEX_LAND_BOTTOM_GRIP_WIDTH:I = 0x9

.field private static final INDEX_LAND_BOTTOM_REJECT_WIDTH:I = 0x7

.field private static final INDEX_LAND_TOP_GRIP_WIDTH:I = 0x8

.field private static final INDEX_LAND_TOP_REJECT_WIDTH:I = 0x6

.field private static final INDEX_V3_DEADZONE_LAND_X1:I = 0x5

.field private static final INDEX_V3_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_V3_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_V3_DEADZONE_PORT_X3:I = 0x3

.field private static final INDEX_V3_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_V3_DEADZONE_PORT_Y2:I = 0x4

.field private static final INDEX_V3_EDGE_LAND:I = 0x7

.field private static final INDEX_V3_EDGE_PORT:I = 0x6

.field private static final INDEX_V3_LAND_BOTTOM_GRIP_WIDTH:I = 0xb

.field private static final INDEX_V3_LAND_BOTTOM_REJECT_WIDTH:I = 0x9

.field private static final INDEX_V3_LAND_TOP_GRIP_WIDTH:I = 0xa

.field private static final INDEX_V3_LAND_TOP_REJECT_WIDTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TspGripCommand"

.field private static final WQHD_MIN_HEIGHT:I = 0xa00

.field private static final WQHD_MIN_WIDTH:I = 0x5a0


# instance fields
.field mLandBottomGripWidth:I

.field mLandBottomRejectWidth:I

.field mLandEdgeZone:I

.field mLandTopGriptWidth:I

.field mLandTopRejecttWidth:I

.field mLandX1:I

.field mPortEdgeZone:I

.field mPortX1:I

.field mPortX2:I

.field mPortX3:I

.field mPortY1:I

.field mPortY2:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    .line 85
    return-void
.end method

.method constructor <init>(IIIIIIII)V
    .registers 9
    .param p1, "portX1"    # I
    .param p2, "portX2"    # I
    .param p3, "portX3"    # I
    .param p4, "portY1"    # I
    .param p5, "portY2"    # I
    .param p6, "landX1"    # I
    .param p7, "portEdgeZone"    # I
    .param p8, "landEdgeZone"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct/range {p0 .. p8}, Lcom/android/server/policy/TspGripCommand;->set(IIIIIIII)V

    .line 90
    return-void
.end method

.method private convertRation(III)I
    .registers 5
    .param p1, "value"    # I
    .param p2, "firmwareSize"    # I
    .param p3, "minRatioSize"    # I

    .line 469
    if-ge p2, p3, :cond_6

    .line 470
    mul-int v0, p1, p2

    div-int/2addr v0, p3

    return v0

    .line 472
    :cond_6
    return p1
.end method

.method private convertToInt(IILjava/lang/String;I)I
    .registers 10
    .param p1, "size"    # I
    .param p2, "firmwareSize"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "minRatioSize"    # I

    .line 452
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 453
    return v1

    .line 455
    :cond_8
    const/4 v0, -0x1

    .line 456
    .local v0, "index":I
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "changedString":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_2c

    .line 459
    int-to-float v3, p2

    .line 460
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    mul-float/2addr v3, v1

    .line 459
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 461
    :cond_2c
    const-string/jumbo v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_48

    .line 462
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 463
    .local v1, "px":F
    int-to-float v3, p2

    mul-float/2addr v3, v1

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 465
    .end local v1    # "px":F
    :cond_48
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    return v1
.end method

.method static getTspHeightPixel(III)I
    .registers 7
    .param p0, "height"    # I
    .param p1, "firmwareHeight"    # I
    .param p2, "realHeight"    # I

    .line 395
    mul-int v0, p1, p2

    div-int/2addr v0, p0

    .line 396
    .local v0, "ret":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2e

    .line 397
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v1, "debugString":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "getTspHeightPixel: init="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 399
    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TspGripCommand"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    :cond_2e
    return v0
.end method

.method private getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .registers 10
    .param p1, "command"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "width"    # I
    .param p5, "firmwareWidth"    # I
    .param p6, "minRatioSize"    # I

    .line 383
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, "value":I
    if-ltz v0, :cond_c

    .line 385
    invoke-direct {p0, v0, p5, p6}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    return v1

    .line 387
    :cond_c
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "strValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 389
    return p3

    .line 391
    :cond_17
    invoke-direct {p0, p4, p5, v1, p6}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private parse(IIIILandroid/os/Bundle;Z)Z
    .registers 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Landroid/os/Bundle;
    .param p6, "applyMin"    # Z

    .line 218
    move-object/from16 v7, p0

    move/from16 v8, p4

    move-object/from16 v9, p5

    if-eqz v9, :cond_db

    .line 219
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_26

    .line 220
    const-string v0, "deadzone_v3"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, "deadzoneV3Command":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parseForV3(IIIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 222
    return v10

    .line 226
    .end local v11    # "deadzoneV3Command":Ljava/lang/String;
    :cond_26
    const-string v0, "deadzone_v2"

    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, "deadzoneV2Command":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 228
    return v10

    .line 231
    :cond_3e
    const/4 v3, -0x1

    const/16 v6, 0x5a0

    const-string v2, "dead_zone_port_x1"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v12

    .line 233
    .local v12, "portX1":I
    const-string v2, "dead_zone_port_x2"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v13

    .line 235
    .local v13, "portX2":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_5d

    if-ne v13, v14, :cond_5d

    .line 236
    iput v12, v7, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    goto :goto_61

    .line 237
    :cond_5d
    if-eq v12, v14, :cond_61

    .line 238
    iput v12, v7, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 241
    :cond_61
    :goto_61
    if-eq v13, v14, :cond_65

    .line 242
    iput v13, v7, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 245
    :cond_65
    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const/16 v6, 0xa00

    const-string v2, "dead_zone_port_y1"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 248
    const-string v0, "dead_zone_port_real_y1"

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 249
    .local v15, "realPortY1":I
    if-eq v15, v14, :cond_8a

    .line 250
    move/from16 v14, p2

    invoke-static {v14, v8, v15}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(III)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    goto :goto_8c

    .line 249
    :cond_8a
    move/from16 v14, p2

    .line 253
    :goto_8c
    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const/16 v6, 0x5a0

    const-string v2, "dead_zone_land_x1"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 255
    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    const-string v2, "edge_zone_width"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v3

    iput v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 257
    iput v3, v7, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 258
    const-string v2, "edge_zone_land"

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 260
    iget v3, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    const-string v2, "edge_zone_port"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v0

    iput v0, v7, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 262
    if-eqz p6, :cond_d8

    .line 263
    const/16 v0, 0x5a0

    const/16 v1, 0xa

    move/from16 v2, p3

    invoke-direct {v7, v1, v2, v0}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    const/16 v3, 0xa00

    .line 264
    invoke-direct {v7, v1, v8, v3}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v1

    .line 263
    invoke-direct {v7, v0, v1}, Lcom/android/server/policy/TspGripCommand;->setMinimumValue(II)V

    goto :goto_da

    .line 262
    :cond_d8
    move/from16 v2, p3

    .line 266
    :goto_da
    return v10

    .line 268
    .end local v11    # "deadzoneV2Command":Ljava/lang/String;
    .end local v12    # "portX1":I
    .end local v13    # "portX2":I
    .end local v15    # "realPortY1":I
    :cond_db
    move/from16 v14, p2

    move/from16 v2, p3

    const/4 v0, 0x0

    return v0
.end method

.method private parse(IIIILjava/lang/String;)Z
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;

    .line 107
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private set(IIIIIIII)V
    .registers 9
    .param p1, "portX1"    # I
    .param p2, "portX2"    # I
    .param p3, "portX3"    # I
    .param p4, "portY1"    # I
    .param p5, "portY2"    # I
    .param p6, "landX1"    # I
    .param p7, "portEdgeZone"    # I
    .param p8, "landEdgeZone"    # I

    .line 425
    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 426
    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 427
    iput p3, p0, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    .line 428
    iput p4, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 429
    iput p5, p0, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    .line 430
    iput p6, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 431
    iput p7, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 432
    iput p8, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 433
    return-void
.end method

.method private setMinimumValue(II)V
    .registers 4
    .param p1, "minX"    # I
    .param p2, "minY"    # I

    .line 476
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    if-ge v0, p1, :cond_6

    .line 477
    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 479
    :cond_6
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    if-ge v0, p1, :cond_c

    .line 480
    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 482
    :cond_c
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    if-ge v0, p1, :cond_12

    .line 483
    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 485
    :cond_12
    return-void
.end method


# virtual methods
.method parse(IIIILandroid/os/Bundle;)Z
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Landroid/os/Bundle;

    .line 213
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method parse(IIIILjava/lang/String;Z)Z
    .registers 25
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "applyMin"    # Z

    .line 116
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v8, "TspGripCommand"

    if-eqz v0, :cond_31

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "debugString":Ljava/lang/StringBuffer;
    const-string/jumbo v9, "parse: command="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v9, " applyMin="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    :cond_31
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_181

    .line 123
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "tspDeadzoneArray":[Ljava/lang/String;
    const/16 v11, 0xa00

    const/4 v13, 0x1

    const/16 v14, 0x5a0

    :try_start_43
    array-length v0, v10

    if-gt v0, v13, :cond_5b

    .line 126
    aget-object v0, v10, v9

    if-eqz v0, :cond_51

    .line 127
    aget-object v0, v10, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto :goto_52

    :cond_51
    const/4 v15, 0x0

    :goto_52
    move-object v0, v15

    .line 128
    .local v0, "portX2String":Ljava/lang/String;
    invoke-direct {v1, v2, v4, v0, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 129
    .end local v0    # "portX2String":Ljava/lang/String;
    goto/16 :goto_13e

    .line 131
    :cond_5b
    aget-object v0, v10, v9

    if-eqz v0, :cond_66

    .line 132
    aget-object v0, v10, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    .line 133
    .local v0, "portX1String":Ljava/lang/String;
    :goto_67
    invoke-direct {v1, v2, v4, v0, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 135
    array-length v9, v10

    const/4 v15, 0x3

    if-lt v9, v15, :cond_9c

    .line 136
    aget-object v9, v10, v13

    if-eqz v9, :cond_7c

    .line 137
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_7d

    :cond_7c
    const/4 v9, 0x0

    .line 138
    .local v9, "portX2String":Ljava/lang/String;
    :goto_7d
    const/16 v16, 0x2

    aget-object v17, v10, v16

    if-eqz v17, :cond_8a

    .line 139
    aget-object v16, v10, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto :goto_8c

    :cond_8a
    const/16 v16, 0x0

    :goto_8c
    move-object/from16 v17, v16

    .line 140
    .local v17, "portY1String":Ljava/lang/String;
    invoke-direct {v1, v2, v4, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 141
    move-object/from16 v13, v17

    .end local v17    # "portY1String":Ljava/lang/String;
    .local v13, "portY1String":Ljava/lang/String;
    invoke-direct {v1, v3, v5, v13, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 143
    .end local v9    # "portX2String":Ljava/lang/String;
    .end local v13    # "portY1String":Ljava/lang/String;
    :cond_9c
    array-length v9, v10

    const/4 v12, 0x4

    if-lt v9, v12, :cond_b2

    .line 144
    aget-object v9, v10, v15

    if-eqz v9, :cond_ab

    .line 145
    aget-object v9, v10, v15

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_ac

    :cond_ab
    const/4 v9, 0x0

    .line 146
    .local v9, "landX1String":Ljava/lang/String;
    :goto_ac
    invoke-direct {v1, v2, v4, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 148
    .end local v9    # "landX1String":Ljava/lang/String;
    :cond_b2
    array-length v9, v10

    const/4 v13, 0x5

    if-lt v9, v13, :cond_c8

    .line 149
    aget-object v9, v10, v12

    if-eqz v9, :cond_c1

    .line 150
    aget-object v9, v10, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_c2

    :cond_c1
    const/4 v9, 0x0

    .line 151
    .local v9, "edgeZoneString":Ljava/lang/String;
    :goto_c2
    invoke-direct {v1, v2, v4, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 154
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_c8
    iget v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 155
    array-length v9, v10

    const/4 v12, 0x6

    if-lt v9, v12, :cond_e2

    .line 156
    aget-object v9, v10, v13

    if-eqz v9, :cond_db

    .line 157
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_dc

    :cond_db
    const/4 v9, 0x0

    .line 158
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_dc
    invoke-direct {v1, v2, v4, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 162
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_e2
    array-length v9, v10

    const/4 v13, 0x7

    if-lt v9, v13, :cond_f8

    .line 163
    aget-object v9, v10, v12

    if-eqz v9, :cond_f1

    .line 164
    aget-object v9, v10, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_f2

    :cond_f1
    const/4 v9, 0x0

    .line 165
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_f2
    invoke-direct {v1, v3, v5, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    .line 169
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_f8
    array-length v9, v10

    const/16 v12, 0x8

    if-lt v9, v12, :cond_10f

    .line 170
    aget-object v9, v10, v13

    if-eqz v9, :cond_108

    .line 171
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_109

    :cond_108
    const/4 v9, 0x0

    .line 172
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_109
    invoke-direct {v1, v3, v5, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    .line 176
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_10f
    array-length v9, v10

    const/16 v13, 0x9

    if-lt v9, v13, :cond_126

    .line 177
    aget-object v9, v10, v12

    if-eqz v9, :cond_11f

    .line 178
    aget-object v9, v10, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_120

    :cond_11f
    const/4 v9, 0x0

    .line 179
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_120
    invoke-direct {v1, v3, v5, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    .line 183
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_126
    array-length v9, v10

    const/16 v12, 0xa

    if-lt v9, v12, :cond_13e

    .line 184
    aget-object v9, v10, v13

    if-eqz v9, :cond_136

    .line 185
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto :goto_137

    :cond_136
    const/4 v15, 0x0

    :goto_137
    move-object v9, v15

    .line 186
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    invoke-direct {v1, v3, v5, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    .line 191
    .end local v0    # "portX1String":Ljava/lang/String;
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_13e
    :goto_13e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v0, :cond_14e

    .line 192
    iget v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    .line 193
    const-string v0, "100%"

    invoke-direct {v1, v3, v5, v0, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortY2:I
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_14e} :catch_14f

    .line 197
    :cond_14e
    goto :goto_153

    .line 195
    :catch_14f
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 198
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_153
    if-eqz v7, :cond_162

    .line 199
    const/16 v9, 0xa

    invoke-direct {v1, v9, v4, v14}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    .line 200
    invoke-direct {v1, v9, v5, v11}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v9

    .line 199
    invoke-direct {v1, v0, v9}, Lcom/android/server/policy/TspGripCommand;->setMinimumValue(II)V

    .line 202
    :cond_162
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_17f

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/TspGripCommand;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_17f
    const/4 v8, 0x1

    return v8

    .line 207
    .end local v10    # "tspDeadzoneArray":[Ljava/lang/String;
    :cond_181
    return v9
.end method

.method public parseForV3(IIIILjava/lang/String;)Z
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;

    .line 274
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parseForV3(IIIILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parseForV3(IIIILjava/lang/String;Z)Z
    .registers 24
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "applyMin"    # Z

    .line 279
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v8, "TspGripCommand"

    if-eqz v0, :cond_31

    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 281
    .local v0, "debugString":Ljava/lang/StringBuffer;
    const-string/jumbo v9, "parseForV3: command="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string v9, " applyMin="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    :cond_31
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1a5

    .line 286
    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "tspDeadzoneArray":[Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_3f
    aget-object v0, v10, v9

    if-eqz v0, :cond_4a

    .line 289
    aget-object v0, v10, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    .line 290
    .local v0, "portX1String":Ljava/lang/String;
    :goto_4b
    const/16 v9, 0x5a0

    invoke-direct {v1, v2, v4, v0, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v13

    iput v13, v1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 292
    array-length v13, v10
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_54} :catch_19f

    const-string v14, "100%"

    const/4 v15, 0x3

    const/16 v12, 0xa00

    if-lt v13, v15, :cond_81

    .line 293
    :try_start_5b
    aget-object v13, v10, v11

    if-eqz v13, :cond_66

    .line 294
    aget-object v13, v10, v11

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_67

    :cond_66
    const/4 v13, 0x0

    .line 295
    .local v13, "portX2String":Ljava/lang/String;
    :goto_67
    invoke-direct {v1, v2, v4, v13, v9}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 296
    const/4 v11, 0x2

    aget-object v16, v10, v11

    if-eqz v16, :cond_79

    .line 297
    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    goto :goto_7a

    :cond_79
    const/4 v11, 0x0

    .line 298
    .local v11, "portY1String":Ljava/lang/String;
    :goto_7a
    invoke-direct {v1, v3, v5, v11, v12}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 299
    .end local v11    # "portY1String":Ljava/lang/String;
    .end local v13    # "portX2String":Ljava/lang/String;
    goto :goto_87

    .line 300
    :cond_81
    invoke-direct {v1, v3, v5, v14, v12}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 303
    :goto_87
    array-length v9, v10

    const/4 v11, 0x5

    if-lt v9, v11, :cond_b7

    .line 304
    aget-object v9, v10, v15

    if-eqz v9, :cond_96

    .line 305
    aget-object v9, v10, v15

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_97

    :cond_96
    const/4 v9, 0x0

    .line 306
    .local v9, "portX3String":Ljava/lang/String;
    :goto_97
    const/16 v13, 0x5a0

    invoke-direct {v1, v2, v4, v9, v13}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    .line 307
    const/4 v13, 0x4

    aget-object v14, v10, v13

    if-eqz v14, :cond_ab

    .line 308
    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    goto :goto_ac

    :cond_ab
    const/4 v13, 0x0

    .line 309
    .local v13, "portY2String":Ljava/lang/String;
    :goto_ac
    invoke-direct {v1, v3, v5, v13, v12}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    .line 310
    .local v14, "portY2":I
    iget v15, v1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    if-lt v14, v15, :cond_b6

    .line 311
    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    .line 313
    .end local v9    # "portX3String":Ljava/lang/String;
    .end local v13    # "portY2String":Ljava/lang/String;
    .end local v14    # "portY2":I
    :cond_b6
    goto :goto_bd

    .line 314
    :cond_b7
    invoke-direct {v1, v3, v5, v14, v12}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    .line 317
    :goto_bd
    array-length v9, v10

    const/4 v13, 0x6

    if-lt v9, v13, :cond_d5

    .line 318
    aget-object v9, v10, v11

    if-eqz v9, :cond_cc

    .line 319
    aget-object v9, v10, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_cd

    :cond_cc
    const/4 v9, 0x0

    .line 320
    .local v9, "landX1String":Ljava/lang/String;
    :goto_cd
    const/16 v11, 0x5a0

    invoke-direct {v1, v2, v4, v9, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 323
    .end local v9    # "landX1String":Ljava/lang/String;
    :cond_d5
    array-length v9, v10

    const/4 v11, 0x7

    if-lt v9, v11, :cond_ed

    .line 324
    aget-object v9, v10, v13

    if-eqz v9, :cond_e4

    .line 325
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_e5

    :cond_e4
    const/4 v9, 0x0

    .line 326
    .local v9, "edgeZoneString":Ljava/lang/String;
    :goto_e5
    const/16 v13, 0x5a0

    invoke-direct {v1, v2, v4, v9, v13}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 328
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_ed
    iget v9, v1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v9, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 330
    array-length v9, v10

    const/16 v13, 0x8

    if-lt v9, v13, :cond_10a

    .line 331
    aget-object v9, v10, v11

    if-eqz v9, :cond_101

    .line 332
    aget-object v9, v10, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_102

    :cond_101
    const/4 v9, 0x0

    .line 333
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_102
    const/16 v11, 0x5a0

    invoke-direct {v1, v2, v4, v9, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 336
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_10a
    array-length v9, v10

    const/16 v11, 0x9

    if-lt v9, v11, :cond_124

    .line 337
    aget-object v9, v10, v13

    if-eqz v9, :cond_11a

    .line 338
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_11b

    :cond_11a
    const/4 v9, 0x0

    .line 339
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_11b
    nop

    .line 340
    const/16 v13, 0x5a0

    invoke-direct {v1, v3, v5, v9, v13}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    .line 343
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_124
    array-length v9, v10

    const/16 v13, 0xa

    if-lt v9, v13, :cond_13e

    .line 344
    aget-object v9, v10, v11

    if-eqz v9, :cond_134

    .line 345
    aget-object v9, v10, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_135

    :cond_134
    const/4 v9, 0x0

    .line 346
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_135
    nop

    .line 347
    const/16 v11, 0x5a0

    invoke-direct {v1, v3, v5, v9, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    .line 350
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_13e
    array-length v9, v10

    const/16 v11, 0xb

    if-lt v9, v11, :cond_158

    .line 351
    aget-object v9, v10, v13

    if-eqz v9, :cond_14e

    .line 352
    aget-object v9, v10, v13

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_14f

    :cond_14e
    const/4 v9, 0x0

    .line 353
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_14f
    nop

    .line 354
    const/16 v14, 0x5a0

    invoke-direct {v1, v3, v5, v9, v14}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v15

    iput v15, v1, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    .line 357
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_158
    array-length v9, v10

    const/16 v14, 0xc

    if-lt v9, v14, :cond_172

    .line 358
    aget-object v9, v10, v11

    if-eqz v9, :cond_168

    .line 359
    aget-object v9, v10, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_169

    :cond_168
    const/4 v9, 0x0

    .line 360
    .restart local v9    # "edgeZoneString":Ljava/lang/String;
    :goto_169
    nop

    .line 361
    const/16 v11, 0x5a0

    invoke-direct {v1, v3, v5, v9, v11}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v14

    iput v14, v1, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    .line 364
    .end local v9    # "edgeZoneString":Ljava/lang/String;
    :cond_172
    if-eqz v7, :cond_181

    .line 365
    const/16 v9, 0x5a0

    invoke-direct {v1, v13, v4, v9}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v9

    .line 366
    invoke-direct {v1, v13, v5, v12}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v11

    .line 365
    invoke-direct {v1, v9, v11}, Lcom/android/server/policy/TspGripCommand;->setMinimumValue(II)V

    .line 369
    :cond_181
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_19e

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parse:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/TspGripCommand;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_19e} :catch_19f

    .line 374
    .end local v0    # "portX1String":Ljava/lang/String;
    :cond_19e
    goto :goto_1a3

    .line 372
    :catch_19f
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 376
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1a3
    const/4 v8, 0x1

    return v8

    .line 378
    .end local v10    # "tspDeadzoneArray":[Ljava/lang/String;
    :cond_1a5
    return v9
.end method

.method reset()V
    .registers 3

    .line 436
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 437
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 438
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    .line 439
    const/16 v1, 0x300

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 440
    const/16 v1, 0xa00

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    .line 441
    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 442
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 443
    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    .line 446
    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    .line 447
    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    .line 448
    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    .line 449
    return-void
.end method

.method set(Lcom/android/server/policy/TspGripCommand;)V
    .registers 3
    .param p1, "command"    # Lcom/android/server/policy/TspGripCommand;

    .line 93
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 94
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 95
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 96
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 97
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 98
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 99
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    .line 100
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    .line 101
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    .line 102
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "portX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ", portX2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", portX3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, ", portY1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const-string v1, ", portY2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortY2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, ", landX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    const-string v1, ", portEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", landEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, ", mLandTopRejecttWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopRejecttWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v1, ", mLandBottomRejectWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomRejectWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, ", mLandTopGriptWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandTopGriptWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, ", mLandBottomGripWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandBottomGripWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
