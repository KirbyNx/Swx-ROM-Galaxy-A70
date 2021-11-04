.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MagnifierWindowPolicy"
.end annotation


# static fields
.field private static final BORDER_SIZE_DP:F = 4.0f

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private WINDOW_SIZE_TABLE_HEIGHT:[I

.field private WINDOW_SIZE_TABLE_WIDTH:[I

.field private mBorderSize:I

.field private mButtonBottomMargin:I

.field private mButtonHeight:I

.field private mButtonIconSize:I

.field private mButtonTopMargin:I

.field private mButtonWidth:I

.field private mCloseBoundOnScreen:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mControlButtonType:I

.field private mDefaultDisplayHeight:I

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mFrameWidthHeight:I

.field private mHasSoftwareNaviBar:Z

.field private mHorizontalFocusLock:I

.field private mHorizontalLockButtonRect:Landroid/graphics/Rect;

.field private mIsMovingMode:Z

.field private mLeftSideTouchOnFrame:Landroid/graphics/Rect;

.field private mLowerSideTouchOnFrame:Landroid/graphics/Rect;

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMovingStarted_X:F

.field private mMovingStarted_Y:F

.field private mOrientation:I

.field private mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

.field private mRightSideTouchOnFrame:Landroid/graphics/Rect;

.field private mScale:F

.field private mUpperLeftSideWithoutController:Landroid/graphics/Rect;

.field private mUpperRightSideWithoutController:Landroid/graphics/Rect;

.field private mUpperSideTouchOnFrame:Landroid/graphics/Rect;

.field private mWindowBoundOnScreen:Landroid/graphics/Rect;

.field private mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

.field private mWindowSize:I

.field private mWindowSizeButtonRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    .line 1019
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    .line 1020
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    .line 1021
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonTopMargin:I

    .line 1022
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonIconSize:I

    .line 1024
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_10c

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    .line 1025
    new-array v1, v1, [I

    fill-array-data v1, :array_116

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    .line 1026
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    .line 1027
    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    .line 1028
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    .line 1029
    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    .line 1030
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    .line 1031
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    .line 1032
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    .line 1034
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    .line 1035
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    .line 1037
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    .line 1038
    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    .line 1039
    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    .line 1041
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 1044
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    .line 1046
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    .line 1047
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    .line 1048
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    .line 1049
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 1050
    iput v1, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1051
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1052
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    .line 1053
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    .line 1054
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    .line 1055
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    .line 1056
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    .line 1057
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    .line 1058
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    .line 1060
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    .line 1061
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    .line 1064
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    .line 1065
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    .line 1067
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonTopMargin:I

    .line 1068
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonIconSize:I

    .line 1070
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 1072
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    .line 1075
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    .line 1078
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    .line 1079
    return-void

    :array_10c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_116
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 1546
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static isTablet()Z
    .registers 2

    .line 1536
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 1537
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 1540
    :cond_14
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    .line 1541
    if-eqz v0, :cond_27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method


# virtual methods
.method public getBorderSize()I
    .registers 2

    .line 1141
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    return v0
.end method

.method public getControlButtonType()I
    .registers 2

    .line 1337
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    return v0
.end method

.method public getHorizontalFocusLock()I
    .registers 2

    .line 1233
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    return v0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .registers 2

    .line 1145
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMaxWindowSizeHeight()I
    .registers 3

    .line 1177
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_b

    .line 1181
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    .line 1183
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWindowSizeWidth()I
    .registers 3

    .line 1167
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_b

    .line 1171
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    .line 1173
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getMovingStartedX()F
    .registers 2

    .line 1325
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    return v0
.end method

.method public getMovingStartedY()F
    .registers 2

    .line 1329
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return v0
.end method

.method public getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;
    .registers 2

    .line 1311
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1220
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    return v0
.end method

.method public getWindowBoundOnScreen()Landroid/graphics/Rect;
    .registers 2

    .line 1307
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSize()I
    .registers 2

    .line 1207
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    return v0
.end method

.method public getWindowSizeHeight()I
    .registers 3

    .line 1197
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    .line 1201
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    aget v0, v1, v0

    return v0

    .line 1203
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSizeWidth()I
    .registers 3

    .line 1187
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    .line 1191
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    aget v0, v1, v0

    return v0

    .line 1193
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Z)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .line 1083
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1085
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    .line 1086
    .local v1, "isChangedResolution":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    .local v2, "currentDisplaySizeValue":Ljava/lang/String;
    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1088
    const/4 v1, 0x1

    .line 1090
    :cond_1e
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init: isChangedResolution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", new orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    .line 1093
    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_59

    if-nez v1, :cond_59

    if-nez p2, :cond_59

    .line 1095
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "init: But orientation or screen size are not changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return v5

    .line 1098
    :cond_59
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    .line 1099
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2000()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1100
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDisplayMetrics : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :try_start_8d
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1800()Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2102(Landroid/view/DisplayInfo;)Landroid/view/DisplayInfo;
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_98} :catch_99

    .line 1106
    goto :goto_9d

    .line 1104
    :catch_99
    move-exception v3

    .line 1105
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1108
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_9d
    const/4 v3, 0x0

    .line 1109
    .local v3, "widthRates":F
    const/4 v4, 0x0

    .line 1110
    .local v4, "heightRates":F
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    .line 1111
    .local v5, "widthPixels":F
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    .line 1112
    .local v6, "heightPixels":F
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    .line 1113
    float-to-int v7, v6

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    .line 1115
    const/4 v7, 0x0

    .local v7, "size":I
    :goto_bd
    const/4 v8, 0x3

    const/4 v9, 0x1

    if-ge v7, v8, :cond_11d

    .line 1116
    if-nez v7, :cond_da

    .line 1117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    goto :goto_10c

    .line 1119
    :cond_da
    if-ne v7, v9, :cond_f3

    .line 1120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501ce

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    goto :goto_10c

    .line 1122
    :cond_f3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_10c

    .line 1123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 1124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10501c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 1126
    :cond_10c
    :goto_10c
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    mul-float v9, v5, v3

    float-to-int v9, v9

    aput v9, v8, v7

    .line 1127
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    mul-float v9, v6, v4

    float-to-int v9, v9

    aput v9, v8, v7

    .line 1115
    add-int/lit8 v7, v7, 0x1

    goto :goto_bd

    .line 1130
    .end local v7    # "size":I
    :cond_11d
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_13b

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetY:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12f

    goto :goto_13b

    .line 1133
    :cond_12f
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    goto :goto_144

    .line 1131
    :cond_13b
    :goto_13b
    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    div-float v7, v6, v7

    invoke-virtual {p0, v8, v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    .line 1136
    :goto_144
    return v9
.end method

.method public isChangedFollowDisplayHeight()Z
    .registers 3

    .line 1246
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1900()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_14

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isMovingMode()Z
    .registers 2

    .line 1321
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    return v0
.end method

.method public isOnCloseBtn(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1258
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnControllerSide(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1262
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    .line 1263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    .line 1264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_39

    :cond_37
    const/4 v0, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 1262
    :goto_3a
    return v0
.end method

.method public isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1254
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLeftSide(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1276
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLowerSide(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1272
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindow(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1292
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1300
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    .line 1301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    .line 1302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    .line 1303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v0, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 1300
    :goto_4c
    return v0
.end method

.method public isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1296
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnRightSide(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1280
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperLeftSideWithoutController(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1284
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperRightSideWithoutController(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1288
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperSide(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1268
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1251
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setControlButtonType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 1333
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mControlButtonType:I

    .line 1334
    return-void
.end method

.method public setHorizontalFocusLock(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 1238
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    if-eq p1, v0, :cond_8

    .line 1239
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalFocusLock:I

    .line 1240
    const/4 v0, 0x1

    return v0

    .line 1242
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setMovingMode(ZFF)V
    .registers 4
    .param p1, "mode"    # Z
    .param p2, "start_x"    # F
    .param p3, "start_y"    # F

    .line 1315
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    .line 1316
    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    .line 1317
    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    .line 1318
    return-void
.end method

.method public setScale(F)Z
    .registers 3
    .param p1, "value"    # F

    .line 1225
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_a

    .line 1226
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    .line 1227
    const/4 v0, 0x1

    return v0

    .line 1229
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public setWindowSize(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 1212
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    if-eq p1, v0, :cond_8

    .line 1213
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    .line 1214
    const/4 v0, 0x1

    return v0

    .line 1216
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public updateBoundOnScreen()V
    .registers 22

    .line 1341
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1342
    .local v1, "left":I
    const/4 v2, 0x0

    .line 1343
    .local v2, "top":I
    const/4 v3, 0x0

    .line 1344
    .local v3, "right":I
    const/4 v4, 0x0

    .line 1346
    .local v4, "bottom":I
    const/4 v5, 0x4

    .line 1347
    .local v5, "borderFrameSize":I
    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v6, v6, 0x5

    .line 1349
    .local v6, "touchArea_out_of_border":I
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1350
    .local v7, "display_width":I
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1353
    .local v8, "display_height":I
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2200()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 1354
    const/4 v9, 0x0

    .line 1355
    .local v9, "navigationBarHeight":I
    iget-boolean v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHasSoftwareNaviBar:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_37

    .line 1356
    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    if-ne v10, v11, :cond_37

    .line 1358
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2300()Z

    move-result v10

    if-eqz v10, :cond_32

    .line 1359
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2400()I

    move-result v10

    goto :goto_36

    :cond_32
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2500()I

    move-result v10

    :goto_36
    move v9, v10

    .line 1362
    :cond_37
    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    if-ne v10, v11, :cond_3c

    .line 1363
    sub-int/2addr v8, v9

    .line 1365
    :cond_3c
    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 1366
    .local v10, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 1368
    .local v11, "defaultDisplay":Landroid/view/Display;
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2600()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v12

    invoke-virtual {v11}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v12

    sub-int/2addr v8, v12

    .line 1372
    .end local v9    # "navigationBarHeight":I
    .end local v10    # "windowmanager":Landroid/view/WindowManager;
    .end local v11    # "defaultDisplay":Landroid/view/Display;
    :cond_58
    iput v8, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDefaultDisplayHeight:I

    .line 1375
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    .line 1376
    .local v9, "half_width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 1378
    .local v10, "half_height":I
    iget-object v11, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v11, v11, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v11, v11

    sub-int/2addr v11, v9

    .line 1379
    .local v11, "left_via_spec":I
    iget-object v12, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    add-int/2addr v12, v9

    .line 1380
    .local v12, "right_via_spec":I
    iget-object v13, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v13, v13, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v13, v13

    sub-int/2addr v13, v10

    .line 1381
    .local v13, "top_via_spec":I
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v14, v14, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v14, v14

    add-int/2addr v14, v10

    .line 1383
    .local v14, "bottom_via_spec":I
    if-gez v11, :cond_84

    .line 1384
    const/4 v1, 0x0

    .line 1385
    sub-int v3, v12, v11

    goto :goto_8e

    .line 1386
    :cond_84
    if-le v12, v7, :cond_8c

    .line 1387
    move v3, v7

    .line 1388
    sub-int v15, v12, v7

    sub-int v1, v11, v15

    goto :goto_8e

    .line 1390
    :cond_8c
    move v1, v11

    .line 1391
    move v3, v12

    .line 1394
    :goto_8e
    if-gez v13, :cond_94

    .line 1395
    const/4 v2, 0x0

    .line 1396
    sub-int v4, v14, v13

    goto :goto_9e

    .line 1397
    :cond_94
    if-le v14, v8, :cond_9c

    .line 1398
    move v4, v8

    .line 1399
    sub-int v15, v14, v8

    sub-int v2, v13, v15

    goto :goto_9e

    .line 1401
    :cond_9c
    move v2, v13

    .line 1402
    move v4, v14

    .line 1405
    :goto_9e
    add-int v15, v1, v3

    div-int/lit8 v15, v15, 0x2

    .line 1406
    .local v15, "horizental_center":I
    div-int/lit8 v16, v6, 0x2

    .line 1408
    .local v16, "touchArea_margin":I
    move/from16 v17, v9

    .end local v9    # "half_width":I
    .local v17, "half_width":I
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move/from16 v18, v10

    .end local v10    # "half_height":I
    .local v18, "half_height":I
    sub-int v10, v1, v6

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1409
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    sub-int v10, v2, v6

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 1410
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    add-int v10, v3, v6

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 1411
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    add-int v10, v4, v6

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 1413
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    add-int v10, v1, v5

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 1414
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    add-int v10, v2, v5

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 1415
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    sub-int v10, v3, v5

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 1416
    iget-object v9, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    sub-int v10, v4, v5

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 1419
    const/4 v9, 0x0

    .line 1420
    .local v9, "alpha":I
    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    if-ge v2, v10, :cond_df

    .line 1421
    sub-int v9, v10, v2

    .line 1423
    :cond_df
    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isRTL(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_15b

    .line 1424
    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move/from16 v19, v5

    .end local v5    # "borderFrameSize":I
    .local v19, "borderFrameSize":I
    iget v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v15

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 1425
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v10, v2, v10

    add-int/2addr v10, v9

    iput v10, v5, Landroid/graphics/Rect;->top:I

    .line 1426
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    move/from16 v20, v6

    .end local v6    # "touchArea_out_of_border":I
    .local v20, "touchArea_out_of_border":I
    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 1427
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1429
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v10, v6, 0x2

    sub-int v10, v15, v10

    sub-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1430
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1431
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1432
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1434
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1435
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1436
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1437
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1ce

    .line 1439
    .end local v19    # "borderFrameSize":I
    .end local v20    # "touchArea_out_of_border":I
    .restart local v5    # "borderFrameSize":I
    .restart local v6    # "touchArea_out_of_border":I
    :cond_15b
    move/from16 v19, v5

    move/from16 v20, v6

    .end local v5    # "borderFrameSize":I
    .end local v6    # "touchArea_out_of_border":I
    .restart local v19    # "borderFrameSize":I
    .restart local v20    # "touchArea_out_of_border":I
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v15

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1440
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1441
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1442
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1444
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v10, v6, 0x2

    sub-int v10, v15, v10

    sub-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1445
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1446
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1447
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1449
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v15, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1450
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonBottomMargin:I

    sub-int v6, v2, v6

    add-int/2addr v6, v9

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1451
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1452
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonHeight:I

    add-int/2addr v6, v10

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1455
    :goto_1ce
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 1456
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1457
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1458
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1460
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 1461
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v4, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1462
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1463
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v4, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1465
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v1, v16

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1466
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 1467
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v1, v16

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1468
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLeftSideTouchOnFrame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 1470
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    sub-int v6, v3, v16

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1471
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 1472
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    add-int v6, v3, v16

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 1473
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mRightSideTouchOnFrame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 1475
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 1476
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1477
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v10, v6, 0x2

    sub-int v10, v15, v10

    sub-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->right:I

    .line 1478
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperLeftSideWithoutController:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1480
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mButtonWidth:I

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v15

    add-int/2addr v10, v6

    iput v10, v5, Landroid/graphics/Rect;->left:I

    .line 1481
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    sub-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1482
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1483
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperRightSideWithoutController:Landroid/graphics/Rect;

    add-int v6, v2, v16

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 1487
    .end local v17    # "half_width":I
    .local v5, "half_width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v17, v1

    .end local v1    # "left":I
    .local v17, "left":I
    iget v1, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    mul-float/2addr v1, v10

    div-float/2addr v6, v1

    float-to-int v1, v6

    .line 1489
    .end local v18    # "half_height":I
    .local v1, "half_height":I
    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v6, v6, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v6, v6

    sub-int/2addr v6, v5

    .line 1490
    .end local v11    # "left_via_spec":I
    .local v6, "left_via_spec":I
    iget-object v10, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v10, v10, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v10, v10

    add-int/2addr v10, v5

    .line 1491
    .end local v12    # "right_via_spec":I
    .local v10, "right_via_spec":I
    iget-object v11, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v11, v11, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v11, v11

    sub-int/2addr v11, v1

    .line 1492
    .end local v13    # "top_via_spec":I
    .local v11, "top_via_spec":I
    iget-object v12, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    add-int/2addr v12, v1

    .line 1494
    .end local v14    # "bottom_via_spec":I
    .local v12, "bottom_via_spec":I
    if-gez v6, :cond_289

    .line 1495
    const/4 v13, 0x0

    .line 1496
    .end local v17    # "left":I
    .local v13, "left":I
    sub-int v3, v10, v6

    goto :goto_293

    .line 1497
    .end local v13    # "left":I
    .restart local v17    # "left":I
    :cond_289
    if-le v10, v7, :cond_291

    .line 1498
    move v3, v7

    .line 1499
    sub-int v13, v10, v7

    sub-int v13, v6, v13

    .end local v17    # "left":I
    .restart local v13    # "left":I
    goto :goto_293

    .line 1501
    .end local v13    # "left":I
    .restart local v17    # "left":I
    :cond_291
    move v13, v6

    .line 1502
    .end local v17    # "left":I
    .restart local v13    # "left":I
    move v3, v10

    .line 1505
    :goto_293
    if-gez v11, :cond_299

    .line 1506
    const/4 v2, 0x0

    .line 1507
    sub-int v4, v12, v11

    goto :goto_2a3

    .line 1508
    :cond_299
    if-le v12, v8, :cond_2a1

    .line 1509
    move v4, v8

    .line 1510
    sub-int v14, v12, v8

    sub-int v2, v11, v14

    goto :goto_2a3

    .line 1512
    :cond_2a1
    move v2, v11

    .line 1513
    move v4, v12

    .line 1516
    :goto_2a3
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->left:I

    .line 1517
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 1518
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v3, v14, Landroid/graphics/Rect;->right:I

    .line 1519
    iget-object v14, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v4, v14, Landroid/graphics/Rect;->bottom:I

    .line 1533
    return-void
.end method

.method public updateMagnificationSpec(FF)V
    .registers 6
    .param p1, "offset_x"    # F
    .param p2, "offset_y"    # F

    .line 1149
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    .line 1150
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_25

    .line 1151
    :cond_18
    cmpg-float v0, p1, v1

    if-gez v0, :cond_21

    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_25

    .line 1154
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 1156
    :goto_25
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3c

    .line 1157
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$2100()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_49

    .line 1158
    :cond_3c
    cmpg-float v0, p2, v1

    if-gez v0, :cond_45

    .line 1159
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_49

    .line 1161
    :cond_45
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1163
    :goto_49
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    .line 1164
    return-void
.end method
