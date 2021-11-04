.class final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private mGearVrState:I

.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mIGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    .line 72
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "globalAmLock"    # Ljava/lang/Object;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 114
    iput v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    .line 118
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 122
    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 141
    new-instance v0, Lcom/android/server/wm/VrController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$2;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mIGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 166
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/VrController;

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/VrController;IIZ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/wm/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 58
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$276(Lcom/android/server/wm/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 58
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/VrController;IZ)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$472(Lcom/android/server/wm/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 58
    iget v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    return v0
.end method

.method static synthetic access$476(Lcom/android/server/wm/VrController;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/VrController;
    .param p1, "x1"    # I

    .line 58
    iget v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    return v0
.end method

.method private changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z
    .registers 8
    .param p1, "vrMode"    # Z
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 355
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 359
    .local v0, "oldVrState":I
    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 360
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    goto :goto_11

    .line 362
    :cond_b
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 365
    :goto_11
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_17

    goto :goto_18

    :cond_17
    move v1, v3

    .line 367
    .local v1, "changed":Z
    :goto_18
    if-eqz v1, :cond_2d

    .line 368
    if-eqz p2, :cond_2a

    .line 369
    iget v2, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-lez v2, :cond_2d

    .line 370
    iget v2, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 371
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v4

    .line 370
    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2d

    .line 374
    :cond_2a
    invoke-direct {p0, v3}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 377
    :cond_2d
    :goto_2d
    return v1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .registers 3
    .param p1, "suppressLogs"    # Z

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 474
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .registers 5
    .param p1, "tid"    # I
    .param p2, "pid"    # I

    .line 481
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 484
    return-void

    .line 482
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VR thread does not belong to process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasPersistentVrFlagSet()Z
    .registers 2

    .line 499
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private inVrMode()Z
    .registers 3

    .line 490
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .registers 5
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 423
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    .line 424
    if-nez p2, :cond_f

    .line 425
    const-string v0, "VrController"

    const-string v1, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_f
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v0

    .line 430
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v0

    return v0
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .registers 9
    .param p1, "newTid"    # I
    .param p2, "schedGroup"    # I
    .param p3, "suppressLogs"    # Z

    .line 449
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    .line 450
    .local v0, "inVr":Z
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    .line 451
    .local v1, "inPersistentVr":Z
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    .line 463
    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result v2

    return v2

    .line 452
    :cond_15
    :goto_15
    if-nez p3, :cond_3a

    .line 453
    const-string v2, "caller is not the current top application."

    .line 454
    .local v2, "reason":Ljava/lang/String;
    if-nez v0, :cond_1f

    .line 455
    const-string/jumbo v2, "system not in VR mode."

    goto :goto_24

    .line 456
    :cond_1f
    if-eqz v1, :cond_24

    .line 457
    const-string/jumbo v2, "system in persistent VR mode."

    .line 459
    :cond_24
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set VR thread, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VrController"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v2    # "reason":Ljava/lang/String;
    :cond_3a
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v2
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .registers 4
    .param p1, "newTid"    # I
    .param p2, "suppressLogs"    # Z

    .line 393
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_5

    .line 394
    return v0

    .line 397
    :cond_5
    if-lez v0, :cond_d

    .line 398
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 402
    :cond_d
    if-lez p1, :cond_14

    .line 403
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 404
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 406
    :cond_14
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return v0
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 508
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 509
    .local v0, "token":J
    iget v5, p0, Lcom/android/server/wm/VrController;->mVrState:I

    sget-object v6, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    sget-object v7, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    const-wide v3, 0x20e00000001L

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 511
    iget v2, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 512
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 513
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 173
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 174
    .local v0, "vrManagerInternal":Lcom/android/server/vr/VrManagerInternal;
    if-eqz v0, :cond_f

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 178
    :cond_f
    const-class v1, Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vr/GearVrManagerInternal;

    .line 179
    .local v1, "gearVrService":Lcom/samsung/android/vr/GearVrManagerInternal;
    if-eqz v1, :cond_1e

    .line 180
    iget-object v2, p0, Lcom/android/server/wm/VrController;->mIGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    invoke-virtual {v1, v2}, Lcom/samsung/android/vr/GearVrManagerInternal;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    .line 183
    :cond_1e
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V
    .registers 6
    .param p1, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 194
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    .line 195
    .local v0, "curSchedGroup":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 196
    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_17

    .line 198
    :cond_e
    iget v2, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    iget v3, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v2, v3, :cond_17

    .line 199
    invoke-direct {p0, v1}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 202
    :cond_17
    :goto_17
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 13
    .param p1, "record"    # Lcom/android/server/wm/ActivityRecord;

    .line 213
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 214
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 216
    return v1

    .line 222
    :cond_c
    const/4 v2, -0x1

    .line 223
    .local v2, "processId":I
    const/4 v5, 0x0

    .line 224
    .local v5, "changed":Z
    iget-object v7, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v7

    .line 225
    :try_start_11
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    move v8, v1

    .line 226
    .local v8, "vrMode":Z
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 227
    .local v3, "requestedPackage":Landroid/content/ComponentName;
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 228
    .local v4, "userId":I
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 231
    .local v6, "callingPackage":Landroid/content/ComponentName;
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0, v8, v1}, Lcom/android/server/wm/VrController;->changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z

    move-result v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_44

    move v9, v1

    .line 233
    .end local v5    # "changed":Z
    .local v9, "changed":Z
    :try_start_28
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_34

    .line 234
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_41

    move v10, v1

    .end local v2    # "processId":I
    .local v1, "processId":I
    goto :goto_35

    .line 233
    .end local v1    # "processId":I
    .restart local v2    # "processId":I
    :cond_34
    move v10, v2

    .line 236
    .end local v2    # "processId":I
    .local v10, "processId":I
    :goto_35
    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3d

    .line 266
    move-object v1, v0

    move v2, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 267
    return v9

    .line 236
    .end local v3    # "requestedPackage":Landroid/content/ComponentName;
    .end local v4    # "userId":I
    .end local v6    # "callingPackage":Landroid/content/ComponentName;
    .end local v8    # "vrMode":Z
    :catchall_3d
    move-exception v1

    move v5, v9

    move v2, v10

    goto :goto_45

    .end local v10    # "processId":I
    .restart local v2    # "processId":I
    :catchall_41
    move-exception v1

    move v5, v9

    goto :goto_45

    .end local v9    # "changed":Z
    .restart local v5    # "changed":Z
    :catchall_44
    move-exception v1

    :goto_45
    :try_start_45
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 320
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-nez v0, :cond_e

    .line 321
    const-string v0, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 324
    :cond_e
    if-nez p3, :cond_16

    .line 325
    const-string v0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 328
    :cond_16
    if-eqz p1, :cond_1b

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 331
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 332
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 7
    .param p1, "tid"    # I
    .param p2, "pid"    # I
    .param p3, "proc"    # Lcom/android/server/wm/WindowProcessController;

    .line 286
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-eqz v0, :cond_e

    .line 287
    const-string v0, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_e
    if-nez p3, :cond_16

    .line 291
    const-string v0, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 294
    :cond_16
    if-eqz p1, :cond_1b

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 297
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_28

    .line 298
    const-string v0, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 300
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 302
    :goto_2f
    if-lez p1, :cond_32

    move v2, p1

    :cond_32
    iput v2, p3, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 303
    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 340
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/VrController;->mGearVrState:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 504
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
