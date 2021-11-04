.class Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;,
        Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;,
        Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;
    }
.end annotation


# static fields
.field private static final TABLE_MODE_EVENT_CLOSE:F = 0.0f

.field private static final TABLE_MODE_EVENT_HALF_FOLDED:F = 2.0f

.field private static final TABLE_MODE_EVENT_OPEN:F = 3.0f

.field private static final TABLE_MODE_EVENT_TENT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "DisplayFoldController"

.field static final TENT_MODE_ALL_ROTATION:I = 0x0

.field static final TENT_MODE_LAND_ONLY:I = 0x1

.field static final TENT_MODE_UNKNOWN:I = -0x1


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field private mFlexTentMode:I

.field private mFocusedApp:Ljava/lang/String;

.field private mFoldLPMSensor:Landroid/hardware/Sensor;

.field private mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

.field private mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

.field private mFoldState:I

.field private final mFoldStateChangedCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFolded:Ljava/lang/Boolean;

.field private final mFoldedArea:Landroid/graphics/Rect;

.field private mFoldingStateSensor:Landroid/hardware/Sensor;

.field mForcedDeviceFolded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsTableModeEnabled:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideFoldedArea:Landroid/graphics/Rect;

.field private final mPolicy:Lcom/android/server/policy/PhoneWindowManager;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTentMode:Z

.field private final mTentModeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/ITentModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy;Landroid/hardware/SensorManager;)V
    .registers 11
    .param p1, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p2, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p3, "displayId"    # I
    .param p4, "foldedArea"    # Landroid/graphics/Rect;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p7, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 87
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 90
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mLock:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DisplayFoldController;->mForcedDeviceFolded:Z

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldingStateSensor:Landroid/hardware/Sensor;

    .line 412
    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    .line 520
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    .line 588
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    .line 591
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mTempCallbacks:Ljava/util/ArrayList;

    .line 682
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    .line 730
    iput v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFlexTentMode:I

    .line 731
    iput-boolean v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z

    .line 732
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    .line 787
    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensor:Landroid/hardware/Sensor;

    .line 788
    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    .line 105
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 106
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 107
    iput p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 109
    iput-object p5, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 112
    move-object v0, p6

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 113
    iput-object p7, p0, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/DisplayFoldController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;

    .line 72
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/DisplayFoldController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;
    .param p1, "x1"    # I

    .line 72
    iput p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/DisplayFoldController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;
    .param p1, "x1"    # I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->sendFoldStateChangedEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/DisplayFoldController;)Lcom/android/server/policy/PhoneWindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;
    .param p1, "x1"    # Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->onCallbackDied(Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/DisplayFoldController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DisplayFoldController;

    .line 72
    iget-boolean v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z

    return v0
.end method

.method private applyTentModeIfNeeded(Z)Z
    .registers 8
    .param p1, "folded"    # Z

    .line 735
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate()Z

    move-result v0

    .line 736
    .local v0, "isAwake":Z
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 737
    .local v1, "rotation":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/4 v4, 0x3

    if-ne v1, v4, :cond_16

    goto :goto_18

    :cond_16
    move v4, v2

    goto :goto_19

    :cond_18
    :goto_18
    move v4, v3

    .line 740
    .local v4, "isLandscape":Z
    :goto_19
    if-nez p1, :cond_2e

    if-eqz v0, :cond_2e

    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldingStateSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_2e

    iget-boolean v5, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    if-eqz v5, :cond_2e

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mFlexTentMode:I

    if-eqz v5, :cond_2d

    if-ne v5, v3, :cond_2e

    if-eqz v4, :cond_2e

    :cond_2d
    move v2, v3

    .line 745
    .local v2, "tentMode":Z
    :cond_2e
    invoke-virtual {p0, v2}, Lcom/android/server/policy/DisplayFoldController;->setTentMode(Z)V

    .line 746
    return v2
.end method

