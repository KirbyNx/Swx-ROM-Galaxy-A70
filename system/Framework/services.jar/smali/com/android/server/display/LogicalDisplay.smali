.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private final mDisplayPosition:Landroid/graphics/Point;

.field private mDisplayScalingDisabled:Z

.field mDualSwitchApplied:Z

.field private mHasContent:Z

.field private final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field private final mLayerStack:I

.field private mMaskingCutout:Z

.field private mNeedToUpdateBaseDisplayInfo:Z

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRefreshRateMode:I

.field private mRequestedColorMode:I

.field private mRequestedMinimalPostProcessing:Z

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 88
    new-instance v0, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 101
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    .line 139
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 140
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 141
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 142
    return-void
.end method

.method private static calculateDisplayRectWithRoundup(III)I
    .registers 7
    .param p0, "numerator1"    # I
    .param p1, "numerator2"    # I
    .param p2, "denominator"    # I

    .line 727
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 446
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 447
    .local v0, "maskCutout":Z
    :goto_9
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_16

    .line 449
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 451
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method


# virtual methods
.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "isBlanked"    # Z

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_a

    const/4 v3, -0x1

    goto :goto_c

    :cond_a
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_c
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 489
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_28

    .line 491
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v3, :cond_1d

    .line 492
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRefreshRateModeLocked(I)V

    .line 495
    :cond_1d
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 496
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_33

    .line 499
    :cond_28
    new-instance v3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 501
    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 504
    :goto_33
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 505
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 509
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    .line 514
    .local v5, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 519
    const/4 v6, 0x0

    .line 520
    .local v6, "orientation":I
    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-eqz v7, :cond_57

    .line 521
    iget v6, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 525
    :cond_57
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v7, :cond_60

    iget-boolean v7, v0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz v7, :cond_60

    .line 526
    const/4 v6, 0x1

    .line 531
    :cond_60
    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x4

    .line 538
    .end local v6    # "orientation":I
    .local v7, "orientation":I
    const/4 v6, 0x1

    if-eq v7, v6, :cond_6b

    const/4 v9, 0x3

    if-ne v7, v9, :cond_6c

    :cond_6b
    move v4, v6

    .line 540
    .local v4, "rotated":Z
    :cond_6c
    if-eqz v4, :cond_71

    iget v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_73

    :cond_71
    iget v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 541
    .local v9, "physWidth":I
    :goto_73
    if-eqz v4, :cond_78

    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_7a

    :cond_78
    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 543
    .local v10, "physHeight":I
    :goto_7a
    invoke-static {v5}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    .line 544
    .local v11, "maskingInsets":Landroid/graphics/Rect;
    invoke-static {v11, v7}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 546
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v9, v12

    .line 547
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 557
    iget v12, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v12, v13

    if-nez v12, :cond_b5

    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v12, :cond_99

    goto :goto_b5

    .line 560
    :cond_99
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v9

    iget v13, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v13, v10

    if-ge v12, v13, :cond_ab

    .line 563
    move v12, v9

    .line 564
    .local v12, "displayRectWidth":I
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v14, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 566
    invoke-static {v13, v9, v14}, Lcom/android/server/display/LogicalDisplay;->calculateDisplayRectWithRoundup(III)I

    move-result v13

    .local v13, "displayRectHeight":I
    goto :goto_b9

    .line 572
    .end local v12    # "displayRectWidth":I
    .end local v13    # "displayRectHeight":I
    :cond_ab
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 574
    invoke-static {v12, v10, v13}, Lcom/android/server/display/LogicalDisplay;->calculateDisplayRectWithRoundup(III)I

    move-result v12

    .line 578
    .restart local v12    # "displayRectWidth":I
    move v13, v10

    .restart local v13    # "displayRectHeight":I
    goto :goto_b9

    .line 558
    .end local v12    # "displayRectWidth":I
    .end local v13    # "displayRectHeight":I
    :cond_b5
    :goto_b5
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 559
    .restart local v12    # "displayRectWidth":I
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 580
    .restart local v13    # "displayRectHeight":I
    :goto_b9
    sub-int v14, v10, v13

    div-int/2addr v14, v8

    .line 581
    .local v14, "displayRectTop":I
    sub-int v15, v9, v12

    div-int/2addr v15, v8

    .line 582
    .local v15, "displayRectLeft":I
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v6, v15, v12

    move-object/from16 v16, v3

    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .local v16, "displayInfo":Landroid/view/DisplayInfo;
    add-int v3, v14, v13

    invoke-virtual {v8, v15, v14, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 586
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 588
    if-nez v7, :cond_df

    .line 589
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_106

    .line 590
    :cond_df
    const/4 v3, 0x1

    if-ne v7, v3, :cond_ed

    .line 591
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_106

    .line 592
    :cond_ed
    const/4 v3, 0x2

    if-ne v7, v3, :cond_fc

    .line 593
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v6, v6

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_106

    .line 595
    :cond_fc
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v6, v6

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 598
    :goto_106
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Point;->set(II)V

    .line 599
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v7, v3, v6}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 600
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_ca

    .line 754
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_cd

    :cond_ca
    const-string/jumbo v1, "null"

    :goto_cd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_13b

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRefreshRateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 762
    invoke-static {v1}, Landroid/provider/Settings$Secure;->refreshRateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    :cond_13b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_15a

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    if-eqz v0, :cond_15a

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDualSwitchApplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDualSwitchApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    :cond_15a
    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 2

    .line 652
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object v0
.end method

