.class Lcom/android/server/wm/TaskSnapshotSurface;
.super Ljava/lang/Object;
.source "TaskSnapshotSurface.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;,
        Lcom/android/server/wm/TaskSnapshotSurface$Window;
    }
.end annotation


# static fields
.field private static final FLAG_INHERIT_EXCLUDES:I = 0x3186e038

.field private static final MSG_REPORT_DRAW:I = 0x0

.field private static final PRIVATE_FLAG_INHERITS:I = 0x20000

.field private static final SIZE_MISMATCH_MINIMUM_TIME_MS:J = 0x1c2L

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId=%s"

.field private static sHandler:Landroid/os/Handler;

.field private static final sTmpSurfaceControl:Landroid/view/SurfaceControl;

.field private static final sTmpSurfaceSize:Landroid/graphics/Point;


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mChildSurfaceControl:Landroid/view/SurfaceControl;

.field private final mFrame:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDrawn:Z

.field private final mOrientationOnCreation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/IWindowSession;

.field private mShownTime:J

.field private mSizeMismatch:Z

.field private mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mSnapshotMatrix:Landroid/graphics/Matrix;

.field private final mStatusBarColor:I

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

.field private final mSystemBarInsets:Landroid/graphics/Rect;

.field private final mTaskBounds:Landroid/graphics/Rect;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTmpDstFrame:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpSnapshotSize:Landroid/graphics/RectF;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 128
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;

    .line 129
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceControl:Landroid/view/SurfaceControl;

    .line 509
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotSurface$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;ILandroid/view/InsetsState;)V
    .registers 29
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "window"    # Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p4, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p7, "sysUiVis"    # I
    .param p8, "windowFlags"    # I
    .param p9, "windowPrivateFlags"    # I
    .param p10, "taskBounds"    # Landroid/graphics/Rect;
    .param p11, "currentOrientation"    # I
    .param p12, "insetsState"    # Landroid/view/InsetsState;

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 139
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 141
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    .line 142
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    .line 148
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 153
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    .line 154
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    .line 302
    iput-object v1, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 303
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    .line 304
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    .line 305
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    .line 306
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    .line 307
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 308
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 309
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 310
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v6

    .line 311
    .local v6, "backgroundColor":I
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_72

    move v8, v6

    goto :goto_73

    :cond_72
    const/4 v8, -0x1

    :goto_73
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    .line 313
    new-instance v15, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    const/high16 v13, 0x3f800000    # 1.0f

    move-object v8, v15

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p7

    move-object/from16 v12, p6

    move-object/from16 v14, p12

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    iput-object v15, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    .line 315
    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v8

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    .line 316
    move/from16 v8, p11

    iput v8, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    .line 317
    iget-object v9, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/SurfaceControl$Transaction;

    iput-object v9, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskSnapshotSurface;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskSnapshotSurface;

    .line 98
    iget v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mOrientationOnCreation:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 98
    sget-object v0, Lcom/android/server/wm/TaskSnapshotSurface;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;
    .registers 64
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 159
    move-object/from16 v1, p1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v15, v0

    .line 160
    .local v15, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;-><init>()V

    move-object v14, v0

    .line 161
    .local v14, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v12

    .line 162
    .local v12, "session":Landroid/view/IWindowSession;
    invoke-virtual {v14, v12}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setSession(Landroid/view/IWindowSession;)V

    .line 163
    new-instance v40, Landroid/view/SurfaceControl;

    invoke-direct/range {v40 .. v40}, Landroid/view/SurfaceControl;-><init>()V

    .line 164
    .local v40, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v9, "tmpRect":Landroid/graphics/Rect;
    new-instance v11, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v11}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    .line 166
    .local v11, "tmpCutout":Landroid/view/DisplayCutout$ParcelableWrapper;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    .line 168
    .local v10, "tmpFrame":Landroid/graphics/Rect;
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v26, "tmpContentInsets":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 170
    .local v28, "tmpStableInsets":Landroid/graphics/Rect;
    new-instance v13, Landroid/view/InsetsState;

    invoke-direct {v13}, Landroid/view/InsetsState;-><init>()V

    .line 171
    .local v13, "mTmpInsetsState":Landroid/view/InsetsState;
    const/4 v0, 0x0

    new-array v8, v0, [Landroid/view/InsetsSourceControl;

    .line 172
    .local v8, "mTempControls":[Landroid/view/InsetsSourceControl;
    new-instance v31, Landroid/util/MergedConfiguration;

    invoke-direct/range {v31 .. v31}, Landroid/util/MergedConfiguration;-><init>()V

    .line 173
    .local v31, "tmpMergedConfiguration":Landroid/util/MergedConfiguration;
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object v7, v2

    .line 174
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 181
    move-object/from16 v6, p0

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 183
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_2fa

    .line 184
    .local v5, "task":Lcom/android/server/wm/Task;
    const/16 v16, 0x0

    if-nez v5, :cond_86

    .line 185
    :try_start_5f
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaskSnapshotSurface.create: Failed to find task for activity="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 266
    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :catchall_7a
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v8

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    goto/16 :goto_304

    .line 191
    .restart local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_86
    :try_start_86
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_2fa

    if-eqz v17, :cond_be

    :try_start_92
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v17

    .line 192
    .local v18, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v2, v18

    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v19, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_b9

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 193
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 194
    const-string v0, "WindowManager"

    const-string v6, "TaskSnapshotSurface.create: Skip, The activity has child popup"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_7a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 198
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_b9
    move-object/from16 v6, v19

    const/4 v0, 0x0

    const/4 v2, -0x1

    goto :goto_8c

    .line 201
    :cond_be
    nop

    .line 202
    :try_start_bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_2fa

    .line 203
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_fe

    .line 204
    :try_start_c9
    const-string v2, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_f2

    move-object/from16 v19, v8

    .end local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v19, "mTempControls":[Landroid/view/InsetsSourceControl;
    :try_start_d2
    const-string v8, "TaskSnapshotSurface.create: Failed to find top fullscreen for task="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_d2 .. :try_end_e2} :catchall_e6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 266
    .end local v0    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :catchall_e6
    move-exception v0

    move-object/from16 v55, v7

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v56, v19

    goto/16 :goto_304

    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catchall_f2
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v8

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    .end local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    goto/16 :goto_304

    .line 208
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v0    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :cond_fe
    move-object/from16 v19, v8

    .end local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :try_start_100
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v8, v2

    .line 209
    .local v8, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_2c5

    if-nez v8, :cond_11a

    move-object/from16 v20, v0

    move-object/from16 v17, v4

    move-object/from16 v55, v7

    move-object/from16 v57, v8

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v56, v19

    goto/16 :goto_2d4

    .line 214
    :cond_11a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getRotation()I

    move-result v6
    :try_end_126
    .catchall {:try_start_100 .. :try_end_126} :catchall_2ef

    if-eq v2, v6, :cond_12e

    .line 220
    :try_start_128
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z
    :try_end_12e
    .catchall {:try_start_128 .. :try_end_12e} :catchall_e6

    .line 224
    :cond_12e
    :try_start_12e
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    move v6, v2

    .line 225
    .local v6, "sysUiVis":I
    iget-object v2, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 226
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v20, v0

    .end local v0    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .local v20, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v50, v0

    .line 227
    .local v50, "windowFlags":I
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v51, v0

    .line 229
    .local v51, "windowPrivateFlags":I
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 230
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 231
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 232
    const/4 v0, 0x3

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v0

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 234
    const v0, -0x3186e039

    and-int v0, v50, v0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    const/high16 v0, 0x20000

    and-int v0, v51, v0

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 238
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iput-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 239
    const/4 v0, -0x1

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 240
    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 241
    iput v6, v15, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 242
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    move-object/from16 v17, v4

    .end local v4    # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v17, "mainWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    iput v4, v0, Landroid/view/InsetsFlags;->behavior:I

    .line 244
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object v4, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    iput v4, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 246
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 247
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 248
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 249
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 251
    const-string v0, "SnapshotStartingWindow for taskId=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v21, v2

    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v21, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x0

    aput-object v2, v4, v18

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0
    :try_end_1cb
    .catchall {:try_start_12e .. :try_end_1cb} :catchall_2ef

    .line 254
    .local v0, "td":Landroid/app/ActivityManager$TaskDescription;
    if-eqz v0, :cond_1d0

    .line 255
    :try_start_1cd
    invoke-virtual {v7, v0}, Landroid/app/ActivityManager$TaskDescription;->copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_1d0
    .catchall {:try_start_1cd .. :try_end_1d0} :catchall_e6

    .line 257
    :cond_1d0
    :try_start_1d0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v2

    .line 258
    .local v4, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 259
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v48, v2

    .line 261
    .local v48, "currentOrientation":I
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 263
    .local v2, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    move-object/from16 v18, v0

    .end local v0    # "td":Landroid/app/ActivityManager$TaskDescription;
    .local v18, "td":Landroid/app/ActivityManager$TaskDescription;
    new-instance v0, Landroid/view/InsetsState;

    .line 264
    move-object/from16 v22, v4

    .end local v4    # "taskBounds":Landroid/graphics/Rect;
    .local v22, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v8}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v4, v0

    .line 265
    .local v4, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskSnapshotController;->mergeInsetsSources(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 266
    .end local v2    # "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v17    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v18    # "td":Landroid/app/ActivityManager$TaskDescription;
    .end local v20    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    monitor-exit v3
    :try_end_1ff
    .catchall {:try_start_1d0 .. :try_end_1ff} :catchall_2ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 268
    :try_start_202
    iget v0, v14, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v17, 0x8

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v18
    :try_end_20e
    .catch Landroid/os/RemoteException; {:try_start_202 .. :try_end_20e} :catch_251

    const/16 v20, 0x0

    .line 268
    move-object v2, v12

    move-object v3, v14

    move-object v5, v4

    move-object/from16 v52, v22

    .end local v4    # "insetsState":Landroid/view/InsetsState;
    .end local v22    # "taskBounds":Landroid/graphics/Rect;
    .local v5, "insetsState":Landroid/view/InsetsState;
    .local v52, "taskBounds":Landroid/graphics/Rect;
    move v4, v0

    move-object/from16 v53, v5

    .end local v5    # "insetsState":Landroid/view/InsetsState;
    .local v53, "insetsState":Landroid/view/InsetsState;
    move-object v5, v15

    move/from16 v54, v6

    .end local v6    # "sysUiVis":I
    .local v54, "sysUiVis":I
    move/from16 v6, v17

    move-object/from16 v55, v7

    .end local v7    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v55, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    move/from16 v7, v18

    move-object/from16 v57, v8

    move-object/from16 v56, v19

    .end local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v56, "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v57, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    move-object v8, v10

    move-object/from16 v58, v10

    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .local v58, "tmpFrame":Landroid/graphics/Rect;
    move-object v10, v9

    move-object/from16 v59, v12

    .end local v12    # "session":Landroid/view/IWindowSession;
    .local v59, "session":Landroid/view/IWindowSession;
    move-object/from16 v12, v20

    move-object/from16 v60, v14

    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v60, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    move-object/from16 v14, v56

    :try_start_231
    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 271
    .local v0, "res":I
    if-gez v0, :cond_24e

    .line 272
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add snapshot starting window res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catch Landroid/os/RemoteException; {:try_start_231 .. :try_end_24d} :catch_24f

    .line 273
    return-object v16

    .line 277
    .end local v0    # "res":I
    :cond_24e
    goto :goto_264

    .line 275
    :catch_24f
    move-exception v0

    goto :goto_264

    .end local v52    # "taskBounds":Landroid/graphics/Rect;
    .end local v53    # "insetsState":Landroid/view/InsetsState;
    .end local v54    # "sysUiVis":I
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v58    # "tmpFrame":Landroid/graphics/Rect;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .end local v60    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v4    # "insetsState":Landroid/view/InsetsState;
    .restart local v6    # "sysUiVis":I
    .restart local v7    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v22    # "taskBounds":Landroid/graphics/Rect;
    :catch_251
    move-exception v0

    move-object/from16 v53, v4

    move/from16 v54, v6

    move-object/from16 v55, v7

    move-object/from16 v57, v8

    move-object/from16 v58, v10

    move-object/from16 v59, v12

    move-object/from16 v60, v14

    move-object/from16 v56, v19

    move-object/from16 v52, v22

    .line 278
    .end local v4    # "insetsState":Landroid/view/InsetsState;
    .end local v6    # "sysUiVis":I
    .end local v7    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v22    # "taskBounds":Landroid/graphics/Rect;
    .restart local v52    # "taskBounds":Landroid/graphics/Rect;
    .restart local v53    # "insetsState":Landroid/view/InsetsState;
    .restart local v54    # "sysUiVis":I
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v58    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    .restart local v60    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    :goto_264
    new-instance v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 279
    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v42

    move-object/from16 v37, v0

    move-object/from16 v38, p0

    move-object/from16 v39, v60

    move-object/from16 v41, p2

    move-object/from16 v43, v55

    move/from16 v44, v54

    move/from16 v45, v50

    move/from16 v46, v51

    move-object/from16 v47, v52

    move-object/from16 v49, v53

    invoke-direct/range {v37 .. v49}, Lcom/android/server/wm/TaskSnapshotSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotSurface$Window;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$TaskSnapshot;Ljava/lang/CharSequence;Landroid/app/ActivityManager$TaskDescription;IIILandroid/graphics/Rect;ILandroid/view/InsetsState;)V

    move-object v2, v0

    .line 281
    .local v2, "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    move-object/from16 v4, v60

    .end local v60    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->setOuter(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 283
    :try_start_287
    iget v0, v4, Lcom/android/server/wm/TaskSnapshotSurface$Window;->mSeq:I

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, -0x1

    sget-object v35, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceSize:Landroid/graphics/Point;

    sget-object v36, Lcom/android/server/wm/TaskSnapshotSurface;->sTmpSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_297
    .catch Landroid/os/RemoteException; {:try_start_287 .. :try_end_297} :catch_2b4

    move-object v6, v15

    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v6, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v15, v59

    move-object/from16 v16, v4

    move/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v25, v58

    move-object/from16 v27, v9

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    move-object/from16 v32, v40

    move-object/from16 v33, v13

    move-object/from16 v34, v56

    :try_start_2ae
    invoke-interface/range {v15 .. v36}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/graphics/Point;Landroid/view/SurfaceControl;)I
    :try_end_2b1
    .catch Landroid/os/RemoteException; {:try_start_2ae .. :try_end_2b1} :catch_2b2

    .line 289
    goto :goto_2b6

    .line 287
    :catch_2b2
    move-exception v0

    goto :goto_2b6

    .end local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_2b4
    move-exception v0

    move-object v6, v15

    .line 291
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :goto_2b6
    move-object/from16 v3, v53

    move-object/from16 v7, v58

    .end local v53    # "insetsState":Landroid/view/InsetsState;
    .end local v58    # "tmpFrame":Landroid/graphics/Rect;
    .local v3, "insetsState":Landroid/view/InsetsState;
    .local v7, "tmpFrame":Landroid/graphics/Rect;
    invoke-static {v7, v3}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v0

    .line 292
    .local v0, "systemBarInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v0}, Lcom/android/server/wm/TaskSnapshotSurface;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 293
    invoke-direct {v2}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSnapshot()V

    .line 294
    return-object v2

    .line 209
    .end local v2    # "snapshotSurface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v3    # "insetsState":Landroid/view/InsetsState;
    .end local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v48    # "currentOrientation":I
    .end local v50    # "windowFlags":I
    .end local v51    # "windowPrivateFlags":I
    .end local v52    # "taskBounds":Landroid/graphics/Rect;
    .end local v54    # "sysUiVis":I
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .local v4, "mainWindow":Lcom/android/server/wm/WindowState;
    .local v5, "task":Lcom/android/server/wm/Task;
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :cond_2c5
    move-object/from16 v20, v0

    move-object/from16 v17, v4

    move-object/from16 v55, v7

    move-object/from16 v57, v8

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v56, v19

    .line 210
    .end local v0    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .local v4, "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v7, "tmpFrame":Landroid/graphics/Rect;
    .restart local v17    # "mainWindow":Lcom/android/server/wm/WindowState;
    .restart local v20    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :goto_2d4
    :try_start_2d4
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskSnapshotSurface.create: Failed to find main window for activity="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v3
    :try_end_2eb
    .catchall {:try_start_2d4 .. :try_end_2eb} :catchall_309

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    .line 266
    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v17    # "mainWindow":Lcom/android/server/wm/WindowState;
    .end local v20    # "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v57    # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    :catchall_2ef
    move-exception v0

    move-object/from16 v55, v7

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    move-object/from16 v56, v19

    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v7, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    goto :goto_304

    .end local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .end local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v59    # "session":Landroid/view/IWindowSession;
    .local v7, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v8, "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v10    # "tmpFrame":Landroid/graphics/Rect;
    .restart local v12    # "session":Landroid/view/IWindowSession;
    .restart local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catchall_2fa
    move-exception v0

    move-object/from16 v55, v7

    move-object/from16 v56, v8

    move-object v7, v10

    move-object/from16 v59, v12

    move-object v4, v14

    move-object v6, v15

    .end local v8    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .end local v10    # "tmpFrame":Landroid/graphics/Rect;
    .end local v12    # "session":Landroid/view/IWindowSession;
    .end local v14    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .end local v15    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "window":Lcom/android/server/wm/TaskSnapshotSurface$Window;
    .restart local v6    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .local v7, "tmpFrame":Landroid/graphics/Rect;
    .restart local v55    # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v56    # "mTempControls":[Landroid/view/InsetsSourceControl;
    .restart local v59    # "session":Landroid/view/IWindowSession;
    :goto_304
    :try_start_304
    monitor-exit v3
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_309

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_309
    move-exception v0

    goto :goto_304
.end method

.method private drawSizeMatchSnapshot()V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 374
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 376
    return-void
.end method

.method private drawSizeMismatchSnapshot()V
    .registers 11

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 383
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    .line 386
    .local v1, "session":Landroid/view/SurfaceSession;
    nop

    .line 387
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 388
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 386
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 391
    .local v2, "aspectRatioMismatch":Z
    :goto_3d
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - task-snapshot-surface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 393
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 394
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 395
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 396
    const-string v4, "TaskSnapshotSurface.drawSizeMismatchSnapshot"

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 397
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 398
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 399
    .local v3, "surface":Landroid/view/Surface;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 404
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 405
    if-eqz v2, :cond_c3

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotCrop()Landroid/graphics/Rect;

    move-result-object v4

    .line 408
    .local v4, "crop":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskSnapshotSurface;->calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 409
    .local v5, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 410
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 411
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 412
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 413
    .end local v4    # "crop":Landroid/graphics/Rect;
    goto :goto_e0

    .line 414
    .end local v5    # "frame":Landroid/graphics/Rect;
    :cond_c3
    const/4 v5, 0x0

    .line 415
    .restart local v5    # "frame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 416
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 417
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 421
    :goto_e0
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpSnapshotSize:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpDstFrame:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 422
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshotMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTmpFloat9:[F

    invoke-virtual {v4, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 424
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 425
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 426
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 428
    if-eqz v2, :cond_11d

    .line 429
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4

    .line 430
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/TaskSnapshotSurface;->drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 431
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 434
    .end local v4    # "c":Landroid/graphics/Canvas;
    :cond_11d
    return-void

    .line 380
    .end local v0    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v1    # "session":Landroid/view/SurfaceSession;
    .end local v2    # "aspectRatioMismatch":Z
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v5    # "frame":Landroid/graphics/Rect;
    :cond_11e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mSurface does not hold a valid surface."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawSnapshot()V
    .registers 10

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 352
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .local v0, "protoLogParam0":Z
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x76b023e9

    const/4 v5, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v2, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .end local v0    # "protoLogParam0":Z
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    if-eqz v0, :cond_29

    .line 358
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_2c

    .line 360
    :cond_29
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->drawSizeMatchSnapshot()V

    .line 362
    :goto_2c
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    .line 364
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHasDrawn:Z

    .line 365
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 366
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotSurface;->reportDrawn()V

    .line 369
    iput-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 370
    return-void

    .line 365
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportDrawn()V
    .registers 4

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 506
    goto :goto_a

    .line 504
    :catch_9
    move-exception v0

    .line 507
    :goto_a
    return-void
.end method


# virtual methods
.method calculateSnapshotCrop()Landroid/graphics/Rect;
    .registers 10

    .line 443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 447
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 448
    .local v2, "scaleX":F
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 449
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 453
    .local v4, "scaleY":F
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    move v5, v3

    .line 454
    .local v5, "isTop":Z
    :goto_5c
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 455
    if-eqz v5, :cond_64

    goto :goto_69

    :cond_64
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_69
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 454
    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/graphics/Rect;->inset(IIII)V

    .line 458
    return-object v0
.end method

.method calculateSnapshotFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "crop"    # Landroid/graphics/Rect;

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 469
    .local v0, "scaleX":F
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 470
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 473
    .local v1, "scaleY":F
    new-instance v2, Landroid/graphics/Rect;

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 475
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 479
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 480
    return-object v2
.end method

.method drawBackgroundAndBars(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->getStatusBarColorViewHeight()I

    move-result v2

    .line 486
    .local v2, "statusBarHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_16

    move v3, v5

    goto :goto_17

    :cond_16
    move v3, v6

    .line 487
    .local v3, "fillHorizontally":Z
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v7, :cond_20

    goto :goto_21

    :cond_20
    move v5, v6

    :goto_21
    move v4, v5

    .line 488
    .local v4, "fillVertically":Z
    if-eqz v3, :cond_4e

    .line 489
    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v5

    iget v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mStatusBarColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    const/16 v6, 0xff

    if-ne v5, v6, :cond_33

    int-to-float v5, v2

    goto :goto_34

    :cond_33
    const/4 v5, 0x0

    :goto_34
    move v8, v5

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v9, v5

    if-eqz v4, :cond_41

    .line 491
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move v10, v5

    goto :goto_47

    .line 492
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move v10, v5

    :goto_47
    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 489
    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 495
    :cond_4e
    if-eqz v4, :cond_69

    .line 496
    const/4 v13, 0x0

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 498
    :cond_69
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 499
    return-void
.end method

.method public remove()V
    .registers 13

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 324
    .local v1, "now":J
    iget-boolean v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_47

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x1c2

    cmp-long v3, v6, v8

    if-gez v3, :cond_47

    .line 325
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$-OevXHSXgaSE351ZqRnMoA024MM;-><init>(Lcom/android/server/wm/TaskSnapshotSurface;)V

    iget-wide v10, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    add-long/2addr v10, v8

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 326
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v3, :cond_42

    iget-wide v6, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mShownTime:J

    sub-long v6, v1, v6

    .local v6, "protoLogParam0":J
    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x775bba9f

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v3, v8, v9, v5, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 329
    .end local v6    # "protoLogParam0":J
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 331
    .end local v1    # "now":J
    :cond_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 333
    :try_start_4b
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x182c008d

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mWindow:Lcom/android/server/wm/TaskSnapshotSurface$Window;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_61} :catch_62

    .line 337
    goto :goto_63

    .line 335
    :catch_62
    move-exception v0

    .line 338
    :goto_63
    return-void

    .line 331
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mFrame:Landroid/graphics/Rect;

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v0, 0x1

    :goto_32
    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSizeMismatch:Z

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotSurface;->mSystemBarBackgroundPainter:Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 347
    return-void
.end method
