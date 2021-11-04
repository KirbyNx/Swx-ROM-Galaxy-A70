.class public Lcom/android/server/wm/BoundsCompatController;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatController$Alignment;
    }
.end annotation


# static fields
.field private static final USE_MIN_ASPECT_RATIO:Ljava/lang/String; = "-useMinAspectRatioMode"

.field static sAlignment:I

.field private static sUseMinAspectRatio:Z


# instance fields
.field private mAspectRatioPolicy:I

.field private mBounds:Landroid/graphics/Rect;

.field private mBoundsCompatEnabled:Z

.field private mDispatchNeeded:Z

.field private mDispatchedBounds:Landroid/graphics/Rect;

.field private mDispatchedState:I

.field private mFixedAspectRatio:F

.field private mFixedAspectRatioAvailable:Z

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private final mOwner:Lcom/android/server/wm/ActivityRecord;

.field private mState:I

.field private mWasDisplayCompatInMainDisplay:Z

.field private mWasFixedAspectRatioModeInMainDisplay:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "owner"    # Lcom/android/server/wm/ActivityRecord;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mFixedAspectRatio:F

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 94
    return-void
.end method

.method private adjustBoundsIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/graphics/Rect;F)V
    .registers 13
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "sizeCompatBounds"    # Landroid/graphics/Rect;
    .param p4, "sizeCompatScale"    # F

    .line 191
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 192
    .local v0, "parentBounds":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 193
    .local v1, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 194
    .local v2, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 195
    .local v3, "resolvedAppBounds":Landroid/graphics/Rect;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v5

    .line 269
    .local v4, "isLandscape":Z
    :goto_21
    iget v6, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v6}, Lcom/samsung/android/core/BoundsCompat;->isCustomAspectRatioModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 270
    nop

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 270
    invoke-static {v6, v7}, Lcom/android/server/wm/BoundsCompatController;->getVerticalCenterOffset(II)I

    move-result v6

    .line 272
    .local v6, "offsetY":I
    if-nez v4, :cond_3b

    .line 273
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 276
    :cond_3b
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 277
    if-nez v4, :cond_48

    iget v5, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v5}, Lcom/samsung/android/core/BoundsCompat;->isMinAspectRatioApplied(I)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 279
    :cond_48
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 280
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 283
    .end local v6    # "offsetY":I
    :cond_50
    return-void
.end method