.method static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 347
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;ILcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;ILcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/policy/DisplayFoldController;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 351
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 353
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 354
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/hardware/display/DisplayManagerInternal;

    .line 355
    .local v9, "displayService":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, "configFoldedArea":Ljava/lang/String;
    if-eqz v10, :cond_2b

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2b

    .line 361
    :cond_25
    invoke-static {v10}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    move-object v11, v1

    .local v1, "foldedArea":Landroid/graphics/Rect;
    goto :goto_31

    .line 359
    .end local v1    # "foldedArea":Landroid/graphics/Rect;
    :cond_2b
    :goto_2b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v1

    .line 364
    .local v11, "foldedArea":Landroid/graphics/Rect;
    :goto_31
    new-instance v12, Lcom/android/server/policy/DisplayFoldController;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 365
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, v12

    move-object v3, v9

    move v4, p1

    move-object v5, v11

    move-object v7, p2

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/policy/DisplayFoldController;-><init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy;Landroid/hardware/SensorManager;)V

    .line 364
    return-object v12
.end method

.method private createFoldLPMSensorListener()Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;
    .registers 3

    .line 791
    new-instance v0, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;-><init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$1;)V

    return-object v0
.end method

.method private createFoldSensorEventListener()Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;
    .registers 3

    .line 445
    new-instance v0, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;-><init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$1;)V

    return-object v0
.end method

