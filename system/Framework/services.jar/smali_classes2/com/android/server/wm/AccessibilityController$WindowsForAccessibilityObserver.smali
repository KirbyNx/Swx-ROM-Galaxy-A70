.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mDisplayId:I

.field private final mEmbeddedDisplayIdList:Landroid/util/IntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 6
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I
    .param p3, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1235
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1237
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1239
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1241
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1243
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1255
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    .line 1260
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1261
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1262
    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 1263
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1264
    nop

    .line 1265
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1267
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V
    .registers 6
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "regionInScreen"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1517
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .local p3, "tokenOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1518
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1519
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 1520
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1522
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1525
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1526
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_14

    .line 1527
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1526
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1529
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 6
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1495
    .local v0, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1498
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1499
    .local v1, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {p1, v1}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1501
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {v0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 1513
    return-void
.end method

.method private findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1574
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1575
    .local v0, "displayParentWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_c

    .line 1576
    const/4 v1, 0x0

    return-object v1

    .line 1578
    :cond_c
    move-object v1, v0

    .line 1579
    .local v1, "candidate":Lcom/android/server/wm/WindowState;
    :goto_d
    if-eqz v1, :cond_19

    .line 1580
    move-object v0, v1

    .line 1581
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_d

    .line 1583
    :cond_19
    return-object v0
.end method

.method private getTopFocusWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1587
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private static isReportedWindowType(I)Z
    .registers 2
    .param p0, "windowType"    # I

    .line 1532
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method static synthetic lambda$populateVisibleWindowsOnScreenLocked$1(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "tempWindowStatesList"    # Ljava/util/List;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1552
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1553
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_9
    return-void
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1545
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    .local v0, "tempWindowStatesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1547
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_12

    .line 1548
    return-void

    .line 1551
    :cond_12
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1558
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1568
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 1569
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1568
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1571
    .end local v2    # "i":I
    :cond_3a
    return-void
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)V
    .registers 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "regionInScreen"    # Landroid/graphics/Region;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1448
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_59

    .line 1454
    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1458
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_59

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_40

    .line 1468
    :cond_25
    new-instance v0, Landroid/graphics/Region;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1469
    .local v0, "displayRegion":Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 1470
    .local v1, "tapExcludeRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 1471
    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1473
    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1477
    .end local v0    # "displayRegion":Landroid/graphics/Region;
    .end local v1    # "tapExcludeRegion":Landroid/graphics/Region;
    :goto_40
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1478
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_50

    .line 1481
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_59

    .line 1482
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v1

    if-nez v1, :cond_59

    .line 1486
    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    .line 1490
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_59
    :goto_59
    return-void
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)Z
    .registers 11
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "regionInScreen"    # Landroid/graphics/Region;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1410
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 1411
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1412
    return v1

    .line 1415
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 1416
    return v3

    .line 1420
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1421
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2b

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1422
    return v1

    .line 1428
    :cond_2b
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3c

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_3c

    .line 1430
    return v1

    .line 1434
    :cond_3c
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1435
    return v1

    .line 1439
    :cond_43
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1440
    return v3

    .line 1443
    :cond_4e
    return v1
.end method


