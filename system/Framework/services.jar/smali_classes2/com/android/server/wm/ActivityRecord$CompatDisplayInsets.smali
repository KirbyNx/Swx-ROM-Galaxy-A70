.class Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field private final mHeight:I

.field final mIsFloating:Z

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field private final mOverrideConfig:Landroid/content/res/Configuration;

.field final mStableInsets:[Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowContainer;)V
    .registers 14
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "container"    # Lcom/android/server/wm/WindowContainer;

    .line 9146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9137
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 9143
    new-array v1, v0, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 9245
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 9152
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    .line 9153
    if-eqz v1, :cond_47

    .line 9154
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 9155
    .local v1, "containerBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 9156
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 9159
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 9160
    .local v2, "emptyRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "rotation":I
    :goto_39
    if-ge v3, v0, :cond_46

    .line 9161
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v2, v4, v3

    .line 9162
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v2, v4, v3

    .line 9160
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 9164
    .end local v3    # "rotation":I
    :cond_46
    return-void

    .line 9168
    .end local v1    # "containerBounds":Landroid/graphics/Rect;
    .end local v2    # "emptyRect":Landroid/graphics/Rect;
    :cond_47
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 9169
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 9170
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 9171
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v2, 0x0

    move v8, v2

    .local v8, "rotation":I
    :goto_55
    if-ge v8, v0, :cond_a9

    .line 9172
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 9173
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v8

    .line 9174
    const/4 v2, 0x1

    if-eq v8, v2, :cond_71

    const/4 v3, 0x3

    if-ne v8, v3, :cond_70

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :cond_71
    :goto_71
    move v9, v2

    .line 9175
    .local v9, "rotated":Z
    if-eqz v9, :cond_77

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_79

    :cond_77
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    :goto_79
    move v4, v2

    .line 9176
    .local v4, "dw":I
    if-eqz v9, :cond_7f

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_81

    :cond_7f
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    :goto_81
    move v5, v2

    .line 9177
    .local v5, "dh":I
    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 9178
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v10

    .line 9179
    .local v10, "cutout":Landroid/view/DisplayCutout;
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v7, v2, v8

    move-object v2, v1

    move v3, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 9180
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9181
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 9171
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v9    # "rotated":Z
    .end local v10    # "cutout":Landroid/view/DisplayCutout;
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    .line 9183
    .end local v8    # "rotation":I
    :cond_a9
    return-void
.end method

.method private setOverrideConfig(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "sourceConfig"    # Landroid/content/res/Configuration;

    .line 9248
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v1, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 9249
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 9250
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 9251
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 9252
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 9266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9267
    const-string v0, "CompatDisplayInsets:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9270
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_3d

    .line 9271
    const-string v0, " mIsFloating=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9273
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9275
    return-void
.end method

.method getBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 9186
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 9187
    .local v0, "rotated":Z
    :cond_9
    :goto_9
    if-eqz v0, :cond_e

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_10

    :cond_e
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 9188
    .local v2, "dw":I
    :goto_10
    if-eqz v0, :cond_15

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_17

    :cond_15
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 9189
    .local v3, "dh":I
    :goto_17
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9190
    return-void
.end method

.method getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 12
    .param p1, "outAppBounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "orientation"    # I
    .param p5, "orientationRequested"    # Z
    .param p6, "canChangeOrientation"    # Z

    .line 9203
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_b

    .line 9204
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 9205
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9206
    return-void

    .line 9209
    :cond_b
    if-eqz p6, :cond_1a

    .line 9210
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 9211
    if-eqz p5, :cond_16

    .line 9212
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    goto :goto_74

    .line 9214
    :cond_16
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_74

    .line 9217
    :cond_1a
    const/4 v0, 0x0

    if-eqz p5, :cond_6a

    .line 9218
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 9219
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_2d

    move v1, v3

    goto :goto_2e

    :cond_2d
    move v1, v0

    :goto_2e
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v4, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    if-le v2, v4, :cond_35

    goto :goto_36

    :cond_35
    move v3, v0

    :goto_36
    if-eq v1, v3, :cond_71

    .line 9222
    const/4 v1, 0x2

    if-ne p4, v1, :cond_4c

    .line 9223
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 9224
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_5c

    .line 9226
    :cond_4c
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 9227
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    int-to-float v2, v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 9229
    :goto_5c
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 9230
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    # invokes: Lcom/android/server/wm/ActivityRecord;->getHorizontalCenterOffset(II)I
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityRecord;->access$400(II)I

    move-result v1

    .line 9229
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_71

    .line 9233
    :cond_6a
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9235
    :cond_71
    :goto_71
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9238
    :goto_74
    const/4 v0, -0x1

    if-eq p3, v0, :cond_7e

    .line 9240
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v0, v0, p3

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/Task;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 9242
    :cond_7e
    return-void
.end method

.method getFrameByOrientation(Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 9193
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9194
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9195
    .local v1, "shortSide":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v2

    .line 9196
    .local v3, "isLandscape":Z
    :goto_17
    if-eqz v3, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 9197
    :goto_1c
    if-eqz v3, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v0

    .line 9196
    :goto_21
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9198
    return-void
.end method

.method updateSizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 9256
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    if-eq v0, v1, :cond_1b

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    if-eq v0, v1, :cond_1b

    .line 9260
    # getter for: Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->access$500(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsCompatController;->clearSizeCompatMode(Lcom/android/server/wm/Task;Z)V

    .line 9261
    # invokes: Lcom/android/server/wm/ActivityRecord;->updateSizeCompatMode()V
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->access$600(Lcom/android/server/wm/ActivityRecord;)V

    .line 9263
    :cond_1b
    return-void
.end method