.method static createWithFoldingSensor(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/policy/DisplayFoldController;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;ILcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v1

    .line 417
    .local v1, "result":Lcom/android/server/policy/DisplayFoldController;
    iget-object v2, v1, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x1009f

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 418
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 419
    const-string v0, "DisplayFoldController"

    const-string v3, "Failed get FoldSensor!! Can\'t listen change of FoldStatus!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v1

    .line 422
    :cond_1c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, v1, Lcom/android/server/policy/DisplayFoldController;->mFoldingStateSensor:Landroid/hardware/Sensor;

    .line 423
    invoke-direct {v1}, Lcom/android/server/policy/DisplayFoldController;->createFoldSensorEventListener()Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    .line 428
    invoke-direct {v1}, Lcom/android/server/policy/DisplayFoldController;->registerFoldingSensorListener()Z

    .line 441
    return-object v1
.end method

.method static createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 319
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 320
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 321
    .local v1, "proxSensor":Landroid/hardware/Sensor;
    if-nez v1, :cond_12

    .line 322
    const/4 v2, 0x0

    return-object v2

    .line 325
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v2

    .line 326
    .local v2, "result":Lcom/android/server/policy/DisplayFoldController;
    new-instance v3, Lcom/android/server/policy/DisplayFoldController$1;

    invoke-direct {v3, v2}, Lcom/android/server/policy/DisplayFoldController$1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 338
    return-object v2
.end method

.method private deliverFoldStateChangedEvent(I)V
    .registers 7
    .param p1, "foldState"    # I

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering FoldStateChangedEvent: foldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFoldController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 668
    :try_start_19
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 669
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 670
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v1, :cond_37

    .line 671
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 673
    .end local v2    # "i":I
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_4f

    .line 676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, v1, :cond_49

    .line 677
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->notifyFoldStateChangedEventAsync(I)V

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 679
    .end local v0    # "i":I
    :cond_49
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    return-void

    .line 673
    .end local v1    # "count":I
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private static synthetic lambda$setDeviceFolded$1()V
    .registers 0

    .line 221
    return-void
.end method

.method private onCallbackDied(Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    .line 649
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 650
    :try_start_3
    const-string v1, "DisplayFoldController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnregisterFoldStateChangedCallback pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " because CallbackDied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 653
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private registerFoldLPMSensorListener()V
    .registers 6

    .line 795
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    .line 796
    return-void

    .line 799
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    monitor-enter v0

    .line 800
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    iget-boolean v1, v1, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->mEnabled:Z

    if-eqz v1, :cond_10

    .line 801
    monitor-exit v0

    return-void

    .line 803
    :cond_10
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 805
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    iput-boolean v1, v2, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->mEnabled:Z

    .line 806
    if-eqz v1, :cond_3e

    .line 807
    const-string v2, "DisplayFoldController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerFoldLPMSensorListener success! caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 809
    :cond_3e
    const-string v2, "DisplayFoldController"

    const-string/jumbo v3, "registerFoldLPMSensorListener fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v1    # "result":Z
    :goto_46
    monitor-exit v0

    .line 812
    return-void

    .line 811
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private registerFoldingSensorListener()Z
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldingStateSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 451
    .local v0, "result":Z
    const-string v1, "DisplayFoldController"

    if-eqz v0, :cond_2a

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerFoldSensorEventListener success! caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 454
    :cond_2a
    const-string/jumbo v2, "registerFoldSensorEventListener fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_30
    return v0
.end method

.method private sendFoldStateChangedEvent(I)V
    .registers 4
    .param p1, "foldState"    # I

    .line 657
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;-><init>(Lcom/android/server/policy/DisplayFoldController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method

.method private unregisterFoldLPMSensorListener()V
    .registers 5

    .line 815
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    .line 816
    return-void

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    monitor-enter v0

    .line 820
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    iget-boolean v1, v1, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->mEnabled:Z

    if-nez v1, :cond_10

    .line 821
    monitor-exit v0

    return-void

    .line 823
    :cond_10
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 824
    const-string v1, "DisplayFoldController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterFoldLPMSensorListener success! caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldLPMSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/DisplayFoldController$FoldLPMSensorEventListener;->mEnabled:Z

    .line 826
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private unregisterFoldingSensorListener()V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterFoldingStateListener success! caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFoldController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method private updateFoldSensorListenerLw()V
    .registers 10

    .line 476
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 477
    .local v0, "screenOnEarly":Z
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 478
    .local v1, "awake":Z
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 479
    .local v2, "keyguardDrawComplete":Z
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 480
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 481
    .local v3, "windowManagerDrawComplete":Z
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2e

    move v4, v5

    goto :goto_2f

    :cond_2e
    move v4, v6

    .line 483
    .local v4, "isLidFolded":Z
    :goto_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFoldSensorListenerLw, isLidFolded="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", screenOnEarly="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", awake="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", foldSensorEventListener.Enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iget-boolean v8, v8, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->mEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", keyguardDrawComplete="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", windowManagerDrawComplete="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mIsTableModeEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mForcedDeviceFolded="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/policy/DisplayFoldController;->mForcedDeviceFolded:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DisplayFoldController"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v7, 0x1

    .line 496
    .local v7, "disable":Z
    if-nez v4, :cond_aa

    if-eqz v0, :cond_aa

    if-eqz v1, :cond_aa

    if-eqz v2, :cond_aa

    if-eqz v3, :cond_aa

    iget-boolean v8, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    if-eqz v8, :cond_aa

    iget-boolean v8, p0, Lcom/android/server/policy/DisplayFoldController;->mForcedDeviceFolded:Z

    if-nez v8, :cond_aa

    .line 498
    const/4 v7, 0x0

    .line 500
    iget-object v8, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iget-boolean v8, v8, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->mEnabled:Z

    if-nez v8, :cond_aa

    .line 501
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldController;->registerFoldingSensorListener()Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 502
    iget-object v8, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iput-boolean v5, v8, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->mEnabled:Z

    .line 510
    :cond_aa
    if-eqz v7, :cond_b9

    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iget-boolean v5, v5, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->mEnabled:Z

    if-eqz v5, :cond_b9

    .line 511
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldController;->unregisterFoldingSensorListener()V

    .line 512
    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    iput-boolean v6, v5, Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;->mEnabled:Z

    .line 517
    :cond_b9
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayFoldController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFolded="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/DisplayFoldController;->isFolded()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayFoldListeners: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method finishedGoingToSleep()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    .line 119
    return-void
.end method

.method finishedWakingUp()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    .line 123
    return-void
.end method

.method getFoldState()I
    .registers 2

    .line 879
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    return v0
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object v0

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method isFolded()Z
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 374
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 376
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method isTableMode()Z
    .registers 3

    .line 585
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public synthetic lambda$registerDisplayFoldListener$2$DisplayFoldController(Landroid/view/IDisplayFoldListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 291
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 294
    goto :goto_d

    .line 292
    :catch_c
    move-exception v0

    .line 295
    :goto_d
    return-void
.end method

.method public synthetic lambda$registerFoldStateChangedCallback$3$DisplayFoldController(Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    .line 643
    nop

    .line 644
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    :goto_d
    invoke-virtual {p1, v0}, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;->notifyFoldStateChangedEventAsync(I)V

    .line 643
    return-void
.end method

.method public synthetic lambda$registerTentModeListener$6$DisplayFoldController(Landroid/view/ITentModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/ITentModeListener;

    .line 776
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-boolean v1, p0, Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z

    invoke-interface {p1, v0, v1}, Landroid/view/ITentModeListener;->onTentModeChanged(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 779
    goto :goto_9

    .line 777
    :catch_8
    move-exception v0

    .line 780
    :goto_9
    return-void
.end method

.method public synthetic lambda$requestDeviceFolded$0$DisplayFoldController(Z)V
    .registers 2
    .param p1, "folded"    # Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method public synthetic lambda$sendFoldStateChangedEvent$4$DisplayFoldController(I)V
    .registers 2
    .param p1, "foldState"    # I

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->deliverFoldStateChangedEvent(I)V

    return-void
.end method

.method public synthetic lambda$setTentMode$5$DisplayFoldController(Z)V
    .registers 6
    .param p1, "tentMode"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 757
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 759
    :try_start_9
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/ITentModeListener;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Landroid/view/ITentModeListener;->onTentModeChanged(IZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 762
    goto :goto_18

    .line 760
    :catch_17
    move-exception v2

    .line 757
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 764
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 765
    return-void
.end method

.method onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    .line 343
    return-void
.end method

.method registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 285
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 287
    return-void

    .line 289
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$X1Tg0tL6wIlMCEUgLwL50cmMFEY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$X1Tg0tL6wIlMCEUgLwL50cmMFEY;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method registerFoldStateChangedCallback(Landroid/view/IFoldStateChangedCallback;I)V
    .registers 8
    .param p1, "callback"    # Landroid/view/IFoldStateChangedCallback;
    .param p2, "callingPid"    # I

    .line 620
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 626
    new-instance v1, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;-><init>(Lcom/android/server/policy/DisplayFoldController;ILandroid/view/IFoldStateChangedCallback;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_57

    .line 629
    .local v1, "record":Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;
    :try_start_10
    invoke-interface {p1}, Landroid/view/IFoldStateChangedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 630
    .local v2, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_48
    .catchall {:try_start_10 .. :try_end_18} :catchall_57

    .line 634
    .end local v2    # "binder":Landroid/os/IBinder;
    nop

    .line 636
    :try_start_19
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldStateChangedCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    const-string v2, "DisplayFoldController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerFoldStateChangedCallback pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v2, :cond_3b

    .line 640
    monitor-exit v0

    return-void

    .line 643
    :cond_3b
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;-><init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    nop

    .end local v1    # "record":Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;
    monitor-exit v0

    .line 646
    return-void

    .line 631
    .restart local v1    # "record":Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;
    :catch_48
    move-exception v2

    .line 633
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/policy/DisplayFoldController;
    .end local p1    # "callback":Landroid/view/IFoldStateChangedCallback;
    .end local p2    # "callingPid":I
    throw v3

    .line 622
    .end local v1    # "record":Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/policy/DisplayFoldController;
    .restart local p1    # "callback":Landroid/view/IFoldStateChangedCallback;
    .restart local p2    # "callingPid":I
    :cond_4f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IFoldStateChangedCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DisplayFoldController;
    .end local p1    # "callback":Landroid/view/IFoldStateChangedCallback;
    .end local p2    # "callingPid":I
    throw v1

    .line 645
    .restart local p0    # "this":Lcom/android/server/policy/DisplayFoldController;
    .restart local p1    # "callback":Landroid/view/IFoldStateChangedCallback;
    .restart local p2    # "callingPid":I
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_19 .. :try_end_59} :catchall_57

    throw v1
.end method

.method registerTentModeListener(Landroid/view/ITentModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/ITentModeListener;

    .line 773
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 774
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/ITentModeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    return-void
.end method

.method requestDeviceFolded(Z)V
    .registers 4
    .param p1, "folded"    # Z

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;-><init>(Lcom/android/server/policy/DisplayFoldController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method setDeviceFolded(Z)V
    .registers 9
    .param p1, "folded"    # Z

    .line 177
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_b

    .line 178
    return-void

    .line 242
    :cond_b
    if-eqz p1, :cond_69

    .line 244
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .local v0, "foldedArea":Landroid/graphics/Rect;
    goto :goto_22

    .line 246
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 247
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 252
    .restart local v0    # "foldedArea":Landroid/graphics/Rect;
    :goto_22
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 255
    .local v1, "dx":I
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 259
    .local v2, "dy":I
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 260
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 260
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 262
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v5, v1

    neg-int v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 263
    .end local v0    # "foldedArea":Landroid/graphics/Rect;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    goto :goto_7f

    .line 249
    :cond_68
    return-void

    .line 264
    :cond_69
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 265
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 266
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 268
    :goto_7f
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 274
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_98
    if-ge v1, v0, :cond_ac

    .line 276
    :try_start_9a
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayFoldListener;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a7} :catch_a8

    .line 279
    goto :goto_a9

    .line 277
    :catch_a8
    move-exception v2

    .line 274
    :goto_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 281
    .end local v1    # "i":I
    :cond_ac
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 282
    return-void
.end method

.method setForcedTableMode(Z)V
    .registers 5
    .param p1, "tableMode"    # Z

    .line 709
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_3
    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    .line 712
    .local v1, "lastFoldState":I
    if-eqz p1, :cond_b

    .line 713
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    goto :goto_e

    .line 715
    :cond_b
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    .line 718
    :goto_e
    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    if-eq v1, v2, :cond_17

    .line 719
    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    invoke-direct {p0, v2}, Lcom/android/server/policy/DisplayFoldController;->sendFoldStateChangedEvent(I)V

    .line 721
    .end local v1    # "lastFoldState":I
    :cond_17
    monitor-exit v0

    .line 722
    return-void

    .line 721
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "area"    # Landroid/graphics/Rect;

    .line 303
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    return-void
.end method

.method setTableModeEnabled(Z)V
    .registers 6
    .param p1, "isTableModeEnabled"    # Z

    .line 685
    iget-boolean v0, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    if-ne v0, p1, :cond_5

    .line 686
    return-void

    .line 688
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTableModeEnabled isTableModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFoldController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iput-boolean p1, p0, Lcom/android/server/policy/DisplayFoldController;->mIsTableModeEnabled:Z

    .line 695
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    if-nez p1, :cond_46

    :try_start_23
    iget v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 698
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    .line 699
    invoke-direct {p0, v1}, Lcom/android/server/policy/DisplayFoldController;->sendFoldStateChangedEvent(I)V

    .line 700
    const-string v1, "DisplayFoldController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After setTableModeEnabled, set mFoldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_46
    monitor-exit v0

    .line 706
    return-void

    .line 702
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method setTentMode(Z)V
    .registers 4
    .param p1, "tentMode"    # Z

    .line 750
    iget-boolean v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z

    if-ne v0, p1, :cond_5

    .line 751
    return-void

    .line 753
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/policy/DisplayFoldController;->mTentMode:Z

    .line 755
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;-><init>(Lcom/android/server/policy/DisplayFoldController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    if-nez p1, :cond_16

    .line 768
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldController;->unregisterFoldLPMSensorListener()V

    .line 770
    :cond_16
    return-void
.end method

.method unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IDisplayFoldListener;

    .line 299
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 300
    return-void
.end method

.method unregisterTentModeListener(Landroid/view/ITentModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/ITentModeListener;

    .line 784
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mTentModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 785
    return-void
.end method

.method updateFoldSensorListener()V
    .registers 3

    .line 466
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldingStateSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    .line 468
    return-void

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldSensorEventListener:Lcom/android/server/policy/DisplayFoldController$FoldSensorEventListener;

    monitor-enter v0

    .line 471
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/policy/DisplayFoldController;->updateFoldSensorListenerLw()V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method
