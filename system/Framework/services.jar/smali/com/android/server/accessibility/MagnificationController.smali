.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadId:J

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 605
    new-instance v7, Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 606
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 605
    invoke-direct {p0, v7, p3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V

    .line 609
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V
    .registers 5
    .param p1, "ctx"    # Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 616
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    .line 617
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 618
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 619
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 620
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 67
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 67
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/MagnificationController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 67
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/MagnificationController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 67
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public static synthetic lambda$UxSkaR2uzdX0ekJv4Wtodc8tuMY(Lcom/android/server/accessibility/MagnificationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    return-void
.end method

.method private onScreenTurnedOff()V
    .registers 3

    .line 1103
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;

    .line 1104
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1103
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1105
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1106
    return-void
.end method

.method private resetAllIfNeeded(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .line 1109
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1111
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1113
    .end local v1    # "i":I
    :cond_18
    monitor-exit v0

    .line 1114
    return-void

    .line 1113
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private unregisterCallbackLocked(IZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1140
    if-eqz p2, :cond_7

    .line 1141
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1144
    :cond_7
    const/4 v0, 0x0

    .line 1145
    .local v0, "hasRegister":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1146
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1147
    .local v2, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v0

    .line 1148
    if-eqz v0, :cond_20

    .line 1149
    goto :goto_23

    .line 1145
    .end local v2    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1152
    .end local v1    # "i":I
    :cond_23
    :goto_23
    if-nez v0, :cond_2a

    .line 1153
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 1155
    :cond_2a
    return-void
.end method

.method private unregisterLocked(IZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1117
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1118
    .local v0, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v0, :cond_b

    .line 1119
    return-void

    .line 1121
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1122
    if-eqz p2, :cond_18

    .line 1123
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1125
    :cond_18
    return-void

    .line 1127
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1128
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_26

    .line 1130
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1132
    :goto_26
    return-void
.end method


# virtual methods
.method public getCenterX(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 817
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 819
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 820
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 822
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 823
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getCenterY(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 853
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 854
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 856
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 857
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 987
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 989
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 990
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 992
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    monitor-exit v0

    return v2

    .line 993
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 748
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 750
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 751
    monitor-exit v0

    return-void

    .line 753
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 754
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 766
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 768
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 769
    monitor-exit v0

    return-void

    .line 771
    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 772
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getOffsetX(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 800
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 802
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 803
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 805
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 806
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getOffsetY(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 834
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 836
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 837
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 839
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 840
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPersistedScale()F
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .registers 5
    .param p1, "displayId"    # I

    .line 783
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 785
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_11

    .line 786
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 788
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 789
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isMagnifying(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 709
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 711
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 712
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 714
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 715
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isRegistered(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .line 694
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 696
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 697
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 699
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 700
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public magnificationRegionContains(IFF)Z
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 729
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 731
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 732
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 734
    :cond_10
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 735
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 971
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 973
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 974
    monitor-exit v0

    return-void

    .line 976
    :cond_f
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 977
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 978
    return-void

    .line 977
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 679
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public persistScale()V
    .registers 5

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v1

    .line 1002
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 1004
    .local v2, "userId":I
    new-instance v3, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1010
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/MagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1011
    return-void
.end method

.method public register(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 634
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_13

    .line 635
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/MagnificationController;I)V

    move-object v1, v2

    .line 637
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 641
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 642
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 644
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :cond_2b
    monitor-exit v0

    .line 645
    return-void

    .line 644
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public reset(IZ)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 871
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 873
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 874
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 876
    :cond_10
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 877
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public resetAllIfNeeded(I)V
    .registers 5
    .param p1, "connectionId"    # I

    .line 1043
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1045
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(II)Z

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1047
    .end local v1    # "i":I
    :cond_18
    monitor-exit v0

    .line 1048
    return-void

    .line 1047
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method resetIfNeeded(II)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "connectionId"    # I

    .line 1076
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1078
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1079
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    if-eq p2, v2, :cond_1a

    goto :goto_20

    .line 1082
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1083
    monitor-exit v0

    return v2

    .line 1080
    :cond_20
    :goto_20
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1084
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method resetIfNeeded(IZ)Z
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1058
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1060
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_1a

    .line 1063
    :cond_14
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1064
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1061
    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1065
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public setCenter(IFFZI)Z
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 924
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 925
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 927
    :cond_10
    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v2, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 928
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method setForceShowMagnifiableBounds(IZ)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "show"    # Z

    .line 1088
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1090
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_f

    .line 1091
    monitor-exit v0

    return-void

    .line 1093
    :cond_f
    if-eqz p2, :cond_2d

    .line 1094
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    # getter for: Lcom/android/server/accessibility/MagnificationController$ControllerContext;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->access$600(Lcom/android/server/accessibility/MagnificationController$ControllerContext;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnification_activated"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1096
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.server.accessibility.MagnificationController"

    invoke-static {v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1098
    :cond_2d
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1099
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public setScale(IFFFZI)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 897
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 899
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 900
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 902
    :cond_10
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 903
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 950
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 952
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_10

    .line 953
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 955
    :cond_10
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 956
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setUserId(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1030
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_5

    .line 1031
    return-void

    .line 1033
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    .line 1035
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string/jumbo v1, "mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1163
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 654
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public unregisterAll()V
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 667
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 668
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 670
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    :cond_1b
    monitor-exit v0

    .line 671
    return-void

    .line 670
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
