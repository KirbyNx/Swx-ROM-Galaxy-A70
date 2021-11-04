.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotController$Utils;
    }
.end annotation


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighResTaskSnapshotScale:F

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCustomBackgroundInsets:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 124
    nop

    .line 125
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BACKGROUND:Z

    if-eqz v0, :cond_2a

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpCustomBackgroundInsets:Landroid/graphics/Rect;

    .line 144
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 145
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 146
    new-instance v1, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 147
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 156
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 37
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 671
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 672
    .local v1, "topChild":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 673
    return-object v2

    .line 675
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 676
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_11

    .line 677
    return-object v2

    .line 679
    :cond_11
    nop

    .line 680
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 679
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 681
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 682
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v6

    .line 683
    .local v6, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    new-instance v7, Landroid/view/InsetsState;

    .line 684
    invoke-virtual {v6, v3}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 685
    .local v7, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/wm/TaskSnapshotController;->mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 686
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v8

    .line 687
    .local v8, "systemBarInsets":Landroid/graphics/Rect;
    new-instance v16, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v13

    iget v14, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object/from16 v9, v16

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    .line 690
    .local v9, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 691
    .local v10, "taskWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 692
    .local v11, "taskHeight":I
    int-to-float v12, v10

    iget v13, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 693
    .local v12, "width":I
    int-to-float v14, v11

    mul-float/2addr v14, v13

    float-to-int v13, v14

    .line 695
    .local v13, "height":I
    const-string v14, "TaskSnapshotController"

    invoke-static {v14, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v14

    .line 696
    .local v14, "node":Landroid/graphics/RenderNode;
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v15, v12, v13}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 697
    invoke-virtual {v14, v15}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 698
    invoke-virtual {v14, v12, v13}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v15

    .line 699
    .local v15, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v15, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 700
    invoke-virtual {v9, v8}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 701
    invoke-virtual {v9, v15, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 702
    invoke-virtual {v14, v15}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 703
    invoke-static {v14, v12, v13}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 704
    .local v16, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_94

    .line 705
    return-object v2

    .line 710
    :cond_94
    new-instance v2, Landroid/app/ActivityManager$TaskSnapshot;

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move/from16 v32, v4

    .end local v4    # "color":I
    .local v32, "color":I
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 712
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v21

    .line 713
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v22

    move-object/from16 v33, v1

    .end local v1    # "topChild":Lcom/android/server/wm/ActivityRecord;
    .local v33, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 714
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v24

    move-object/from16 v34, v5

    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v34, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 715
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v29

    .line 717
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move/from16 v23, v1

    move-object/from16 v25, v5

    invoke-direct/range {v17 .. v31}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;ZZIIZ)V

    .line 710
    return-object v2
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 306
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$eY4HzOpxvBAchhbObndnIDQqsVs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$eY4HzOpxvBAchhbObndnIDQqsVs;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "state"    # Lcom/android/server/wm/WindowState;

    .line 606
    nop

    .line 607
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 608
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_19

    .line 609
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "insets":Landroid/graphics/Rect;
    goto :goto_25

    .line 612
    .end local v0    # "insets":Landroid/graphics/Rect;
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 614
    .restart local v0    # "insets":Landroid/graphics/Rect;
    :goto_25
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 615
    return-object v0
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .registers 14
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 815
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZLandroid/view/DisplayCutout;IIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 819
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 815
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 795
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 796
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    .line 797
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    .line 798
    :cond_b
    const/4 v1, 0x0

    :goto_c
    nop

    .line 799
    .local v1, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_14

    .line 800
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 802
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;Z)V

    .line 183
    return-void
.end method

.method private handleClosingApps(Landroid/util/ArraySet;Z)V
    .registers 7
    .param p2, "fromVisibilityChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 187
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    return-void

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 196
    if-eqz p2, :cond_2e

    .line 197
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_2d

    .line 198
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 199
    .local v1, "atoken":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 197
    .end local v1    # "atoken":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .end local v0    # "i":I
    :cond_2d
    goto :goto_33

    .line 203
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 205
    :goto_33
    return-void
.end method