.method public getDisplayIdLocked()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_77

    .line 171
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 172
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_72

    .line 174
    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 175
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 176
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 177
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 178
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 179
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 180
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 181
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 182
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 183
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 184
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 185
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 186
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 189
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v1, :cond_72

    .line 190
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->realModeId:I

    iput v1, v0, Landroid/view/DisplayInfo;->realModeId:I

    .line 191
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    iput v1, v0, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 195
    :cond_72
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 197
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_77
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 2

    .line 688
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .line 695
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method getDisplayPosition()Landroid/graphics/Point;
    .registers 3

    .line 462
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "outInfo"    # Landroid/view/DisplayInfo;

    .line 204
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 205
    return-void
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .registers 2

    .line 681
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .registers 2

    .line 666
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .line 613
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 2

    .line 711
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return v0
.end method

.method isEqualsBaseRefreshRateInfo(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 635
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->realModeId:I

    iget v1, p1, Landroid/view/DisplayInfo;->realModeId:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->refreshRateMode:I

    iget v1, p1, Landroid/view/DisplayInfo;->refreshRateMode:I

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isValidLocked()Z
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2
    .param p1, "specs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 645
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 646
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 215
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    .line 217
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v2, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->isEqualsBaseRefreshRateInfo(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 218
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->refreshRateMode:I

    iput v2, p1, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 219
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->realModeId:I

    iput v2, p1, Landroid/view/DisplayInfo;->realModeId:I

    .line 223
    :cond_1a
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_2b

    .line 224
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 225
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 226
    return v0

    .line 227
    :cond_2b
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 228
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 229
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 230
    return v0

    .line 232
    :cond_3c
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_48

    .line 233
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 234
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 235
    return v0

    .line 237
    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 702
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 703
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 704
    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2
    .param p1, "disableScaling"    # Z

    .line 721
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 722
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2
    .param p1, "hasContent"    # Z

    .line 622
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 623
    return-void
.end method

.method public setMaskingCutout(Z)V
    .registers 3
    .param p1, "maskingCutout"    # Z

    .line 740
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mMaskingCutout:Z

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateBaseDisplayInfo:Z

    .line 742
    return-void
.end method

.method setPrimaryDisplayDevice(Lcom/android/server/display/DisplayDevice;Ljava/util/List;)V
    .registers 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDevice;",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 733
    .local p2, "displayDevices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 734
    invoke-virtual {p0, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 735
    return-void
.end method

.method public setRefreshRateModeLocked(I)Z
    .registers 3
    .param p1, "mode"    # I

    .line 627
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    if-eq v0, p1, :cond_8

    .line 628
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    .line 629
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 659
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 660
    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 676
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 677
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    .line 262
    return-void

    .line 266
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 267
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 268
    return-void

    .line 276
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 278
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_WIRELESS:Z

    const/4 v3, 0x2

    const/high16 v4, 0x20000000

    const/high16 v5, 0x4000000

    if-eqz v2, :cond_4f

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-ne v2, v3, :cond_4f

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "hasDeviceForWirelessDex":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayDevice;

    .line 281
    .local v7, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v7}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v8

    iget v8, v8, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_3e

    .line 283
    const/4 v2, 0x1

    .line 284
    goto :goto_3f

    .line 286
    .end local v7    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_3e
    goto :goto_27

    .line 288
    :cond_3f
    :goto_3f
    if-eqz v2, :cond_4a

    .line 289
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v7, -0x20000001

    and-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_4f

    .line 291
    :cond_4a
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v6, v4

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 302
    .end local v2    # "hasDeviceForWirelessDex":Z
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    goto/16 :goto_22f

    .line 305
    :cond_59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateBaseDisplayInfo:Z

    .line 308
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v7, v6, Landroid/view/DisplayInfo;->layerStack:I

    .line 309
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v2, v6, Landroid/view/DisplayInfo;->flags:I

    .line 310
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    if-eqz v6, :cond_74

    .line 311
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v6, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v8, v7

    iput v8, v6, Landroid/view/DisplayInfo;->flags:I

    .line 313
    :cond_74
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_81

    .line 314
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v6, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v8

    iput v3, v6, Landroid/view/DisplayInfo;->flags:I

    .line 316
    :cond_81
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_93

    .line 317
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 319
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v3, Landroid/view/DisplayInfo;->removeMode:I

    .line 321
    :cond_93
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_9d

    .line 322
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v3, Landroid/view/DisplayInfo;->removeMode:I

    .line 330
    :cond_9d
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_ab

    .line 331
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 333
    :cond_ab
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_b9

    .line 334
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 336
    :cond_b9
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_c7

    .line 337
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 339
    :cond_c7
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_d5

    .line 340
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 342
    :cond_d5
    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_e3

    .line 343
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v3, Landroid/view/DisplayInfo;->flags:I

    .line 345
    :cond_e3
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v3

    .line 346
    .local v3, "maskingInsets":Landroid/graphics/Rect;
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    .line 347
    .local v6, "maskedWidth":I
    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 349
    .local v8, "maskedHeight":I
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v10, v9, Landroid/view/DisplayInfo;->type:I

    .line 350
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v10, v9, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 351
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v10, v9, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 352
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v10, v9, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 353
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v10, v9, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 354
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v9, Landroid/view/DisplayInfo;->appWidth:I

    .line 355
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v9, Landroid/view/DisplayInfo;->appHeight:I

    .line 356
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 357
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 358
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v2, v9, Landroid/view/DisplayInfo;->rotation:I

    .line 359
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v10, v9, Landroid/view/DisplayInfo;->modeId:I

    .line 360
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v10, v9, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 361
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/view/Display$Mode;

    iput-object v10, v9, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 364
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v9, :cond_154

    .line 365
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRateMode:I

    iput v10, v9, Landroid/view/DisplayInfo;->refreshRateMode:I

    .line 366
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->realModeId:I

    iput v10, v9, Landroid/view/DisplayInfo;->realModeId:I

    .line 369
    :cond_154
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v10, v9, Landroid/view/DisplayInfo;->colorMode:I

    .line 370
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v9, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 373
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v10, v9, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 374
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v10, :cond_17a

    iget-boolean v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v10, :cond_178

    goto :goto_17a

    :cond_178
    move v10, v2

    goto :goto_17b

    :cond_17a
    :goto_17a
    move v10, v7

    :goto_17b
    iput-boolean v10, v9, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 376
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v10, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 377
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v10, v9, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 378
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v10, v9, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 379
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v10, v9, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 380
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v10, v9, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 381
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v10, v9, Landroid/view/DisplayInfo;->state:I

    .line 382
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v9, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 383
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v9, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 384
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v9, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 385
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v9, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 386
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v10, v9, Landroid/view/DisplayInfo;->ownerUid:I

    .line 387
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v10, v9, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 388
    iget v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_1c4

    move v2, v7

    .line 390
    .local v2, "maskCutout":Z
    :cond_1c4
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_1ca

    move-object v10, v1

    goto :goto_1cc

    :cond_1ca
    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_1cc
    iput-object v10, v9, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 391
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v10, v9, Landroid/view/DisplayInfo;->displayId:I

    .line 393
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 394
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v9, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 397
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_REMOTE_APP_DISPLAY_MANAGEMENT:Z

    if-eqz v1, :cond_1ee

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v9, 0x200000

    and-int/2addr v1, v9

    if-eqz v1, :cond_1ee

    .line 399
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v1, Landroid/view/DisplayInfo;->flags:I

    .line 412
    :cond_1ee
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v9, 0x10000000

    and-int/2addr v1, v9

    if-eqz v1, :cond_209

    .line 413
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v9, v10

    iput v9, v1, Landroid/view/DisplayInfo;->flags:I

    .line 414
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-eq v1, v7, :cond_205

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_209

    .line 415
    :cond_205
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 418
    :cond_209
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_215

    .line 419
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v7

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 421
    :cond_215
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v4, 0x8000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_223

    .line 422
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v7

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 424
    :cond_223
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_22f

    .line 425
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v4, v5

    iput v4, v1, Landroid/view/DisplayInfo;->flags:I

    .line 429
    .end local v2    # "maskCutout":Z
    .end local v3    # "maskingInsets":Landroid/graphics/Rect;
    .end local v6    # "maskedWidth":I
    .end local v8    # "maskedHeight":I
    :cond_22f
    :goto_22f
    return-void
.end method
