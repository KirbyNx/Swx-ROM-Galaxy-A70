.class final Lcom/android/server/display/MagnifierDisplayPolicy;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;,
        Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MagnifierDisplayPolicy"


# instance fields
.field private mBorderPadding:F

.field private mContext:Landroid/content/Context;

.field private mCropHeight:F

.field private mCropWidth:F

.field private mCurrentFollowingStatus:Z

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDefaultHeight:I

.field private mDefaultRotation:I

.field private mDefaultWidth:I

.field mDm:Landroid/hardware/display/IDisplayManager;

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mHasSoftwareNaviBar:Z

.field private mIsPeekViewMode:Z

.field private mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

.field private mNavigationBarGestureWhileHidden:Z

.field private mNavigationBarHeightButtonP:I

.field private mNavigationBarHeightGesture:I

.field private mOnSizeChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerMargin:F

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;-><init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 59
    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 66
    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    .line 67
    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    .line 68
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightGesture:I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 72
    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 73
    const/high16 v2, 0x40000000    # 2.0f

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 76
    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 82
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    .line 94
    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    .line 96
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 97
    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v0

    :goto_6d
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNavigationBarGestureWhileHidden : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " DB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "MagnifierDisplayPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method private setPointMargin()V
    .registers 3

    .line 388
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 389
    return-void
.end method

