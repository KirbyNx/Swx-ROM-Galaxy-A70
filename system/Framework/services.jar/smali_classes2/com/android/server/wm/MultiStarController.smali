.class public Lcom/android/server/wm/MultiStarController;
.super Ljava/lang/Object;
.source "MultiStarController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiStarController$H;,
        Lcom/android/server/wm/MultiStarController$OrientationControlPolicy;,
        Lcom/android/server/wm/MultiStarController$OrientationControlOperationPolicy;,
        Lcom/android/server/wm/MultiStarController$NotchControlPolicy;
    }
.end annotation


# static fields
.field public static final FAKE_MIN_ASPECT_RATIO:F = 1.86f

.field private static final PREFIX_TAG:Ljava/lang/String; = "MultiStar: "


# instance fields
.field private mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

.field private mH:Lcom/android/server/wm/MultiStarController$H;

.field private mIsMultiStarRotationFree:Z

.field private mIsPersistFreeformBoundsEnabled:Z

.field private mIsUserRotationFree:Z

.field private mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationControlOperationPolicy:I

.field private mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUseLetterbox:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiStarController;->mIsPersistFreeformBoundsEnabled:Z

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiStarController;->mIsUserRotationFree:Z

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiStarController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MultiStarController;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private canFitToShortSideEnabled(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Z)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "isPortrait"    # Z

    .line 487
    const/4 v0, 0x1

    if-eqz p3, :cond_c

    .line 488
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mCanFitToShortSidePortrait:Z

    if-eqz v1, :cond_15

    .line 492
    return v0

    .line 496
    :cond_c
    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mCanFitToShortSideLandscape:Z

    if-eqz v1, :cond_15

    .line 500
    return v0

    .line 504
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private ensureCallingPkg([Ljava/lang/String;)Z
    .registers 11
    .param p1, "allowList"    # [Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 98
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "callingPackages":[Ljava/lang/String;
    array-length v2, p1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_27

    aget-object v4, p1, v3

    .line 102
    .local v4, "allowPackage":Ljava/lang/String;
    array-length v5, v1

    move v6, v0

    :goto_15
    if-ge v6, v5, :cond_24

    aget-object v7, v1, v6

    .line 103
    .local v7, "callingPackage":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_28

    if-eqz v8, :cond_21

    .line 104
    const/4 v0, 0x1

    return v0

    .line 102
    .end local v7    # "callingPackage":Ljava/lang/String;
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 101
    .end local v4    # "allowPackage":Ljava/lang/String;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 110
    .end local v1    # "callingPackages":[Ljava/lang/String;
    :cond_27
    goto :goto_29

    .line 108
    :catch_28
    move-exception v1

    .line 111
    :goto_29
    return v0
.end method

.method private static getVerticalCenterOffset(II)I
    .registers 4
    .param p0, "viewportH"    # I
    .param p1, "contentH"    # I

    .line 508
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$shouldUseSensorRotation$1(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private updatePolicyIfNeededInner(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    .line 144
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 145
    .local v0, "packageName":Ljava/lang/String;
    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->getNotchControlPolicyLocked(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "notchControlPolicy":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    :goto_1d
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mIsNotchOverlap:Z

    .line 149
    const/4 v4, 0x2

    if-ne v1, v4, :cond_24

    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v2

    :goto_25
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mIsNotchNever:Z

    .line 152
    .end local v1    # "notchControlPolicy":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->getOrientationPolicyLocked(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "orientationPolicy":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_31

    move v4, v3

    goto :goto_32

    :cond_31
    move v4, v2

    :goto_32
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    .line 154
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3a

    move v4, v3

    goto :goto_3b

    :cond_3a
    move v4, v2

    :goto_3b
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    .line 155
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    if-nez v4, :cond_4e

    .line 156
    iget-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v4, :cond_4b

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_4b

    move v4, v3

    goto :goto_4c

    :cond_4b
    move v4, v2

    :goto_4c
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToReversePortrait:Z

    .line 159
    :cond_4e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v4, :cond_6a

    .line 160
    iget-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-eqz v4, :cond_5c

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_5c

    move v4, v3

    goto :goto_5d

    :cond_5c
    move v4, v2

    :goto_5d
    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mCanFitToShortSideLandscape:Z

    .line 162
    iget-boolean v4, p1, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v4, :cond_68

    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_68

    move v2, v3

    :cond_68
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mCanFitToShortSidePortrait:Z

    .line 165
    :cond_6a
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/MultiStarController;->applyOrientationControlPolicy(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;)V

    .line 168
    .end local v1    # "orientationPolicy":I
    :cond_71
    return-void
.end method


# virtual methods
.method adjustBoundsForFitToShortEdgeIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 11
    .param p1, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 466
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 467
    .local v0, "parentBounds":Landroid/graphics/Rect;
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 468
    .local v1, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 469
    .local v2, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 470
    .local v3, "resolvedAppBounds":Landroid/graphics/Rect;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v5

    .line 471
    .local v4, "isLandscape":Z
    :goto_21
    nop

    .line 472
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 471
    invoke-static {v6, v7}, Lcom/android/server/wm/MultiStarController;->getVerticalCenterOffset(II)I

    move-result v6

    .line 473
    .local v6, "offsetY":I
    if-eqz v4, :cond_33

    .line 474
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 477
    :cond_33
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 478
    if-nez v4, :cond_40

    .line 480
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 481
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 483
    :cond_40
    return-void
.end method

.method adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 245
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 246
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->isOverlapNotchLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mIsNotchNever:Z

    if-eqz v1, :cond_1d

    .line 247
    :cond_10
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mIsNotchNever:Z

    if-eqz v1, :cond_16

    .line 248
    const/4 v1, 0x2

    goto :goto_17

    :cond_16
    const/4 v1, 0x3

    .line 249
    .local v1, "cutoutMode":I
    :goto_17
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 250
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 252
    .end local v1    # "cutoutMode":I
    :cond_1d
    return-void
.end method

.method applyOrientationControlPolicy(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "forcedOrientation":I
    const/4 v1, 0x0

    .line 390
    .local v1, "forcedOrientationReverseNeeded":Z
    const/4 v2, 0x0

    .line 391
    .local v2, "fitToShortSideEnabled":Z
    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    iget-boolean v3, p1, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-nez v3, :cond_14

    iget-boolean v3, p1, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v3, :cond_3e

    .line 393
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/MultiStarController;->canOrientationControlOperation()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 394
    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 395
    .local v3, "containingBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    .line 396
    .local v5, "isPortrait":Z
    :goto_2d
    if-eqz v5, :cond_30

    goto :goto_31

    :cond_30
    const/4 v4, 0x2

    :goto_31
    move v0, v4

    .line 397
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v4, :cond_3e

    .line 398
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/wm/MultiStarController;->canFitToShortSideEnabled(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Z)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 399
    const/4 v1, 0x1

    .line 400
    const/4 v2, 0x1

    .line 403
    .end local v3    # "containingBounds":Landroid/graphics/Rect;
    .end local v5    # "isPortrait":Z
    :cond_3e
    iput v0, p1, Lcom/android/server/wm/Task;->mForcedOrientation:I

    .line 404
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v3, :cond_48

    .line 405
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mForcedOrientationReverseNeeded:Z

    .line 406
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mFitToShortSideEnabled:Z

    .line 408
    :cond_48
    return-void
.end method

.method canOrientationControlOperation()Z
    .registers 2

    .line 338
    iget-boolean v0, p0, Lcom/android/server/wm/MultiStarController;->mIsUserRotationFree:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/MultiStarController;->mIsMultiStarRotationFree:Z

    if-eqz v0, :cond_16

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_16

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_16

    .line 343
    :cond_13
    nop

    .line 356
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method checkMultiStarPackageAndPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;

    .line 119
    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "allowList":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiStarController;->checkPackageAndPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method checkPackageAndPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "allowList"    # [Ljava/lang/String;

    .line 128
    invoke-direct {p0, p2}, Lcom/android/server/wm/MultiStarController;->ensureCallingPkg([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 129
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 552
    const-string v0, "[MultiStarController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsPersistFreeformBoundsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/MultiStarController;->mIsPersistFreeformBoundsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUseLetterbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/MultiStarController;->mUseLetterbox:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5b

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mNotchControlPolicyMap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_7d

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mOrientationControlPolicyMap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    :cond_7d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 566
    return-void
.end method

.method getFoldStarManagerService()Lcom/android/server/wm/FoldStarManagerService;
    .registers 4

    .line 516
    const-string v0, "getFoldStarManagerService"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 518
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    if-nez v1, :cond_1a

    .line 519
    new-instance v1, Lcom/android/server/wm/FoldStarManagerService;

    iget-object v2, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/FoldStarManagerService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/MultiStarController;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    .line 521
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mFoldStarManagerService:Lcom/android/server/wm/FoldStarManagerService;

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 522
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getNotchControlPolicyLocked(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_14

    .line 236
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "policy":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 238
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 241
    .end local v0    # "policy":Ljava/lang/Object;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method getNotchControlPolicyMap()Ljava/util/Map;
    .registers 4

    .line 225
    const-string v0, "getNotchControlPolicyMap"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 227
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1d

    .line 228
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 230
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 231
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0

    .line 230
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getOrientationControlPolicyMap()Ljava/util/Map;
    .registers 4

    .line 314
    const-string v0, "getOrientationControlPolicyMap"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 316
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1d

    .line 317
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 319
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 320
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0

    .line 319
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getOrientationPolicyLocked(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_14

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "policy":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 327
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 330
    .end local v0    # "policy":Ljava/lang/Object;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method handleFixedRotation(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "rotation"    # I

    .line 436
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 437
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 438
    return v1

    .line 440
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getForcedOrientation()I

    move-result v2

    .line 441
    .local v2, "forcedOrientation":I
    if-eqz v2, :cond_3d

    .line 442
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v3, :cond_1e

    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mFitToShortSideEnabled:Z

    if-eqz v3, :cond_1e

    goto :goto_3c

    .line 447
    :cond_1e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTISTAR_ORIENTATION_CONTROL_WITH_FIT_TO_SHORT_EDGE:Z

    if-eqz v3, :cond_3d

    .line 448
    const/4 v3, 0x2

    if-eqz p2, :cond_29

    if-ne p2, v3, :cond_28

    goto :goto_29

    .line 449
    :cond_28
    goto :goto_2a

    :cond_29
    :goto_29
    move v3, v4

    .line 450
    .local v3, "nextOrientation":I
    :goto_2a
    if-eq v2, v3, :cond_3d

    .line 451
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    if-ne v3, v4, :cond_34

    move v6, v4

    goto :goto_35

    :cond_34
    move v6, v1

    :goto_35
    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/wm/MultiStarController;->canFitToShortSideEnabled(Lcom/android/server/wm/Task;Landroid/content/res/Configuration;Z)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 453
    return v4

    .line 445
    .end local v3    # "nextOrientation":I
    :cond_3c
    :goto_3c
    return v4

    .line 458
    :cond_3d
    return v1
.end method

.method public initialize()V
    .registers 3

    .line 94
    new-instance v0, Lcom/android/server/wm/MultiStarController$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiStarController$H;-><init>(Lcom/android/server/wm/MultiStarController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiStarController;->mH:Lcom/android/server/wm/MultiStarController$H;

    .line 95
    return-void
.end method

.method interceptRotationInDifferentOrientationIfNeeded(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;I)I
    .registers 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "requested"    # I

    .line 418
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 419
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne p3, v2, :cond_d

    iget-boolean v4, v0, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-nez v4, :cond_13

    :cond_d
    if-ne p3, v1, :cond_3b

    iget-boolean v4, v0, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-eqz v4, :cond_3b

    .line 421
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    .line 422
    .local v4, "currentRotation":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v5

    .line 423
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v6

    .line 422
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v5

    .line 424
    .local v5, "nextRotation":I
    if-eq v5, v4, :cond_3b

    .line 425
    if-eqz v5, :cond_35

    if-ne v5, v2, :cond_2a

    goto :goto_35

    .line 427
    :cond_2a
    if-eq v5, v1, :cond_2f

    const/4 v1, 0x3

    if-ne v5, v1, :cond_3b

    .line 428
    :cond_2f
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-eqz v1, :cond_34

    move v3, v5

    :cond_34
    return v3

    .line 426
    :cond_35
    :goto_35
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v1, :cond_3a

    move v3, v5

    :cond_3a
    return v3

    .line 432
    .end local v4    # "currentRotation":I
    .end local v5    # "nextRotation":I
    :cond_3b
    return v3
.end method

.method isOverlapNotchLocked(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 255
    if-eqz p1, :cond_11

    .line 256
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_e

    .line 258
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_e
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsNotchOverlap:Z

    return v0

    .line 263
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method isPersistFreeformBoundsEnabled()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/server/wm/MultiStarController;->mIsPersistFreeformBoundsEnabled:Z

    return v0
.end method

.method isRotationInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 411
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 412
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/MultiStarController;->canOrientationControlOperation()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public synthetic lambda$toggleEnableForKey$2$MultiStarController(Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 531
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1a7e515f    # 5.25917E-23f

    const/4 v4, 0x0

    if-eq v2, v3, :cond_14

    :cond_13
    goto :goto_1d

    :cond_14
    const-string v2, "corner_gesture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v1, v4

    :goto_1d
    if-eqz v1, :cond_24

    .line 540
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 534
    :cond_24
    :try_start_24
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CORNER_GESTURE_ENABLED:Z

    .line 535
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    move v5, v3

    goto :goto_30

    :cond_2f
    move v5, v4

    :goto_30
    invoke-virtual {v2, v5}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureEnabled(Z)V

    .line 536
    nop

    .line 544
    iget-object v2, p0, Lcom/android/server/wm/MultiStarController;->mH:Lcom/android/server/wm/MultiStarController$H;

    iget-object v5, p0, Lcom/android/server/wm/MultiStarController;->mH:Lcom/android/server/wm/MultiStarController$H;

    if-eqz v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v4

    :goto_3c
    invoke-virtual {v5, v4, v3, v4, p1}, Lcom/android/server/wm/MultiStarController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MultiStarController$H;->sendMessage(Landroid/os/Message;)Z

    .line 545
    nop

    .end local v1    # "enabled":Z
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 546
    return-void

    .line 545
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$updatePolicyIfNeeded$0$MultiStarController(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiStarController;->updatePolicyIfNeededInner(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method setCustomDensityEnabled(I)V
    .registers 4
    .param p1, "enableFlags"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCustomDensityEnabled(I)V

    .line 184
    return-void
.end method

.method setIsUserRotationFree(Z)V
    .registers 2
    .param p1, "isUserRotationFree"    # Z

    .line 334
    iput-boolean p1, p0, Lcom/android/server/wm/MultiStarController;->mIsUserRotationFree:Z

    .line 335
    return-void
.end method

.method setMultiStarImmersiveModeLocked(Z)V
    .registers 4
    .param p1, "immersiveMode"    # Z

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiStarImmersiveModeLocked(Z)V

    .line 191
    return-void
.end method

.method setNaviBarImmersiveModeLocked(Z)V
    .registers 4
    .param p1, "immersiveMode"    # Z

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setNaviBarImmersiveModeLocked(Z)V

    .line 196
    return-void
.end method

.method setNotchControlPolicyMap(Ljava/util/Map;Z)V
    .registers 5
    .param p1, "policyMap"    # Ljava/util/Map;
    .param p2, "replaceAll"    # Z

    .line 212
    const-string/jumbo v0, "setNotchControlPolicyMap"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_19

    .line 215
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    :cond_19
    if-eqz p2, :cond_20

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 220
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mNotchControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 221
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 222
    return-void

    .line 221
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setOrientationControlOperationPolicy(IZ)V
    .registers 5
    .param p1, "operationPolicy"    # I
    .param p2, "isMultiStarRotationFree"    # Z

    .line 293
    const-string/jumbo v0, "setOrientationControlOperationPolicy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 295
    iput p1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlOperationPolicy:I

    .line 296
    iput-boolean p2, p0, Lcom/android/server/wm/MultiStarController;->mIsMultiStarRotationFree:Z

    .line 297
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 298
    return-void

    .line 297
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setOrientationControlPolicyMap(Ljava/util/Map;Z)V
    .registers 5
    .param p1, "policyMap"    # Ljava/util/Map;
    .param p2, "replaceAll"    # Z

    .line 301
    const-string/jumbo v0, "setOrientationControlPolicyMap"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 303
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_19

    .line 304
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    :cond_19
    if-eqz p2, :cond_20

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 309
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mOrientationControlPolicyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 310
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 311
    return-void

    .line 310
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setPersistFreeformBoundsEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 172
    iput-boolean p1, p0, Lcom/android/server/wm/MultiStarController;->mIsPersistFreeformBoundsEnabled:Z

    .line 173
    return-void
.end method

.method shouldUseSensorRotation(I)Z
    .registers 7
    .param p1, "sensorRotation"    # I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "useSensorRotation":Z
    iget-object v1, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 363
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->inFullscreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 364
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_25

    .line 365
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    .local v3, "task":Lcom/android/server/wm/Task;
    :goto_24
    goto :goto_2f

    .line 367
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_25
    iget-object v3, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    sget-object v4, Lcom/android/server/wm/-$$Lambda$MultiStarController$DxckPYTu9-6VXLL7zENdYD7vTo8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MultiStarController$DxckPYTu9-6VXLL7zENdYD7vTo8;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/RootWindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 370
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :goto_2f
    if-eqz v3, :cond_6c

    .line 371
    if-eq p1, v2, :cond_4a

    const/4 v2, 0x3

    if-ne p1, v2, :cond_37

    goto :goto_4a

    .line 373
    :cond_37
    if-nez p1, :cond_3c

    .line 374
    iget-boolean v0, v3, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    goto :goto_4c

    .line 375
    :cond_3c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4c

    .line 376
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ALLOW_ALL_ROTATION:Z

    if-eqz v2, :cond_46

    .line 377
    iget-boolean v2, v3, Lcom/android/server/wm/Task;->mCanRotationToPortrait:Z

    goto :goto_48

    :cond_46
    iget-boolean v2, v3, Lcom/android/server/wm/Task;->mCanRotationToReversePortrait:Z

    :goto_48
    move v0, v2

    goto :goto_4c

    .line 372
    :cond_4a
    :goto_4a
    iget-boolean v0, v3, Lcom/android/server/wm/Task;->mCanRotationToLandscape:Z

    .line 379
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_6c

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiStar: SensorRotation("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is used by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_6c
    return v0
.end method

.method toggleEnableForKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mH:Lcom/android/server/wm/MultiStarController$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiStarController$Jy0JC59Mub2JUJldCTWLZ_S0kPY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$MultiStarController$Jy0JC59Mub2JUJldCTWLZ_S0kPY;-><init>(Lcom/android/server/wm/MultiStarController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiStarController$H;->post(Ljava/lang/Runnable;)Z

    .line 547
    return-void
.end method

.method toggleFreeformWindowingMode()Z
    .registers 13

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 593
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 595
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_68

    .line 596
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 597
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v10, :cond_68

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 598
    iget-object v3, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 599
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 600
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_42

    .line 601
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 602
    :cond_42
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v11

    .line 603
    .local v11, "options":Landroid/app/ActivityOptions;
    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v3

    .line 605
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v7, 0x0

    .line 606
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v9

    .line 604
    move-object v6, v10

    move-object v8, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 610
    .end local v10    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "options":Landroid/app/ActivityOptions;
    :cond_68
    return v1
.end method

.method updatePolicyIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 139
    new-instance v0, Lcom/android/server/wm/-$$Lambda$MultiStarController$hKVSychdsFA_jiYP3imatk_MoNo;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$MultiStarController$hKVSychdsFA_jiYP3imatk_MoNo;-><init>(Lcom/android/server/wm/MultiStarController;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 140
    return-void
.end method