.method static synthetic lambda$createTaskSnapshot$2(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 505
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 307
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsPopOver:Z

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 314
    :cond_17
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 312
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method static mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V
    .registers 4
    .param p0, "base"    # Landroid/view/InsetsState;
    .param p1, "other"    # Landroid/view/InsetsState;

    .line 806
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_1
    const/16 v1, 0x11

    if-ge v0, v1, :cond_11

    .line 807
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 808
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_e

    .line 809
    invoke-virtual {p0, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 806
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 812
    .end local v0    # "type":I
    :cond_11
    return-void
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 619
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 620
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 621
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 622
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 619
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    .line 598
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_d

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

.method private snapshotTasks(Landroid/util/ArraySet;Z)V
    .registers 12
    .param p2, "allowSnapshotHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 232
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_93

    .line 233
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 235
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_18

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 236
    .local v3, "snapshotHome":Z
    :goto_19
    if-eqz v3, :cond_20

    .line 237
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .local v4, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_38

    .line 239
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_20
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v4

    if-eqz v4, :cond_33

    if-eq v4, v1, :cond_2e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    .line 249
    const/4 v4, 0x0

    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_38

    .line 241
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_2d
    goto :goto_8f

    .line 243
    :cond_2e
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 244
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_38

    .line 246
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_33
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 247
    .restart local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 253
    :goto_38
    if-eqz v4, :cond_8f

    .line 254
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 255
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_65

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-eqz v6, :cond_65

    .line 257
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_65

    .line 263
    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 265
    if-nez v3, :cond_8f

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v8, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 267
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_8f

    .line 259
    :cond_65
    :goto_65
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "snapshotHome":Z
    .end local v4    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v5    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_8f
    :goto_8f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 272
    .end local v0    # "i":I
    :cond_93
    return-void
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 215
    return-void
.end method

.method public clearSnapshotCache()V
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    .line 289
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 4
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F

    .line 442
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 14
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F
    .param p3, "pixelFormat"    # I
    .param p4, "outTaskSize"    # Landroid/graphics/Point;

    .line 448
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 450
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v0

    if-nez v0, :cond_28

    .line 452
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_27

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_27
    return-object v1

    .line 457
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v0, "excludeSurfaceControls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_ab

    .line 467
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 469
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 470
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 473
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_56
    if-ltz v2, :cond_ab

    .line 474
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 475
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 476
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 477
    .local v6, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_a7

    .line 478
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 480
    .end local v6    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_6c
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 481
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v6, :cond_9d

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 482
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "j":I
    :goto_81
    if-ltz v6, :cond_9c

    .line 483
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityStack;

    .line 484
    .local v7, "child":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 485
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    .line 486
    .local v8, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v8, :cond_9c

    .line 487
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 482
    .end local v7    # "child":Lcom/android/server/wm/ActivityStack;
    .end local v8    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_99
    add-int/lit8 v6, v6, -0x1

    goto :goto_81

    .end local v6    # "j":I
    :cond_9c
    :goto_9c
    goto :goto_a8

    .line 493
    :cond_9d
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 494
    .local v6, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_a8

    .line 495
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 480
    .end local v6    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_a7
    :goto_a7
    nop

    .line 473
    .end local v5    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, -0x1

    goto :goto_56

    .line 504
    .end local v2    # "i":I
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_ab
    sget-object v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$J89DWnayogzIY_4hNRlMZ4LlA88;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$J89DWnayogzIY_4hNRlMZ4LlA88;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 507
    .local v2, "menuPopupWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_bc

    .line 508
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 509
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_bc

    .line 510
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v2    # "menuPopupWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_bc
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_d3

    .line 518
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 519
    .local v2, "imeWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_d3

    .line 520
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 521
    .restart local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_d3

    .line 522
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    .end local v2    # "imeWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_d3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/SurfaceControl;

    .line 528
    .local v2, "excludeLayers":[Landroid/view/SurfaceControl;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e2

    .line 529
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 545
    .end local v0    # "excludeSurfaceControls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    :cond_e2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_f9

    .line 549
    :cond_f5
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_f9
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 543
    invoke-static {v0, v3, p2, p3, v2}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 551
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz p4, :cond_111

    .line 552
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p4, Landroid/graphics/Point;->x:I

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p4, Landroid/graphics/Point;->y:I

    .line 555
    :cond_111
    if-eqz v0, :cond_118

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    goto :goto_119

    .line 556
    :cond_118
    move-object v3, v1

    :goto_119
    nop

    .line 557
    .local v3, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v3, :cond_12a

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-le v5, v4, :cond_12a

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-gt v5, v4, :cond_129

    goto :goto_12a

    .line 560
    :cond_129
    return-object v0

    .line 558
    :cond_12a
    :goto_12a
    return-object v1
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "builder"    # Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 432
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 433
    .local v0, "taskSize":Landroid/graphics/Point;
    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 434
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->getPixelFormat()I

    move-result v2

    .line 433
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 435
    .local v1, "taskSnapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 436
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 630
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 631
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_40

    .line 632
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 633
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 637
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 638
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 643
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v3

    .line 644
    .local v3, "pairedTask":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 645
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "pairedTask":Lcom/android/server/wm/Task;
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 652
    .end local v0    # "i":I
    :cond_40
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "isLowResolution"    # Z

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 281
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 280
    :goto_f
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 657
    .local v0, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_12

    .line 658
    const/4 v1, 0x2

    return v1

    .line 659
    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 660
    const/4 v1, 0x1

    return v1

    .line 662
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$screenTurningOff$3$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 774
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_b
    return-void
.end method

.method public synthetic lambda$screenTurningOff$4$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_39

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 772
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$sVGK1Kvsop_YR9-M7Ast8PcRumA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$sVGK1Kvsop_YR9-M7Ast8PcRumA;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 780
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 781
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v1

    .line 782
    .local v1, "allowSnapshotHome":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 783
    .end local v1    # "allowSnapshotHome":Z
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_33

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    .line 785
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 786
    nop

    .line 787
    return-void

    .line 783
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .end local p1    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    throw v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 785
    .restart local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_39
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 786
    throw v0
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 6
    .param p1, "appWindowToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 170
    if-nez p2, :cond_f

    .line 173
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;Z)V

    .line 179
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 737
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 732
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 725
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 163
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 164
    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/app/ActivityManager$TaskSnapshot$Builder;)Z
    .registers 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I
    .param p3, "builder"    # Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 338
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 339
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_16
    return v2

    .line 345
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_70

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 347
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p3, v4}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setId(J)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 349
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "PairTaskPkg"

    const-string v5, "PairTaskCls"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 351
    invoke-virtual {p3, v4}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setWindowingMode(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 352
    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setPixelFormat(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 353
    if-eqz v0, :cond_6f

    .line 354
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 355
    .local v1, "di":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setOrientation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setRotation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 358
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    iget v6, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v9, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 360
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 362
    .end local v1    # "di":Landroid/view/DisplayInfo;
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_6f
    return v4

    .line 366
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_70
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 367
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8f

    .line 368
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_8e

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_8e
    return v2

    .line 373
    :cond_8f
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 374
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_ad

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. App is animating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_ad
    return v2

    .line 380
    :cond_ae
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 381
    .local v5, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_c9

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No main window for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v2

    .line 385
    :cond_c9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 386
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_e7

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip taking screenshot. App has fixed rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_e7
    return v2

    .line 393
    :cond_e8
    invoke-virtual {p3, v4}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p3, v6, v7}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setId(J)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 396
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BACKGROUND:Z

    if-eqz v1, :cond_112

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isCustomBackgroundTarget()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 397
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpCustomBackgroundInsets:Landroid/graphics/Rect;

    .line 398
    invoke-static {v1, v6, v7}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 400
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpCustomBackgroundInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    goto :goto_119

    .line 403
    :cond_112
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 406
    :goto_119
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_124

    move v1, v4

    goto :goto_125

    :cond_124
    move v1, v2

    .line 407
    .local v1, "isWindowTranslucent":Z
    :goto_125
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_132

    move v6, v4

    goto :goto_133

    :cond_132
    move v6, v2

    .line 409
    .local v6, "isShowWallpaper":Z
    :goto_133
    if-nez p2, :cond_14a

    .line 411
    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 410
    invoke-virtual {v7}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v7

    if-eqz v7, :cond_148

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v7

    if-eqz v7, :cond_148

    if-eqz v1, :cond_147

    if-nez v6, :cond_148

    .line 412
    :cond_147
    goto :goto_149

    .line 413
    :cond_148
    move v3, v4

    :goto_149
    move p2, v3

    .line 416
    :cond_14a
    invoke-static {p2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 417
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_158

    if-eqz v1, :cond_15a

    :cond_158
    move v2, v4

    goto :goto_15b

    :cond_15a
    nop

    .line 419
    .local v2, "isTranslucent":Z
    :goto_15b
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 420
    invoke-virtual {p3, p2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setPixelFormat(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 421
    invoke-virtual {p3, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 422
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setOrientation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 423
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setRotation(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setWindowingMode(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 425
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setSystemUiVisibility(I)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 426
    return v4
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 747
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 748
    return-void
.end method

.method removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method removeSnapshotCache(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    .line 741
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 763
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 764
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 765
    return-void

    .line 769
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$6JOWV_HmA_uVXr0z7xAtW3yezVg;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3
    .param p1, "paused"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 757
    return-void
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;I)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 570
    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;-><init>()V

    .line 572
    .local v0, "builder":Landroid/app/ActivityManager$TaskSnapshot$Builder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/app/ActivityManager$TaskSnapshot$Builder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 574
    return-object v2

    .line 577
    :cond_d
    nop

    .line 578
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 580
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v1, :cond_15

    .line 582
    return-object v2

    .line 584
    :cond_15
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setSnapshot(Landroid/graphics/GraphicBuffer;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 585
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/app/ActivityManager$TaskSnapshot$Builder;

    .line 587
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 588
    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/PairTask;

    .line 590
    .local v2, "pairTask":Lcom/android/server/wm/PairTask;
    invoke-virtual {v2}, Lcom/android/server/wm/PairTask;->takeSnapshotBoundsByWindowingMode()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->setSnapshotBoundsByWindowingMode(Ljava/util/Map;)V

    .line 594
    .end local v2    # "pairTask":Lcom/android/server/wm/PairTask;
    :cond_33
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot$Builder;->build()Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    return-object v2
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 219
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 160
    return-void
.end method

.method takeSnapshotByForce(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;Z)V

    .line 830
    return-void
.end method

.method takeSnapshotByForce(Lcom/android/server/wm/Task;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "skipClosingAppSnapshot"    # Z

    .line 833
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_57

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_57

    .line 837
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 838
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 839
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 840
    .local v0, "pair":Lcom/android/server/wm/PairTask;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitCellPairChild()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 844
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitCellPairChild()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v0    # "pair":Lcom/android/server/wm/PairTask;
    :cond_44
    goto :goto_4a

    .line 847
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 849
    :goto_4a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 850
    if-eqz p2, :cond_56

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 853
    :cond_56
    return-void

    .line 834
    :cond_57
    :goto_57
    return-void
.end method