.method private applyPolicyIfNeeded(Landroid/content/pm/ActivityInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mCustomAspectRatioPackages:Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 135
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mAspectRatioPolicy:I

    .line 138
    return-void
.end method

.method static clearSizeCompatMode(Lcom/android/server/wm/Task;Z)V
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "isClearConfig"    # Z

    .line 526
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/wm/BoundsCompatController;->clearSizeCompatMode(Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityRecord;)V

    .line 527
    return-void
.end method

.method static clearSizeCompatMode(Lcom/android/server/wm/Task;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "isClearConfig"    # Z
    .param p2, "excluded"    # Lcom/android/server/wm/ActivityRecord;

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 533
    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/-$$Lambda$BoundsCompatController$pUmU4laDD1ftdDQvL2jOxFtKsyY;-><init>(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 548
    return-void
.end method

.method static dumpStaticValues(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 413
    sget v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/BoundsCompatController;->sUseMinAspectRatio:Z

    if-eqz v0, :cond_64

    .line 414
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BoundsCompatController Info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "innerPrefix":Ljava/lang/String;
    sget v1, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    if-eqz v1, :cond_49

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    # invokes: Lcom/android/server/wm/BoundsCompatController$Alignment;->alignmentToString(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatController$Alignment;->access$400(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    :cond_49
    sget-boolean v1, Lcom/android/server/wm/BoundsCompatController;->sUseMinAspectRatio:Z

    if-eqz v1, :cond_61

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UseMinAspectRatio=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    :cond_61
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 424
    .end local v0    # "innerPrefix":Ljava/lang/String;
    :cond_64
    return-void
.end method

.method static executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 428
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 438
    nop

    .line 439
    const-string v0, "-setBoundsCompatAlignment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 440
    array-length v0, p1

    const-string v2, "Error: "

    const/4 v3, 0x1

    if-le v0, v3, :cond_2c

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " option [alignment]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5b

    .line 444
    :cond_2c
    :try_start_2c
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_38} :catch_39

    .line 447
    goto :goto_5b

    .line 445
    :catch_39
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NumberFormatException"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_5b
    const-string v0, ""

    invoke-static {p2, v0}, Lcom/android/server/wm/BoundsCompatController;->dumpStaticValues(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 450
    return v3

    .line 453
    :cond_61
    return v1
.end method

.method private static getHorizontalOffsetTo(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p0, "modeShift"    # I
    .param p1, "parentAppBounds"    # Landroid/graphics/Rect;
    .param p2, "resolvedAppBounds"    # Landroid/graphics/Rect;

    .line 350
    sget v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    if-eqz v0, :cond_1c

    .line 351
    # invokes: Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalLeft(II)Z
    invoke-static {v0, p0}, Lcom/android/server/wm/BoundsCompatController$Alignment;->access$200(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 352
    const/4 v0, 0x0

    return v0

    .line 353
    :cond_c
    sget v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    # invokes: Lcom/android/server/wm/BoundsCompatController$Alignment;->isHorizontalRight(II)Z
    invoke-static {v0, p0}, Lcom/android/server/wm/BoundsCompatController$Alignment;->access$300(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 354
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 357
    :cond_1c
    iget v0, p2, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private static getVerticalCenterOffset(II)I
    .registers 4
    .param p0, "viewportH"    # I
    .param p1, "contentH"    # I

    .line 345
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getVerticalOffset(ILandroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/server/wm/DisplayContent;)I
    .registers 7
    .param p0, "modeShift"    # I
    .param p1, "parentAppBounds"    # Landroid/graphics/Rect;
    .param p2, "resolvedAppBounds"    # Landroid/graphics/Rect;
    .param p3, "sizeCompatScale"    # F
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 332
    sget v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    if-eqz v0, :cond_29

    .line 333
    # invokes: Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalTop(II)Z
    invoke-static {v0, p0}, Lcom/android/server/wm/BoundsCompatController$Alignment;->access$000(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 334
    if-eqz p4, :cond_17

    invoke-virtual {p4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 335
    :cond_19
    sget v0, Lcom/android/server/wm/BoundsCompatController;->sAlignment:I

    # invokes: Lcom/android/server/wm/BoundsCompatController$Alignment;->isVerticalBottom(II)Z
    invoke-static {v0, p0}, Lcom/android/server/wm/BoundsCompatController$Alignment;->access$100(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 336
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 339
    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 340
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 339
    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsCompatController;->getVerticalCenterOffset(II)I

    move-result v0

    return v0
.end method

.method private static isLandscape(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 326
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static synthetic lambda$clearSizeCompatMode$0(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p0, "excluded"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "isClearConfig"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 534
    if-ne p2, p0, :cond_3

    return-void

    .line 535
    :cond_3
    if-eqz p1, :cond_17

    .line 536
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode()V

    .line 537
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 539
    :try_start_e
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatController:Lcom/android/server/wm/BoundsCompatController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsCompatController;->interceptScheduleTransactionIfNeeded(Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_16

    .line 540
    :catch_15
    move-exception v0

    .line 542
    :goto_16
    goto :goto_1a

    .line 545
    :cond_17
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->clearCompatDisplayInsets()V

    .line 547
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setAspectRatioInner(FF)V
    .registers 3
    .param p1, "maxAspectRatio"    # F
    .param p2, "minAspectRatio"    # F

    .line 300
    iput p1, p0, Lcom/android/server/wm/BoundsCompatController;->mMaxAspectRatio:F

    .line 301
    iput p2, p0, Lcom/android/server/wm/BoundsCompatController;->mMinAspectRatio:F

    .line 302
    return-void
.end method

.method static final shouldUseMinAspectRatio(Landroid/content/pm/ActivityInfo;)Z
    .registers 3
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;

    .line 593
    sget-boolean v0, Lcom/android/server/wm/BoundsCompatController;->sUseMinAspectRatio:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method addCallbackIfNeeded(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 4
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 580
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    if-eqz v0, :cond_12

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    .line 582
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->obtain(ILandroid/graphics/Rect;)Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 585
    :cond_12
    return-void
.end method

.method adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatController;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eqz v0, :cond_10

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-nez v0, :cond_17

    .line 467
    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 468
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 470
    :cond_17
    return-void
.end method

.method clearAppBoundsIfNeeded(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;

    .line 141
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 142
    .local v0, "resolvedAppBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_13

    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v1}, Lcom/samsung/android/core/BoundsCompat;->isBoundsCompatEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 145
    :cond_13
    return-void
.end method

.method configureNavBarOpacityIfNeeded(I)I
    .registers 3
    .param p1, "vis"    # I

    .line 318
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v0}, Lcom/samsung/android/core/BoundsCompat;->isMaxAspectRatioApplied(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 319
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 320
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0

    .line 322
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string v0, "BoundsCompatInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mState=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCompatBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    if-eqz v0, :cond_41

    .line 366
    const-string v0, " mDispatchNeeded=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    :cond_41
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 369
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDispatchedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDispatchedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    :cond_81
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mMaxAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9e

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaxAspectRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BoundsCompatController;->mMaxAspectRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    :cond_9e
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mMinAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ba

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    :cond_ba
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 384
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mAspectRatioPolicy:I

    if-eqz v0, :cond_e5

    .line 386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    const-string v0, "CustomAspectRatioInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    const-string v0, " mAspectRatioPolicy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d9

    .line 390
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mAspectRatioPolicy:I

    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->aspectRatioPolicyToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_df

    .line 391
    :cond_d9
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mAspectRatioPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 389
    :goto_df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 394
    :cond_e5
    return-void
.end method

.method dumpBounds(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/app/WindowConfiguration;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "winConfig"    # Landroid/app/WindowConfiguration;

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    const-string v0, " Bounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 401
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 404
    .local v1, "appBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_b3

    .line 405
    const-string v6, " AppBounds="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    :cond_b3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 410
    return-void
.end method

.method getMaxAspectRatio()F
    .registers 2

    .line 305
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mMaxAspectRatio:F

    return v0
.end method

.method getMinAspectRatio()F
    .registers 2

    .line 309
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mMinAspectRatio:F

    return v0
.end method

.method interceptScheduleTransactionIfNeeded(Landroid/app/servertransaction/ClientTransactionItem;)Z
    .registers 5
    .param p1, "originalTransactionItem"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 565
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 567
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 568
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    .line 569
    invoke-static {v1, v2}, Landroid/app/servertransaction/BoundsCompatInfoChangeItem;->obtain(ILandroid/graphics/Rect;)Landroid/app/servertransaction/BoundsCompatInfoChangeItem;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 570
    if-eqz p1, :cond_27

    .line 571
    invoke-virtual {v0, p1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 573
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 574
    const/4 v1, 0x1

    return v1

    .line 576
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_34
    return v1
.end method

.method isBoundsCompatEnabled()Z
    .registers 2

    .line 286
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBoundsCompatEnabled:Z

    return v0
.end method

.method isDisplayCompatAvailable(Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 504
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 505
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 506
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 507
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mForcedDisplaySizeRequested:Z

    if-eqz v0, :cond_2a

    .line 508
    return v1

    .line 509
    :cond_2a
    iget v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->isForcedResizeableDisplayCompatPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 510
    return v1

    .line 511
    :cond_33
    iget v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->isForcedUnresizeableDisplayCompatPolicy(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3d

    .line 512
    return v2

    .line 514
    :cond_3d
    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_49

    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, v2, :cond_47

    goto :goto_49

    :cond_47
    move v0, v1

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v2

    .line 516
    .local v0, "isResizeable":Z
    :goto_4a
    if-nez v0, :cond_4d

    move v1, v2

    :cond_4d
    return v1

    .line 518
    .end local v0    # "isResizeable":Z
    :cond_4e
    return v1

    .line 519
    :cond_4f
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 520
    return v1

    .line 522
    :cond_5a
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    return v0
.end method

.method isDisplayCompatModeEnabled()Z
    .registers 2

    .line 475
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v0}, Lcom/samsung/android/core/BoundsCompat;->isDisplayCompatModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method isFixedAspectRatioAvailable()Z
    .registers 2

    .line 553
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mFixedAspectRatioAvailable:Z

    return v0
.end method

.method isFixedAspectRatioEnabled()Z
    .registers 2

    .line 557
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v0}, Lcom/samsung/android/core/BoundsCompat;->isFixedAspectRatioModeEnabled(I)Z

    move-result v0

    return v0
.end method

.method isFullScreen()Z
    .registers 4

    .line 459
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mAspectRatioPolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method makeDisplayCompatModeEnabled()V
    .registers 2

    .line 479
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    .line 480
    return-void
.end method

.method prepareBoundsCompat()V
    .registers 2

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/server/wm/BoundsCompatController;->applyPolicyIfNeeded(Landroid/content/pm/ActivityInfo;)V

    .line 101
    :cond_12
    return-void
.end method

.method resolveBoundsCompat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/graphics/Rect;F)V
    .registers 8
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "sizeCompatBounds"    # Landroid/graphics/Rect;
    .param p4, "sizeCompatScale"    # F

    .line 150
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    invoke-static {v0}, Lcom/samsung/android/core/BoundsCompat;->isBoundsCompatEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBoundsCompatEnabled:Z

    .line 151
    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BoundsCompatController;->adjustBoundsIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/graphics/Rect;F)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_19

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    .line 158
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_2f

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    .line 164
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    goto :goto_57

    .line 168
    :cond_43
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    invoke-static {v0}, Lcom/samsung/android/core/BoundsCompat;->isBoundsCompatEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 172
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    .line 176
    :cond_57
    :goto_57
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    iget v2, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    if-eq v0, v2, :cond_61

    .line 177
    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchedState:I

    .line 178
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatController;->mDispatchNeeded:Z

    .line 186
    :cond_61
    return-void
.end method

.method setAspectRatio(FF)V
    .registers 5
    .param p1, "maxAspectRatio"    # F
    .param p2, "minAspectRatio"    # F

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatController;->setAspectRatioInner(FF)V

    .line 292
    iget v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x2

    :goto_d
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/BoundsCompatController;->mState:I

    .line 297
    return-void
.end method

.method shouldRestartInSubDisplay(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 313
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mWasFixedAspectRatioModeInMainDisplay:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatController;->mWasDisplayCompatInMainDisplay:Z

    if-nez v0, :cond_f

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BoundsCompatController;->isDisplayCompatAvailable(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 313
    :goto_12
    return v0
.end method

.method updateDisplayCompatModeAvailableIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 483
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1c

    .line 484
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageSettingsManager:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 485
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->getPolicy(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, "policy":I
    iget v1, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    if-eq v1, v0, :cond_1c

    .line 487
    iput v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatPolicy:I

    .line 491
    .end local v0    # "policy":I
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BoundsCompatController;->isDisplayCompatAvailable(Lcom/android/server/wm/Task;)Z

    move-result v0

    .line 492
    .local v0, "isAvailable":Z
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    if-eq v1, v0, :cond_2c

    .line 493
    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mDisplayCompatAvailable:Z

    .line 494
    if-nez v0, :cond_2c

    .line 495
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/BoundsCompatController;->clearSizeCompatMode(Lcom/android/server/wm/Task;Z)V

    .line 498
    :cond_2c
    return-void
.end method