.method private updateDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 244
    if-eqz p1, :cond_32

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v1, :cond_f

    goto :goto_32

    .line 250
    :cond_f
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 251
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 254
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    .line 257
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 258
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 260
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    .line 262
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 339
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public checkUpdateDisplayInfo()Z
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_23

    .line 362
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 363
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 364
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    .line 366
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 370
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, v0}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 373
    goto :goto_31

    .line 371
    :catch_2d
    move-exception v1

    .line 372
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 375
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 376
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 377
    .local v2, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    .line 378
    .end local v2    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    goto :goto_3f

    .line 380
    :cond_50
    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    iget-object v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_5e

    .line 381
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    .line 384
    :cond_5e
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_7

    .line 348
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_7

    .line 355
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .registers 25
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v2, v2

    int-to-float v2, v2

    .line 137
    .local v2, "x":F
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v3, v3

    int-to-float v3, v3

    .line 138
    .local v3, "y":F
    iget v4, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 140
    .local v4, "scale":F
    iget v5, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v2, v5

    .line 141
    .local v5, "left":F
    iget v7, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    div-float/2addr v7, v6

    sub-float v7, v3, v7

    .line 143
    .local v7, "top":F
    const/4 v8, 0x0

    .line 144
    .local v8, "surfaceOffsetX":F
    const/4 v9, 0x0

    .line 145
    .local v9, "surfaceOffsetY":F
    const/4 v10, 0x0

    .line 146
    .local v10, "absOffsetX":F
    const/4 v11, 0x0

    .line 147
    .local v11, "absOffsetY":F
    const/4 v12, 0x0

    .line 149
    .local v12, "defaultTopHeight":F
    iget v13, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 150
    .local v13, "defaultWidth":I
    iget v14, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 153
    .local v14, "defaultHeight":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentFollowingStatus : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mHasSoftwareNaviBar : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v15, "MagnifierDisplayPolicy"

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    if-eqz v6, :cond_b7

    .line 155
    const/4 v6, 0x0

    .line 156
    .local v6, "navigationBarHeight":I
    iget-boolean v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mHasSoftwareNaviBar:Z

    if-eqz v1, :cond_91

    .line 157
    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 158
    .local v1, "config":Landroid/content/res/Configuration;
    move/from16 v17, v6

    .end local v6    # "navigationBarHeight":I
    .local v17, "navigationBarHeight":I
    iget v6, v1, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v18, v1

    .end local v1    # "config":Landroid/content/res/Configuration;
    .local v18, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x1

    if-ne v6, v1, :cond_8e

    .line 160
    iget-boolean v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    if-eqz v1, :cond_69

    .line 161
    iget v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightGesture:I

    goto :goto_6b

    :cond_69
    iget v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarHeightButtonP:I

    :goto_6b
    move v6, v1

    .line 162
    .end local v17    # "navigationBarHeight":I
    .restart local v6    # "navigationBarHeight":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v8

    .end local v8    # "surfaceOffsetX":F
    .local v19, "surfaceOffsetX":F
    const-string/jumbo v8, "getDisplayInfo mNavigationBarGestureWhileHidden : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " navigationBarHeight : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 158
    .end local v6    # "navigationBarHeight":I
    .end local v19    # "surfaceOffsetX":F
    .restart local v8    # "surfaceOffsetX":F
    .restart local v17    # "navigationBarHeight":I
    :cond_8e
    move/from16 v19, v8

    .end local v8    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    goto :goto_95

    .line 156
    .end local v17    # "navigationBarHeight":I
    .end local v18    # "config":Landroid/content/res/Configuration;
    .end local v19    # "surfaceOffsetX":F
    .restart local v6    # "navigationBarHeight":I
    .restart local v8    # "surfaceOffsetX":F
    :cond_91
    move/from16 v17, v6

    move/from16 v19, v8

    .line 166
    .end local v6    # "navigationBarHeight":I
    .end local v8    # "surfaceOffsetX":F
    .restart local v17    # "navigationBarHeight":I
    .restart local v19    # "surfaceOffsetX":F
    :goto_95
    move/from16 v6, v17

    .end local v17    # "navigationBarHeight":I
    .restart local v6    # "navigationBarHeight":I
    :goto_97
    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 167
    .local v1, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 169
    .local v8, "defaultDisplay":Landroid/view/Display;
    iget-object v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 170
    move-object/from16 v17, v1

    .end local v1    # "windowmanager":Landroid/view/WindowManager;
    .local v17, "windowmanager":Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v1

    sub-int v1, v14, v1

    sub-int v14, v1, v6

    goto :goto_b9

    .line 154
    .end local v6    # "navigationBarHeight":I
    .end local v17    # "windowmanager":Landroid/view/WindowManager;
    .end local v19    # "surfaceOffsetX":F
    .local v8, "surfaceOffsetX":F
    :cond_b7
    move/from16 v19, v8

    .line 175
    .end local v8    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    :goto_b9
    iget v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float v6, v1, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    cmpg-float v6, v2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v6, :cond_d8

    .line 176
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_d0

    .line 177
    const/4 v1, 0x0

    .line 178
    .end local v19    # "surfaceOffsetX":F
    .local v1, "surfaceOffsetX":F
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_d5

    .line 180
    .end local v1    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    :cond_d0
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    .line 182
    .end local v19    # "surfaceOffsetX":F
    .restart local v1    # "surfaceOffsetX":F
    :goto_d5
    const/4 v10, 0x0

    move v15, v6

    goto :goto_110

    .line 183
    .end local v1    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    :cond_d8
    const/high16 v6, 0x40000000    # 2.0f

    int-to-float v15, v13

    mul-float v16, v1, v4

    div-float v17, v16, v6

    sub-float v15, v15, v17

    cmpl-float v6, v2, v15

    if-lez v6, :cond_105

    .line 184
    int-to-float v6, v13

    sub-float/2addr v6, v1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_f4

    .line 185
    int-to-float v6, v13

    sub-float v15, v8, v4

    mul-float/2addr v6, v15

    .line 186
    .end local v19    # "surfaceOffsetX":F
    .local v6, "surfaceOffsetX":F
    int-to-float v15, v13

    sub-float v5, v15, v1

    move v1, v6

    goto :goto_fc

    .line 188
    .end local v6    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    :cond_f4
    int-to-float v6, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v1, v15

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    sub-float/2addr v6, v1

    move v1, v6

    .line 190
    .end local v19    # "surfaceOffsetX":F
    .restart local v1    # "surfaceOffsetX":F
    :goto_fc
    int-to-float v6, v13

    iget v15, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    mul-float/2addr v15, v4

    sub-float v10, v6, v15

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_110

    .line 192
    .end local v1    # "surfaceOffsetX":F
    .restart local v19    # "surfaceOffsetX":F
    :cond_105
    neg-float v6, v2

    sub-float v15, v4, v8

    mul-float/2addr v6, v15

    .line 193
    .end local v19    # "surfaceOffsetX":F
    .restart local v6    # "surfaceOffsetX":F
    mul-float/2addr v1, v4

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v1, v15

    sub-float v10, v2, v1

    move v1, v6

    .line 196
    .end local v6    # "surfaceOffsetX":F
    .restart local v1    # "surfaceOffsetX":F
    :goto_110
    iget v6, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float v16, v6, v4

    div-float v17, v16, v15

    add-float v17, v17, v12

    cmpg-float v15, v3, v17

    if-gez v15, :cond_12d

    .line 197
    cmpg-float v15, v7, v12

    if-gez v15, :cond_124

    .line 198
    move v7, v12

    .line 199
    sub-float/2addr v8, v4

    mul-float/2addr v8, v12

    .end local v9    # "surfaceOffsetY":F
    .local v8, "surfaceOffsetY":F
    goto :goto_12b

    .line 201
    .end local v8    # "surfaceOffsetY":F
    .restart local v9    # "surfaceOffsetY":F
    :cond_124
    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v6, v15

    sub-float/2addr v6, v3

    mul-float/2addr v6, v4

    add-float v8, v12, v6

    .line 203
    .end local v9    # "surfaceOffsetY":F
    .restart local v8    # "surfaceOffsetY":F
    :goto_12b
    move v6, v12

    .end local v11    # "absOffsetY":F
    .local v6, "absOffsetY":F
    goto :goto_163

    .line 204
    .end local v6    # "absOffsetY":F
    .end local v8    # "surfaceOffsetY":F
    .restart local v9    # "surfaceOffsetY":F
    .restart local v11    # "absOffsetY":F
    :cond_12d
    const/high16 v15, 0x40000000    # 2.0f

    int-to-float v8, v14

    mul-float v16, v6, v4

    div-float v18, v16, v15

    sub-float v8, v8, v18

    cmpl-float v8, v3, v8

    if-lez v8, :cond_157

    .line 205
    int-to-float v8, v14

    sub-float/2addr v8, v6

    cmpl-float v8, v7, v8

    if-lez v8, :cond_14a

    .line 206
    int-to-float v8, v14

    sub-float v7, v8, v6

    .line 207
    int-to-float v6, v14

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v4

    mul-float/2addr v6, v8

    move v8, v6

    .end local v9    # "surfaceOffsetY":F
    .local v6, "surfaceOffsetY":F
    goto :goto_151

    .line 209
    .end local v6    # "surfaceOffsetY":F
    .restart local v9    # "surfaceOffsetY":F
    :cond_14a
    int-to-float v8, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v6, v15

    add-float/2addr v6, v3

    mul-float/2addr v6, v4

    sub-float/2addr v8, v6

    .line 211
    .end local v9    # "surfaceOffsetY":F
    .restart local v8    # "surfaceOffsetY":F
    :goto_151
    int-to-float v6, v14

    iget v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    mul-float/2addr v9, v4

    sub-float/2addr v6, v9

    .end local v11    # "absOffsetY":F
    .local v6, "absOffsetY":F
    goto :goto_163

    .line 213
    .end local v6    # "absOffsetY":F
    .end local v8    # "surfaceOffsetY":F
    .restart local v9    # "surfaceOffsetY":F
    .restart local v11    # "absOffsetY":F
    :cond_157
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v8, v4, v8

    mul-float/2addr v8, v3

    neg-float v8, v8

    .line 214
    .end local v9    # "surfaceOffsetY":F
    .restart local v8    # "surfaceOffsetY":F
    mul-float/2addr v6, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sub-float v6, v3, v6

    .line 217
    .end local v11    # "absOffsetY":F
    .restart local v6    # "absOffsetY":F
    :goto_163
    iget-object v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v9}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v9

    float-to-int v11, v1

    iput v11, v9, Landroid/graphics/Point;->x:I

    .line 218
    iget-object v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v9}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v9

    float-to-int v11, v8

    iput v11, v9, Landroid/graphics/Point;->y:I

    .line 220
    iget-object v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v9}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v9

    float-to-int v11, v10

    iput v11, v9, Landroid/graphics/Point;->x:I

    .line 221
    iget-object v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static {v9}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v9

    float-to-int v11, v6

    iput v11, v9, Landroid/graphics/Point;->y:I

    .line 223
    iget v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    add-float v11, v5, v9

    .line 224
    .local v11, "rectLeft":F
    add-float v15, v7, v9

    .line 225
    .local v15, "rectTop":F
    move/from16 v16, v1

    .end local v1    # "surfaceOffsetX":F
    .local v16, "surfaceOffsetX":F
    iget v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    add-float/2addr v1, v5

    sub-float/2addr v1, v9

    .line 226
    .local v1, "rectRight":F
    move/from16 v17, v2

    .end local v2    # "x":F
    .local v17, "x":F
    iget v2, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    add-float/2addr v2, v7

    sub-float/2addr v2, v9

    .line 228
    .local v2, "rectBottom":F
    iget-object v9, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v9

    move/from16 v18, v3

    .end local v3    # "y":F
    .local v18, "y":F
    float-to-int v3, v11

    move/from16 v19, v5

    .end local v5    # "left":F
    .local v19, "left":F
    float-to-int v5, v15

    const v20, 0x3d4ccccd    # 0.05f

    move/from16 v21, v6

    .end local v6    # "absOffsetY":F
    .local v21, "absOffsetY":F
    add-float v6, v1, v20

    float-to-int v6, v6

    move/from16 v22, v1

    .end local v1    # "rectRight":F
    .local v22, "rectRight":F
    add-float v1, v2, v20

    float-to-int v1, v1

    invoke-virtual {v9, v3, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    float-to-int v5, v11

    int-to-float v5, v5

    sub-float v5, v11, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 230
    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->y:I

    float-to-int v5, v15

    int-to-float v5, v5

    sub-float v5, v15, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 240
    iget-object v1, v0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v1
.end method

.method public getHeight()I
    .registers 3

    .line 297
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPrecision(F)F
    .registers 5
    .param p1, "length"    # F

    .line 266
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 267
    .local v1, "diff":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method public getRotation()I
    .registers 2

    .line 302
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultRotation:I

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 306
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 293
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    return-object v0
.end method

.method public removeOnSizeChanageListener(Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 343
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public setCurrentFollowingStatus(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 416
    iput-boolean p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCurrentFollowingStatus:Z

    .line 419
    if-eqz p1, :cond_2f

    .line 420
    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 421
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_while_hidden"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    :cond_15
    iput-boolean v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUpdateDisplayInfo mNavigationBarGestureWhileHidden : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnifierDisplayPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2f
    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 289
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mBorderPadding:F

    .line 290
    return-void
.end method

.method public setPrecision()V
    .registers 4

    .line 271
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 272
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 276
    invoke-direct {p0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPointMargin()V

    .line 278
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_34

    .line 280
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 281
    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 284
    :cond_34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSettings(IIF)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .line 397
    iget v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    cmpl-float v0, v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 398
    .local v0, "isScaleChange":Z
    :goto_b
    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    if-ne v3, p1, :cond_15

    iget v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    if-eq v3, p2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    .line 400
    .local v1, "isSizeChange":Z
    :cond_15
    :goto_15
    iput p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 401
    iput p2, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mFixedHeight:I

    .line 402
    iput p3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mScale:F

    .line 403
    int-to-float v3, p1

    div-float/2addr v3, p3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropWidth:F

    .line 404
    int-to-float v3, p2

    div-float/2addr v3, p3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mCropHeight:F

    .line 406
    if-eqz v0, :cond_2c

    if-nez v1, :cond_2c

    .line 407
    return-void

    .line 409
    :cond_2c
    iget-object v3, p0, Lcom/android/server/display/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 410
    .local v4, "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    invoke-interface {v4, v2}, Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    .line 411
    .end local v4    # "listener":Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;
    goto :goto_32

    .line 412
    :cond_42
    return-void
.end method