# virtual methods
.method addEmbeddedDisplay(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1290
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    if-ne p1, v0, :cond_5

    .line 1291
    return-void

    .line 1293
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1294
    return-void
.end method

.method public computeChangedWindows(Z)V
    .registers 23
    .param p1, "forceSend"    # Z

    .line 1306
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1308
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v3, 0x0

    .line 1310
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getTopFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_175

    .line 1315
    .local v0, "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_21

    :try_start_17
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1399
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    :catchall_1c
    move-exception v0

    move/from16 v6, p1

    goto/16 :goto_17a

    .line 1317
    .restart local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    :cond_21
    :try_start_21
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_175

    .line 1318
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v5, :cond_32

    .line 1319
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1321
    :cond_32
    :try_start_32
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1322
    .local v6, "display":Landroid/view/Display;
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1323
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 1324
    .local v7, "screenWidth":I
    iget-object v8, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 1326
    .local v8, "screenHeight":I
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1327
    .local v9, "unaccountedSpace":Landroid/graphics/Region;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 1329
    iget-object v10, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1330
    .local v10, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {v1, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1331
    iget-object v11, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1332
    .local v11, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 1334
    const/4 v12, 0x0

    .line 1336
    .local v12, "focusedWindowAdded":Z
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 1337
    .local v13, "visibleWindowCount":I
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
    :try_end_5d
    .catchall {:try_start_32 .. :try_end_5d} :catchall_175

    .line 1340
    .local v14, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v15, v13, -0x1

    .local v15, "i":I
    :goto_5f
    if-ltz v15, :cond_c1

    .line 1341
    :try_start_61
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v16

    .line 1342
    .local v17, "windowState":Lcom/android/server/wm/WindowState;
    new-instance v16, Landroid/graphics/Region;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Region;-><init>()V
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_ba

    move-object/from16 v18, v16

    .line 1343
    .local v18, "regionInScreen":Landroid/graphics/Region;
    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    .end local v18    # "regionInScreen":Landroid/graphics/Region;
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    .local v6, "regionInScreen":Landroid/graphics/Region;
    .local v16, "topFocusedWindowToken":Landroid/os/IBinder;
    .local v17, "display":Landroid/view/Display;
    :try_start_78
    invoke-direct {v1, v3, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    .line 1345
    invoke-direct {v1, v3, v6, v9, v14}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)Z

    move-result v18

    if-eqz v18, :cond_92

    .line 1347
    invoke-static {v3, v6, v2, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V

    .line 1348
    invoke-direct {v1, v3, v6, v9, v14}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)V

    .line 1350
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v18

    or-int v12, v12, v18

    move-object/from16 v19, v3

    move-object/from16 v18, v6

    goto :goto_aa

    .line 1351
    :cond_92
    move-object/from16 v18, v6

    .end local v6    # "regionInScreen":Landroid/graphics/Region;
    .restart local v18    # "regionInScreen":Landroid/graphics/Region;
    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    invoke-static {v3, v6}, Lcom/android/server/wm/AccessibilityController;->isUntouchableNavigationBar(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 1356
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController;->getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v19, v3

    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    .local v19, "windowState":Lcom/android/server/wm/WindowState;
    sget-object v3, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v6, v9, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_aa

    .line 1351
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v3    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a8
    move-object/from16 v19, v3

    .line 1360
    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :goto_aa
    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b3

    if-eqz v12, :cond_b3

    .line 1361
    goto :goto_c5

    .line 1340
    .end local v18    # "regionInScreen":Landroid/graphics/Region;
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_b3
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    goto :goto_5f

    .line 1399
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    .end local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v12    # "focusedWindowAdded":Z
    .end local v13    # "visibleWindowCount":I
    .end local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v17    # "display":Landroid/view/Display;
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_ba
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v6, p1

    goto/16 :goto_17a

    .line 1340
    .restart local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v6, "display":Landroid/view/Display;
    .restart local v7    # "screenWidth":I
    .restart local v8    # "screenHeight":I
    .restart local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v12    # "focusedWindowAdded":Z
    .restart local v13    # "visibleWindowCount":I
    .restart local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v15    # "i":I
    :cond_c1
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    .line 1365
    .end local v3    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v6    # "display":Landroid/view/Display;
    .end local v15    # "i":I
    .restart local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v17    # "display":Landroid/view/Display;
    :goto_c5
    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_cd
    if-ltz v3, :cond_ef

    .line 1366
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ShellRoot;

    invoke-virtual {v6}, Lcom/android/server/wm/ShellRoot;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v6

    .line 1367
    .local v6, "info":Landroid/view/WindowInfo;
    if-nez v6, :cond_de

    .line 1368
    goto :goto_ec

    .line 1370
    :cond_de
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v15

    iput v15, v6, Landroid/view/WindowInfo;->layer:I

    .line 1371
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    iget-object v15, v6, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v6    # "info":Landroid/view/WindowInfo;
    :goto_ec
    add-int/lit8 v3, v3, -0x1

    goto :goto_cd

    .line 1376
    .end local v3    # "i":I
    :cond_ef
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1377
    .local v3, "windowCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f4
    if-ge v6, v3, :cond_13f

    .line 1378
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowInfo;

    .line 1379
    .local v15, "window":Landroid/view/WindowInfo;
    move/from16 v18, v3

    .end local v3    # "windowCount":I
    .local v18, "windowCount":I
    iget-object v3, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 1380
    const/4 v3, 0x0

    iput-object v3, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1382
    :cond_109
    iget-object v3, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_136

    .line 1383
    iget-object v3, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1384
    .local v3, "childTokenCount":I
    add-int/lit8 v19, v3, -0x1

    move/from16 v20, v3

    move/from16 v3, v19

    .local v3, "j":I
    .local v20, "childTokenCount":I
    :goto_119
    if-ltz v3, :cond_133

    .line 1385
    move-object/from16 v19, v5

    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v19, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12e

    .line 1386
    iget-object v5, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1384
    :cond_12e
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v5, v19

    goto :goto_119

    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_133
    move-object/from16 v19, v5

    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_138

    .line 1382
    .end local v3    # "j":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v20    # "childTokenCount":I
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_136
    move-object/from16 v19, v5

    .line 1377
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "window":Landroid/view/WindowInfo;
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_138
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move-object/from16 v5, v19

    goto :goto_f4

    .end local v18    # "windowCount":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v3, "windowCount":I
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_13f
    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 1393
    .end local v3    # "windowCount":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "i":I
    .restart local v18    # "windowCount":I
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1394
    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 1397
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 1398
    .local v3, "topFocusedDisplayId":I
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5
    :try_end_15b
    .catchall {:try_start_78 .. :try_end_15b} :catchall_16f

    .line 1399
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    .end local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v12    # "focusedWindowAdded":Z
    .end local v13    # "visibleWindowCount":I
    .end local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v17    # "display":Landroid/view/Display;
    .end local v18    # "windowCount":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v5, "topFocusedWindowToken":Landroid/os/IBinder;
    :try_start_15b
    monitor-exit v4
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_16a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1400
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    move/from16 v6, p1

    invoke-interface {v0, v6, v3, v5, v2}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V

    .line 1404
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1405
    return-void

    .line 1399
    .end local v3    # "topFocusedDisplayId":I
    :catchall_16a
    move-exception v0

    move/from16 v6, p1

    move-object v3, v5

    goto :goto_17a

    .end local v5    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_16f
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v3, v16

    goto :goto_17a

    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_175
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v16, v3

    :goto_17a
    :try_start_17a
    monitor-exit v4
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_17f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_17f
    move-exception v0

    goto :goto_17a
.end method

.method getAndClearEmbeddedDisplayIdList()Landroid/util/IntArray;
    .registers 3

    .line 1282
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1283
    .local v0, "returnedArray":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 1284
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1286
    return-object v0
.end method

.method public synthetic lambda$computeWindowRegionInScreen$0$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "outRegion"    # Landroid/graphics/Region;
    .param p4, "rect"    # Landroid/graphics/Rect;

    .line 1503
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1504
    .local v0, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1505
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1507
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1510
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1512
    return-void
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreenLocked$2$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "tempWindowStatesList"    # Ljava/util/List;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1559
    invoke-direct {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1560
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_7

    .line 1561
    return-void

    .line 1564
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1565
    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1567
    :cond_1a
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .registers 4
    .param p1, "forceSend"    # Z

    .line 1270
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1272
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .registers 5

    .line 1275
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1276
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1279
    :cond_10
    return-void
.end method
