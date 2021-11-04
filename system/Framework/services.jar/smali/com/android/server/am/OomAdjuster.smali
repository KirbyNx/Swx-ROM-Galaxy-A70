.class public final Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FGSFILTER:Ljava/lang/String; = "updateOomAdj_fgsfilter"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_SLOWDOWN:Ljava/lang/String; = "updateOomAdj_slowdown"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final OOM_ADJ_REASON_WHITELIST:Ljava/lang/String; = "updateOomAdj_whitelistChange"

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field private static final TAG:Ljava/lang/String; = "OomAdjuster"


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mCFMS:Landroid/os/ICustomFrequencyManager;

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field mNumCachedHiddenProcs:I

.field mNumCachedProcessCount:I

.field mNumCachedSlotCount:I

.field mNumEmptyProcessCount:I

.field mNumEmptySlotCount:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field private mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 262
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    .line 263
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"    # Lcom/android/server/ServiceThread;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    .line 203
    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 208
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 214
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 215
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 216
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 222
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 228
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 239
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 244
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 255
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 256
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 257
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 258
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 1202
    new-instance v0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 282
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 283
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 284
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 286
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 287
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 288
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 290
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjuster$co9XgUOJFi5BsFaUpo-gdH0hsrA;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 308
    new-instance v0, Lcom/android/server/am/ActiveUids;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 309
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 310
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 312
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 313
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 315
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 316
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    .line 317
    return-void
.end method

.method private final applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .registers 31
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"    # Z
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J

    .line 2475
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    .line 2477
    .local v3, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    if-eq v0, v4, :cond_17

    .line 2478
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    .line 2481
    :cond_17
    const/4 v4, 0x0

    .line 2484
    .local v4, "changes":I
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    const/16 v5, 0x2bc

    const/16 v7, 0xc8

    const/4 v8, 0x4

    const/16 v13, 0x352

    const/16 v14, 0x3e7

    const/4 v15, 0x1

    if-eqz v0, :cond_c4

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_c4

    .line 2486
    const/4 v0, 0x1

    .line 2488
    .local v0, "isNotSkipped":Z
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v13, :cond_52

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v6, v14, :cond_52

    .line 2489
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v6, v13, :cond_52

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gt v6, v14, :cond_52

    .line 2490
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_52

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_4d

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    if-ne v6, v8, :cond_51

    :cond_4d
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v6, :cond_52

    .line 2491
    :cond_51
    const/4 v0, 0x0

    .line 2498
    :cond_52
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v6, :cond_57

    .line 2499
    const/4 v0, 0x0

    .line 2503
    :cond_57
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppLaunchFlag()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 2504
    const/4 v0, 0x0

    .line 2508
    :cond_60
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v6, v8, :cond_92

    if-eqz v0, :cond_92

    .line 2512
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gt v6, v7, :cond_7c

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-eq v6, v5, :cond_76

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x258

    if-ne v6, v8, :cond_7c

    .line 2515
    :cond_76
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppSome(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_c4

    .line 2516
    :cond_7c
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v6, v13, :cond_84

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v6, v14, :cond_c4

    :cond_84
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v13, :cond_c4

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v6, v14, :cond_c4

    .line 2520
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppFull(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_c4

    .line 2522
    :cond_92
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v6, v15, :cond_aa

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v6, :cond_aa

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2528
    invoke-virtual {v6, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 2529
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_c4

    .line 2530
    :cond_aa
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    if-eq v6, v15, :cond_c4

    .line 2531
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_c4

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 2533
    invoke-virtual {v6, v2, v9, v10}, Lcom/android/server/am/CachedAppOptimizer;->shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 2534
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2}, Lcom/android/server/am/CachedAppOptimizer;->compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V

    .line 2539
    .end local v0    # "isNotSkipped":Z
    :cond_c4
    :goto_c4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    .line 2540
    .local v0, "lmkdProcState":I
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v15, " pid:"

    const-string v7, "OomAdjuster"

    const/4 v5, 0x0

    if-eq v6, v8, :cond_26a

    .line 2541
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v6, v13, :cond_14d

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v6, v14, :cond_14d

    .line 2543
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v6, :cond_fc

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v6, :cond_fc

    .line 2545
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 2546
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/16 v8, 0xa

    if-eq v6, v8, :cond_f9

    .line 2547
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/16 v8, 0xf

    if-ne v6, v8, :cond_11a

    .line 2548
    :cond_f9
    const/16 v0, 0x10

    goto :goto_11a

    .line 2551
    :cond_fc
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_105

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_111

    :cond_105
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-gtz v6, :cond_111

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    if-nez v6, :cond_111

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v6, :cond_11a

    .line 2554
    :cond_111
    const/16 v6, 0x384

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2555
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2558
    :cond_11a
    :goto_11a
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->PICKED_ADJ_ENABLE:Z

    if-eqz v6, :cond_14d

    .line 2559
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_136

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_12b

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_12f

    :cond_12b
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v6, :cond_136

    .line 2562
    :cond_12f
    iput v13, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2563
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2565
    :cond_136
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    if-nez v6, :cond_13e

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v6, :cond_14d

    .line 2566
    :cond_13e
    iput v13, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2567
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-eqz v6, :cond_148

    const/16 v6, 0x35c

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2568
    :cond_148
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2572
    :cond_14d
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0xfa

    if-lt v6, v8, :cond_192

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v6, v14, :cond_192

    .line 2574
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_160

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_164

    :cond_160
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-lez v6, :cond_187

    .line 2575
    :cond_164
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->AMSExceptionProviderUpgradeAdjEnable:Z

    if-eqz v6, :cond_185

    .line 2576
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v8, "android.process.acore"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17c

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v8, "android.process.media"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_185

    .line 2577
    :cond_17c
    const/16 v6, 0xc8

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2578
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2581
    :cond_185
    const/16 v0, 0x63

    .line 2584
    :cond_187
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-nez v6, :cond_192

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_192

    .line 2585
    const/16 v0, 0x63

    .line 2587
    :cond_192
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x320

    if-lt v6, v8, :cond_1d5

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v6, v14, :cond_1d5

    .line 2589
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1b4

    .line 2590
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v6, :cond_1b2

    .line 2591
    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->CLEANUP_WEBVIEW_ENABLE:Z

    if-eqz v6, :cond_1af

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v8, Lcom/android/server/am/DynamicHiddenApp;->WEBVIEW_ADJ_THRESHOLD:I

    if-gt v6, v8, :cond_1b4

    .line 2593
    :cond_1af
    const/16 v0, 0x63

    goto :goto_1b4

    .line 2596
    :cond_1b2
    const/16 v0, 0x62

    .line 2599
    :cond_1b4
    :goto_1b4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v6

    if-eqz v6, :cond_1c5

    .line 2600
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/16 v8, 0x13

    if-ne v6, v8, :cond_1c5

    .line 2601
    const/16 v0, 0x61

    goto :goto_1d5

    .line 2602
    :cond_1c5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isMlLaunch()Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 2603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/16 v8, 0x13

    if-ne v6, v8, :cond_1d5

    .line 2604
    const/16 v0, 0x60

    .line 2608
    :cond_1d5
    :goto_1d5
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v6, :cond_204

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v6, :cond_204

    .line 2609
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0x2bc

    if-ne v6, v8, :cond_1ec

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v6

    if-eqz v6, :cond_1ec

    .line 2610
    const/16 v0, 0x96

    goto :goto_204

    .line 2611
    :cond_1ec
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6, v2}, Lcom/android/server/am/DynamicHiddenApp;->isRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_204

    .line 2612
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6, v2}, Lcom/android/server/am/DynamicHiddenApp;->getIndexOfRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v6

    const/16 v8, 0xb4

    add-int/lit16 v0, v6, 0xb4

    .line 2613
    const/16 v6, 0xc7

    if-le v0, v6, :cond_204

    const/16 v0, 0xc7

    .line 2617
    :cond_204
    :goto_204
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v8, 0xc8

    if-ge v6, v8, :cond_215

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ltz v6, :cond_215

    .line 2618
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_215

    .line 2619
    const/16 v0, 0x5f

    .line 2624
    :cond_215
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDListout:Z

    if-eqz v6, :cond_258

    .line 2625
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    .line 2626
    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isSDListout:Z

    .line 2627
    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    .line 2628
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDMaxAdj:Z

    .line 2629
    iput v14, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2630
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sent pkg:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  uid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to adj 999"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_258
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    if-nez v6, :cond_268

    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    if-eqz v6, :cond_268

    .line 2637
    const/16 v6, -0x2bc

    iput v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2638
    const/16 v0, 0x63

    move v13, v0

    goto :goto_26b

    .line 2644
    :cond_268
    move v13, v0

    goto :goto_26b

    .line 2540
    :cond_26a
    move v13, v0

    .line 2644
    .end local v0    # "lmkdProcState":I
    .local v13, "lmkdProcState":I
    :goto_26b
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useNandswap()Z

    move-result v0

    const/4 v8, -0x1

    if-eqz v0, :cond_2fc

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_2fc

    .line 2645
    const/4 v0, -0x1

    .line 2647
    .local v0, "action":I
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v6, v14, :cond_296

    .line 2648
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v14, 0xfa

    if-eq v6, v14, :cond_294

    const/16 v14, 0x1f4

    if-eq v6, v14, :cond_292

    const/16 v14, 0x320

    if-eq v6, v14, :cond_290

    .line 2662
    goto :goto_2a4

    .line 2653
    :cond_290
    const/4 v0, 0x2

    .line 2654
    goto :goto_2a4

    .line 2656
    :cond_292
    const/4 v0, 0x3

    .line 2657
    goto :goto_2a4

    .line 2659
    :cond_294
    const/4 v0, 0x4

    .line 2660
    goto :goto_2a4

    .line 2665
    :cond_296
    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gez v6, :cond_29c

    .line 2666
    const/4 v0, 0x5

    goto :goto_2a4

    .line 2667
    :cond_29c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v6

    const/4 v14, 0x5

    if-ne v6, v14, :cond_2a4

    .line 2668
    const/4 v0, 0x6

    .line 2672
    :cond_2a4
    :goto_2a4
    if-eq v0, v8, :cond_2fc

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2, v9, v10, v0}, Lcom/android/server/am/CachedAppOptimizer;->shouldNandswap(Lcom/android/server/am/ProcessRecord;JI)Z

    move-result v6

    if-eqz v6, :cond_2fc

    .line 2673
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v6, :cond_2f7

    .line 2674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "nandswap "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " pkg:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " uid:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " setAdj:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " curAdj:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    :cond_2f7
    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v6, v2, v0}, Lcom/android/server/am/CachedAppOptimizer;->nandswapApp(Lcom/android/server/am/ProcessRecord;I)V

    .line 2683
    .end local v0    # "action":I
    :cond_2fc
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->infant:Z

    if-eqz v0, :cond_313

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v6, :cond_313

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0xa

    if-le v0, v6, :cond_313

    .line 2685
    iput v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2686
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2690
    :cond_313
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string v14, " "

    const-string v15, ": "

    const-string v5, "ActivityManager"

    if-eq v0, v6, :cond_3bb

    .line 2692
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const-string v6, " adj "

    const/16 v8, -0x2bc

    if-gt v0, v8, :cond_360

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Set persistent "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    .line 2694
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2693
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_360
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->infant:Z

    if-eqz v0, :cond_367

    .line 2698
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ProcessRecord;->infant:Z

    .line 2703
    :cond_367
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v18, v3

    .end local v3    # "success":Z
    .local v18, "success":Z
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v8, v3, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 2708
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_384

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_384

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v3, :cond_3b2

    .line 2709
    :cond_384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2711
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2713
    .end local v0    # "msg":Ljava/lang/String;
    :cond_3b2
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 2714
    const/16 v0, -0x2710

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    goto :goto_3ce

    .line 2715
    .end local v18    # "success":Z
    .restart local v3    # "success":Z
    :cond_3bb
    move/from16 v18, v3

    .end local v3    # "success":Z
    .restart local v18    # "success":Z
    const/16 v0, 0xb4

    if-lt v13, v0, :cond_3ce

    const/16 v0, 0xc8

    if-ge v13, v0, :cond_3ce

    .line 2716
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-static {v0, v3, v6, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 2720
    :cond_3ce
    :goto_3ce
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v8

    .line 2721
    .local v8, "curSchedGroup":I
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    const-string v6, " to "

    if-eq v0, v8, :cond_591

    .line 2722
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2723
    .local v3, "oldSchedGroup":I
    iput v8, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 2724
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3ef

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_3ef

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    move/from16 v19, v13

    .end local v13    # "lmkdProcState":I
    .local v19, "lmkdProcState":I
    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v13, :cond_415

    goto :goto_3f1

    .end local v19    # "lmkdProcState":I
    .restart local v13    # "lmkdProcState":I
    :cond_3ef
    move/from16 v19, v13

    .line 2725
    .end local v13    # "lmkdProcState":I
    .restart local v19    # "lmkdProcState":I
    :goto_3f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting sched group of "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2727
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    .end local v0    # "msg":Ljava/lang/String;
    :cond_415
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v0, :cond_459

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_459

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v0, :cond_459

    .line 2732
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_444

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_444

    .line 2733
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v5

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    const/16 v6, 0x22b

    const/4 v14, 0x0

    invoke-virtual {v0, v6, v13, v5, v14}, Lcom/android/server/am/ActivityManagerService;->sendAppStateMsg(ILjava/lang/String;II)V

    goto :goto_44b

    .line 2732
    :cond_444
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    const/4 v14, 0x0

    .line 2738
    :goto_44b
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v5, v14, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 2740
    const/4 v0, 0x0

    move/from16 v18, v0

    const/4 v5, 0x0

    .end local v18    # "success":Z
    .local v0, "success":Z
    goto/16 :goto_59a

    .line 2729
    .end local v0    # "success":Z
    .restart local v18    # "success":Z
    :cond_459
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v14

    const/16 v5, 0xa

    .line 2743
    const/4 v0, -0x2

    const/4 v6, 0x3

    if-eq v8, v0, :cond_491

    if-eqz v8, :cond_48e

    const/4 v13, 0x1

    if-eq v8, v13, :cond_48b

    if-eq v8, v6, :cond_488

    const/4 v0, 0x4

    if-eq v8, v0, :cond_488

    const/4 v0, 0x5

    if-eq v8, v0, :cond_485

    const/4 v0, 0x6

    if-eq v8, v0, :cond_478

    .line 2773
    const/4 v0, -0x1

    move v13, v0

    .local v0, "processGroup":I
    goto :goto_493

    .line 2758
    .end local v0    # "processGroup":I
    :cond_478
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_47f

    move/from16 v20, v5

    goto :goto_481

    .line 2759
    :cond_47f
    const/16 v20, -0x1

    :goto_481
    move/from16 v0, v20

    .line 2760
    .restart local v0    # "processGroup":I
    move v13, v0

    goto :goto_493

    .line 2752
    .end local v0    # "processGroup":I
    :cond_485
    const/4 v0, -0x1

    .line 2754
    .restart local v0    # "processGroup":I
    move v13, v0

    goto :goto_493

    .line 2767
    .end local v0    # "processGroup":I
    :cond_488
    const/4 v0, 0x5

    .line 2768
    .restart local v0    # "processGroup":I
    move v13, v0

    goto :goto_493

    .line 2770
    .end local v0    # "processGroup":I
    :cond_48b
    const/4 v0, 0x7

    .line 2771
    .restart local v0    # "processGroup":I
    move v13, v0

    goto :goto_493

    .line 2763
    .end local v0    # "processGroup":I
    :cond_48e
    const/4 v0, 0x0

    .line 2764
    .restart local v0    # "processGroup":I
    move v13, v0

    goto :goto_493

    .line 2746
    .end local v0    # "processGroup":I
    :cond_491
    const/4 v0, -0x1

    .line 2748
    .restart local v0    # "processGroup":I
    move v13, v0

    .line 2794
    .end local v0    # "processGroup":I
    .local v13, "processGroup":I
    :goto_493
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    iget v14, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v14, v13, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2797
    const/4 v0, 0x3

    if-ne v8, v0, :cond_523

    .line 2799
    if-eq v3, v0, :cond_521

    .line 2800
    :try_start_4a6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2801
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_503

    .line 2803
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    .line 2804
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2805
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_4f2

    .line 2806
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2808
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_4ef

    .line 2809
    const-string v0, "UI_FIFO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set RenderThread (TID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to FIFO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2808
    :cond_4ef
    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2813
    :cond_4f2
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_500

    .line 2814
    const-string v0, "UI_FIFO"

    const-string v5, "Not setting RenderThread TID"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2813
    :cond_500
    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2819
    :cond_503
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v5, -0xa

    invoke-static {v0, v5}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2820
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_50c
    .catch Ljava/lang/Exception; {:try_start_4a6 .. :try_end_50c} :catch_51d

    if-eqz v0, :cond_51a

    .line 2822
    :try_start_50e
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/16 v5, -0xa

    invoke-static {v0, v5}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_515
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50e .. :try_end_515} :catch_516
    .catch Ljava/lang/Exception; {:try_start_50e .. :try_end_515} :catch_51d

    goto :goto_517

    .line 2824
    :catch_516
    move-exception v0

    .line 2826
    :goto_517
    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2820
    :cond_51a
    const/4 v5, 0x0

    goto/16 :goto_590

    .line 2858
    :catch_51d
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_59a

    .line 2799
    :cond_521
    const/4 v5, 0x0

    goto :goto_590

    .line 2830
    :cond_523
    const/4 v0, 0x3

    if-ne v3, v0, :cond_58f

    if-eq v8, v0, :cond_58f

    .line 2832
    :try_start_528
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2833
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_533
    .catch Ljava/lang/Exception; {:try_start_528 .. :try_end_533} :catch_51d

    if-eqz v0, :cond_57c

    .line 2836
    :try_start_535
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_537
    .catch Ljava/lang/IllegalArgumentException; {:try_start_535 .. :try_end_537} :catch_565
    .catch Ljava/lang/SecurityException; {:try_start_535 .. :try_end_537} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_537} :catch_51d

    const/4 v5, 0x0

    :try_start_538
    invoke-static {v0, v5, v5}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_53b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_538 .. :try_end_53b} :catch_565
    .catch Ljava/lang/SecurityException; {:try_start_538 .. :try_end_53b} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_538 .. :try_end_53b} :catch_58d

    .line 2837
    :try_start_53b
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->savedPriority:I

    invoke-static {v0, v5}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2838
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_54c

    .line 2839
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I
    :try_end_548
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53b .. :try_end_548} :catch_565
    .catch Ljava/lang/SecurityException; {:try_start_53b .. :try_end_548} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_53b .. :try_end_548} :catch_51d

    const/4 v5, 0x0

    :try_start_549
    invoke-static {v0, v5, v5}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_54c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_549 .. :try_end_54c} :catch_565
    .catch Ljava/lang/SecurityException; {:try_start_549 .. :try_end_54c} :catch_54e
    .catch Ljava/lang/Exception; {:try_start_549 .. :try_end_54c} :catch_58d

    .line 2848
    :cond_54c
    const/4 v5, 0x0

    goto :goto_582

    .line 2846
    :catch_54e
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_54f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v5, 0x0

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_582

    .line 2842
    :catch_565
    move-exception v0

    .line 2843
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const/4 v5, 0x0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_582

    .line 2851
    :cond_57c
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_57e
    .catch Ljava/lang/Exception; {:try_start_54f .. :try_end_57e} :catch_51d

    const/4 v5, 0x0

    :try_start_57f
    invoke-static {v0, v5}, Landroid/os/Process;->setThreadPriority(II)V

    .line 2854
    :goto_582
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v0, :cond_590

    .line 2855
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    const/4 v6, -0x4

    invoke-static {v0, v6}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_58c
    .catch Ljava/lang/Exception; {:try_start_57f .. :try_end_58c} :catch_58d

    goto :goto_590

    .line 2858
    :catch_58d
    move-exception v0

    goto :goto_59a

    .line 2830
    :cond_58f
    const/4 v5, 0x0

    .line 2862
    :cond_590
    :goto_590
    goto :goto_59a

    .line 2721
    .end local v3    # "oldSchedGroup":I
    .end local v19    # "lmkdProcState":I
    .local v13, "lmkdProcState":I
    :cond_591
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v19, v13

    move-object/from16 v23, v14

    const/4 v5, 0x0

    .line 2865
    .end local v13    # "lmkdProcState":I
    .restart local v19    # "lmkdProcState":I
    :goto_59a
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_5f1

    .line 2866
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    .line 2867
    or-int/lit8 v4, v4, 0x1

    .line 2869
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_5bb

    .line 2870
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_5bb

    .line 2871
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->addChangeActivityLog(Ljava/lang/String;)V

    .line 2877
    :cond_5bb
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFastTrackPolicyManager:Lcom/android/server/am/FastTrackPolicyManager;

    if-eqz v0, :cond_5ef

    .line 2878
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ef

    .line 2879
    const-string v0, "0"

    .line 2880
    .local v0, "fttValue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v3

    if-eqz v3, :cond_5d5

    .line 2881
    const-string v0, "1"

    .line 2884
    :cond_5d5
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFastTrackPolicyManager:Lcom/android/server/am/FastTrackPolicyManager;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v6, v13, v0}, Lcom/android/server/am/FastTrackPolicyManager;->updateFttState(IILjava/lang/String;)V

    .line 2885
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    if-eqz v3, :cond_5ef

    .line 2886
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFastTrackPolicyManager:Lcom/android/server/am/FastTrackPolicyManager;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    invoke-virtual {v3, v6, v13, v0}, Lcom/android/server/am/FastTrackPolicyManager;->updateFttState(IILjava/lang/String;)V

    .line 2893
    .end local v0    # "fttValue":Ljava/lang/String;
    :cond_5ef
    move v13, v4

    goto :goto_5f2

    .line 2865
    :cond_5f1
    move v13, v4

    .line 2893
    .end local v4    # "changes":I
    .local v13, "changes":I
    :goto_5f2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2895
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_643

    .line 2896
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->setReportedProcState(I)V

    .line 2897
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_643

    .line 2907
    :try_start_60a
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2908
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_618
    .catch Landroid/os/RemoteException; {:try_start_60a .. :try_end_618} :catch_621
    .catchall {:try_start_60a .. :try_end_618} :catchall_61f

    .line 2914
    :try_start_618
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->unScheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V
    :try_end_61d
    .catch Landroid/os/RemoteException; {:try_start_618 .. :try_end_61d} :catch_642

    .line 2915
    nop

    .line 2921
    goto :goto_643

    .line 2914
    :catchall_61f
    move-exception v0

    goto :goto_63b

    .line 2909
    :catch_621
    move-exception v0

    .line 2910
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback Function is canceled because of app Stuck. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2912
    nop

    .end local v8    # "curSchedGroup":I
    .end local v13    # "changes":I
    .end local v18    # "success":Z
    .end local v19    # "lmkdProcState":I
    .end local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "doingAll":Z
    .end local p3    # "now":J
    .end local p5    # "nowElapsed":J
    throw v0
    :try_end_63b
    .catchall {:try_start_622 .. :try_end_63b} :catchall_61f

    .line 2914
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v8    # "curSchedGroup":I
    .restart local v13    # "changes":I
    .restart local v18    # "success":Z
    .restart local v19    # "lmkdProcState":I
    .restart local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "doingAll":Z
    .restart local p3    # "now":J
    .restart local p5    # "nowElapsed":J
    :goto_63b
    :try_start_63b
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->unScheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2915
    nop

    .end local v8    # "curSchedGroup":I
    .end local v13    # "changes":I
    .end local v18    # "success":Z
    .end local v19    # "lmkdProcState":I
    .end local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "doingAll":Z
    .end local p3    # "now":J
    .end local p5    # "nowElapsed":J
    throw v0
    :try_end_642
    .catch Landroid/os/RemoteException; {:try_start_63b .. :try_end_642} :catch_642

    .line 2920
    .restart local v8    # "curSchedGroup":I
    .restart local v13    # "changes":I
    .restart local v18    # "success":Z
    .restart local v19    # "lmkdProcState":I
    .restart local p0    # "this":Lcom/android/server/am/OomAdjuster;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "doingAll":Z
    .restart local p3    # "now":J
    .restart local p5    # "nowElapsed":J
    :catch_642
    move-exception v0

    .line 2924
    :cond_643
    :goto_643
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_6cd

    .line 2925
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v0

    if-eqz v0, :cond_65f

    move/from16 v16, v8

    move/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    goto/16 :goto_6d5

    .line 2953
    :cond_65f
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    cmp-long v0, v9, v3

    if-gtz v0, :cond_693

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v3, v6

    cmp-long v0, v9, v3

    if-lez v0, :cond_689

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    .line 2954
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->minTimeFromStateChange(Z)J

    move-result-wide v6

    add-long/2addr v3, v6

    cmp-long v0, v9, v3

    if-lez v0, :cond_67f

    goto :goto_693

    :cond_67f
    move/from16 v16, v8

    move/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    goto/16 :goto_72e

    .line 2953
    :cond_689
    move/from16 v16, v8

    move/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    goto/16 :goto_72e

    .line 2956
    :cond_693
    :goto_693
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-eqz v0, :cond_6c4

    .line 2957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2959
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 2957
    move-object/from16 v7, v21

    const/16 v14, 0xa

    move v5, v0

    move-object/from16 v14, v22

    move/from16 v16, v8

    move/from16 v17, v13

    move-object v13, v7

    .end local v8    # "curSchedGroup":I
    .end local v13    # "changes":I
    .local v16, "curSchedGroup":I
    .local v17, "changes":I
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    goto :goto_72e

    .line 2956
    .end local v16    # "curSchedGroup":I
    .end local v17    # "changes":I
    .restart local v8    # "curSchedGroup":I
    .restart local v13    # "changes":I
    :cond_6c4
    move/from16 v16, v8

    move/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    .end local v8    # "curSchedGroup":I
    .end local v13    # "changes":I
    .restart local v16    # "curSchedGroup":I
    .restart local v17    # "changes":I
    goto :goto_72e

    .line 2924
    .end local v16    # "curSchedGroup":I
    .end local v17    # "changes":I
    .restart local v8    # "curSchedGroup":I
    .restart local v13    # "changes":I
    :cond_6cd
    move/from16 v16, v8

    move/from16 v17, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    .line 2944
    .end local v8    # "curSchedGroup":I
    .end local v13    # "changes":I
    .restart local v16    # "curSchedGroup":I
    .restart local v17    # "changes":I
    :goto_6d5
    iput-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 2945
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2947
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isSleeping()Z

    move-result v6

    .line 2945
    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    .line 2948
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_72e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process state change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2949
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " next pss in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2948
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_72e
    :goto_72e
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_7c6

    .line 2967
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_746

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_746

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_780

    .line 2968
    :cond_746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2971
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v1, v13, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    .end local v0    # "msg":Ljava/lang/String;
    :cond_780
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_788

    const/4 v5, 0x1

    goto :goto_789

    :cond_788
    const/4 v5, 0x0

    :goto_789
    move v0, v5

    .line 2974
    .local v0, "setImportant":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v3, :cond_792

    const/4 v5, 0x1

    goto :goto_793

    :cond_792
    const/4 v5, 0x0

    :goto_793
    move v3, v5

    .line 2975
    .local v3, "curImportant":Z
    if-eqz v0, :cond_79f

    if-nez v3, :cond_79f

    .line 2979
    invoke-virtual {v2, v9, v10}, Lcom/android/server/am/ProcessRecord;->setWhenUnimportant(J)V

    .line 2980
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 2984
    :cond_79f
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 2986
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 2988
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 2989
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_7b4

    .line 2990
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    .line 2992
    :cond_7b4
    if-nez p2, :cond_7c2

    .line 2993
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2994
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 2993
    invoke-virtual {v4, v2, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLocked(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_7c5

    .line 2996
    :cond_7c2
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 2998
    .end local v0    # "setImportant":Z
    .end local v3    # "curImportant":Z
    :goto_7c5
    goto :goto_7f1

    :cond_7c6
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v0, :cond_7dc

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_7dc

    .line 3002
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_7f1

    .line 3003
    :cond_7dc
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-nez v0, :cond_7f1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v3

    sub-long v3, v11, v3

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_7f1

    .line 3006
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 3009
    :cond_7f1
    :goto_7f1
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    if-eq v0, v3, :cond_7fe

    .line 3010
    or-int/lit8 v0, v17, 0x4

    .line 3011
    .end local v17    # "changes":I
    .local v0, "changes":I
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->curCapability:I

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    goto :goto_800

    .line 3009
    .end local v0    # "changes":I
    .restart local v17    # "changes":I
    :cond_7fe
    move/from16 v0, v17

    .line 3014
    .end local v17    # "changes":I
    .restart local v0    # "changes":I
    :goto_800
    if-eqz v0, :cond_8a1

    .line 3015
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_820

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changes in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_820
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3018
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v3

    .line 3019
    .local v3, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v4, v0

    iput v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 3020
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 3021
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    iput v4, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    .line 3022
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_8a1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": changes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " foreground="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " capability="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3022
    invoke-static {v13, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    .end local v3    # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_8a1
    return v18
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 698
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 702
    .local v1, "numLru":I
    const/16 v2, 0x384

    .line 703
    .local v2, "curCachedAdj":I
    add-int/lit8 v3, v2, 0xa

    .line 704
    .local v3, "nextCachedAdj":I
    const/4 v4, 0x0

    .line 705
    .local v4, "curCachedImpAdj":I
    const/16 v5, 0x389

    .line 706
    .local v5, "curEmptyAdj":I
    add-int/lit8 v6, v5, 0xa

    .line 708
    .local v6, "nextEmptyAdj":I
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 709
    .local v7, "emptyProcessLimit":I
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    .line 715
    .local v8, "cachedProcessLimit":I
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    .line 716
    .local v9, "numEmptyProcs":I
    if-le v9, v8, :cond_22

    .line 723
    move v9, v8

    .line 725
    :cond_22
    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v11, 0x1

    if-lez v10, :cond_2c

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_2d

    :cond_2c
    move v10, v11

    :goto_2d
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    .line 727
    .local v10, "cachedFactor":I
    if-ge v10, v11, :cond_33

    const/4 v10, 0x1

    .line 729
    :cond_33
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    .line 730
    .local v13, "emptyFactor":I
    if-ge v13, v11, :cond_3c

    const/4 v13, 0x1

    .line 732
    :cond_3c
    const/4 v11, -0x1

    .line 733
    .local v11, "stepCached":I
    const/4 v12, -0x1

    .line 734
    .local v12, "stepEmpty":I
    const/4 v14, 0x0

    .line 735
    .local v14, "lastCachedGroup":I
    const/4 v15, 0x0

    .line 736
    .local v15, "lastCachedGroupImportance":I
    const/16 v16, 0x0

    .line 738
    .local v16, "lastCachedGroupUid":I
    move/from16 v17, v2

    .end local v2    # "curCachedAdj":I
    .local v17, "curCachedAdj":I
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v2, :cond_51

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v2, :cond_51

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v2}, Lcom/android/server/am/DynamicHiddenApp;->clearRecentActivityProcess()V

    .line 740
    :cond_51
    add-int/lit8 v2, v1, -0x1

    move/from16 v26, v16

    move/from16 v16, v1

    move v1, v15

    move v15, v14

    move v14, v12

    move v12, v11

    move v11, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v7

    move/from16 v7, v26

    .local v1, "lastCachedGroupImportance":I
    .local v2, "i":I
    .local v3, "curCachedAdj":I
    .local v4, "nextCachedAdj":I
    .local v5, "curCachedImpAdj":I
    .local v6, "curEmptyAdj":I
    .local v7, "lastCachedGroupUid":I
    .local v11, "nextEmptyAdj":I
    .local v12, "stepCached":I
    .local v14, "stepEmpty":I
    .local v15, "lastCachedGroup":I
    .local v16, "numLru":I
    .local v17, "emptyProcessLimit":I
    :goto_65
    if-ltz v2, :cond_243

    .line 741
    move/from16 v18, v8

    move-object/from16 v8, p1

    .end local v8    # "cachedProcessLimit":I
    .local v18, "cachedProcessLimit":I
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v8, v19

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 744
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v19, v9

    .end local v9    # "numEmptyProcs":I
    .local v19, "numEmptyProcs":I
    iget-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v9, :cond_229

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_229

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v20, v13

    .end local v13    # "emptyFactor":I
    .local v20, "emptyFactor":I
    const/16 v13, 0x3e9

    if-lt v9, v13, :cond_222

    .line 746
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v9

    const-string v13, ")"

    move/from16 v21, v14

    .end local v14    # "stepEmpty":I
    .local v21, "stepEmpty":I
    const-string v14, " curCachedImpAdj="

    move/from16 v22, v6

    .end local v6    # "curEmptyAdj":I
    .local v22, "curEmptyAdj":I
    const-string v6, " (curCachedAdj="

    move/from16 v23, v11

    .end local v11    # "nextEmptyAdj":I
    .local v23, "nextEmptyAdj":I
    const-string v11, "Assigning activity LRU #"

    const-string v0, " adj: "

    move-object/from16 v24, v13

    const-string v13, "ActivityManager"

    move-object/from16 v25, v13

    packed-switch v9, :pswitch_data_244

    .line 798
    move-object v9, v0

    move-object/from16 v0, v24

    move-object/from16 v13, v25

    sget-boolean v24, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v24, :cond_1c2

    .line 799
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v24

    if-eqz v24, :cond_1c2

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "inGroup2":Z
    move/from16 v24, v0

    .end local v0    # "inGroup2":Z
    .local v24, "inGroup2":Z
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v0, :cond_168

    .line 802
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v0, :cond_15f

    iget v0, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v15, v0, :cond_15f

    .line 806
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-le v0, v1, :cond_15d

    .line 807
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 808
    .end local v1    # "lastCachedGroupImportance":I
    .local v0, "lastCachedGroupImportance":I
    if-ge v3, v4, :cond_15c

    const/16 v1, 0x3e7

    if-ge v3, v1, :cond_15c

    .line 810
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto/16 :goto_15d

    .line 751
    .end local v0    # "lastCachedGroupImportance":I
    .end local v24    # "inGroup2":Z
    .restart local v1    # "lastCachedGroupImportance":I
    :pswitch_d1
    const/4 v9, 0x0

    .line 752
    .local v9, "inGroup":Z
    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v13, :cond_f4

    .line 753
    iget v13, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, v13, :cond_ee

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v15, v13, :cond_ee

    .line 757
    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-le v13, v1, :cond_ec

    .line 758
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 759
    if-ge v3, v4, :cond_ec

    const/16 v13, 0x3e7

    if-ge v3, v13, :cond_ec

    .line 761
    add-int/lit8 v5, v5, 0x1

    .line 764
    :cond_ec
    const/4 v9, 0x1

    goto :goto_f4

    .line 766
    :cond_ee
    iget v7, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 767
    iget v15, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 768
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 771
    :cond_f4
    :goto_f4
    if-nez v9, :cond_107

    if-eq v3, v4, :cond_107

    .line 772
    add-int/lit8 v12, v12, 0x1

    .line 773
    const/4 v5, 0x0

    .line 774
    if-lt v12, v10, :cond_107

    .line 775
    const/4 v12, 0x0

    .line 776
    move v3, v4

    .line 777
    add-int/lit8 v4, v4, 0xa

    .line 778
    const/16 v13, 0x3e7

    if-le v4, v13, :cond_107

    .line 779
    const/16 v4, 0x3e7

    .line 786
    :cond_107
    add-int v13, v3, v5

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 787
    add-int v13, v3, v5

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v13

    iput v13, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 788
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_145

    .line 789
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v25

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v6, :cond_154

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v6, :cond_154

    .line 794
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6, v8}, Lcom/android/server/am/DynamicHiddenApp;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 740
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "inGroup":Z
    :cond_154
    :goto_154
    move/from16 v14, v21

    move/from16 v6, v22

    move/from16 v11, v23

    goto/16 :goto_237

    .line 813
    .end local v1    # "lastCachedGroupImportance":I
    .restart local v0    # "lastCachedGroupImportance":I
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "inGroup2":Z
    :cond_15c
    move v1, v0

    .end local v0    # "lastCachedGroupImportance":I
    .restart local v1    # "lastCachedGroupImportance":I
    :cond_15d
    :goto_15d
    const/4 v0, 0x1

    .end local v24    # "inGroup2":Z
    .local v0, "inGroup2":Z
    goto :goto_16a

    .line 815
    .end local v0    # "inGroup2":Z
    .restart local v24    # "inGroup2":Z
    :cond_15f
    iget v7, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 816
    iget v15, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    .line 817
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 v0, v24

    goto :goto_16a

    .line 801
    :cond_168
    move/from16 v0, v24

    .line 820
    .end local v24    # "inGroup2":Z
    .restart local v0    # "inGroup2":Z
    :goto_16a
    if-nez v0, :cond_183

    if-eq v3, v4, :cond_183

    .line 821
    add-int/lit8 v12, v12, 0x1

    .line 822
    const/4 v5, 0x0

    .line 823
    if-lt v12, v10, :cond_180

    .line 824
    const/4 v12, 0x0

    .line 825
    move v3, v4

    .line 826
    add-int/lit8 v4, v4, 0xa

    .line 827
    move/from16 v24, v0

    const/16 v0, 0x3e7

    .end local v0    # "inGroup2":Z
    .restart local v24    # "inGroup2":Z
    if-le v4, v0, :cond_185

    .line 828
    const/16 v4, 0x3e7

    goto :goto_185

    .line 823
    .end local v24    # "inGroup2":Z
    .restart local v0    # "inGroup2":Z
    :cond_180
    move/from16 v24, v0

    .end local v0    # "inGroup2":Z
    .restart local v24    # "inGroup2":Z
    goto :goto_185

    .line 820
    .end local v24    # "inGroup2":Z
    .restart local v0    # "inGroup2":Z
    :cond_183
    move/from16 v24, v0

    .line 835
    .end local v0    # "inGroup2":Z
    .restart local v24    # "inGroup2":Z
    :cond_185
    :goto_185
    add-int v0, v3, v5

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 836
    add-int v0, v3, v5

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 837
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_154

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") inGroup2"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_154

    .line 845
    .end local v24    # "inGroup2":Z
    :cond_1c2
    move/from16 v6, v22

    move/from16 v11, v23

    .end local v22    # "curEmptyAdj":I
    .end local v23    # "nextEmptyAdj":I
    .restart local v6    # "curEmptyAdj":I
    .restart local v11    # "nextEmptyAdj":I
    if-eq v6, v11, :cond_1e0

    .line 846
    add-int/lit8 v14, v21, 0x1

    .line 847
    .end local v21    # "stepEmpty":I
    .restart local v14    # "stepEmpty":I
    move/from16 v22, v1

    move/from16 v1, v20

    .end local v20    # "emptyFactor":I
    .local v1, "emptyFactor":I
    .local v22, "lastCachedGroupImportance":I
    if-lt v14, v1, :cond_1dd

    .line 848
    const/4 v14, 0x0

    .line 849
    move v6, v11

    .line 850
    add-int/lit8 v11, v11, 0xa

    .line 851
    move/from16 v20, v1

    const/16 v1, 0x3e7

    .end local v1    # "emptyFactor":I
    .restart local v20    # "emptyFactor":I
    if-le v11, v1, :cond_1e4

    .line 852
    const/16 v11, 0x3e7

    goto :goto_1e4

    .line 847
    .end local v20    # "emptyFactor":I
    .restart local v1    # "emptyFactor":I
    :cond_1dd
    move/from16 v20, v1

    .end local v1    # "emptyFactor":I
    .restart local v20    # "emptyFactor":I
    goto :goto_1e4

    .line 845
    .end local v14    # "stepEmpty":I
    .end local v22    # "lastCachedGroupImportance":I
    .local v1, "lastCachedGroupImportance":I
    .restart local v21    # "stepEmpty":I
    :cond_1e0
    move/from16 v22, v1

    .end local v1    # "lastCachedGroupImportance":I
    .restart local v22    # "lastCachedGroupImportance":I
    move/from16 v14, v21

    .line 861
    .end local v21    # "stepEmpty":I
    .restart local v14    # "stepEmpty":I
    :cond_1e4
    :goto_1e4
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 862
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 863
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_21b

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    .end local v3    # "curCachedAdj":I
    .local v23, "curCachedAdj":I
    const-string v3, "Assigning empty LRU #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (curEmptyAdj="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21d

    .line 863
    .end local v23    # "curCachedAdj":I
    .restart local v3    # "curCachedAdj":I
    :cond_21b
    move/from16 v23, v3

    .line 740
    .end local v3    # "curCachedAdj":I
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "curCachedAdj":I
    :goto_21d
    move/from16 v1, v22

    move/from16 v3, v23

    goto :goto_237

    .line 744
    .end local v22    # "lastCachedGroupImportance":I
    .end local v23    # "curCachedAdj":I
    .restart local v1    # "lastCachedGroupImportance":I
    .restart local v3    # "curCachedAdj":I
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_222
    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v21, v14

    .end local v1    # "lastCachedGroupImportance":I
    .end local v3    # "curCachedAdj":I
    .end local v14    # "stepEmpty":I
    .restart local v21    # "stepEmpty":I
    .restart local v22    # "lastCachedGroupImportance":I
    .restart local v23    # "curCachedAdj":I
    goto :goto_231

    .end local v20    # "emptyFactor":I
    .end local v21    # "stepEmpty":I
    .end local v22    # "lastCachedGroupImportance":I
    .end local v23    # "curCachedAdj":I
    .restart local v1    # "lastCachedGroupImportance":I
    .restart local v3    # "curCachedAdj":I
    .restart local v13    # "emptyFactor":I
    .restart local v14    # "stepEmpty":I
    :cond_229
    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v20, v13

    move/from16 v21, v14

    .line 740
    .end local v1    # "lastCachedGroupImportance":I
    .end local v3    # "curCachedAdj":I
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "emptyFactor":I
    .end local v14    # "stepEmpty":I
    .restart local v20    # "emptyFactor":I
    .restart local v21    # "stepEmpty":I
    .restart local v22    # "lastCachedGroupImportance":I
    .restart local v23    # "curCachedAdj":I
    :goto_231
    move/from16 v14, v21

    move/from16 v1, v22

    move/from16 v3, v23

    .end local v21    # "stepEmpty":I
    .end local v22    # "lastCachedGroupImportance":I
    .end local v23    # "curCachedAdj":I
    .restart local v1    # "lastCachedGroupImportance":I
    .restart local v3    # "curCachedAdj":I
    .restart local v14    # "stepEmpty":I
    :goto_237
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v13, v20

    goto/16 :goto_65

    .line 872
    .end local v2    # "i":I
    .end local v18    # "cachedProcessLimit":I
    .end local v19    # "numEmptyProcs":I
    .end local v20    # "emptyFactor":I
    .local v8, "cachedProcessLimit":I
    .local v9, "numEmptyProcs":I
    .restart local v13    # "emptyFactor":I
    :cond_243
    return-void

    :pswitch_data_244
    .packed-switch 0x10
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
    .end packed-switch
.end method

.method private final computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .registers 62
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J
    .param p7, "cycleReEval"    # Z
    .param p8, "computeClients"    # Z

    .line 1329
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-wide/from16 v13, p5

    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v0, v1, :cond_1a

    .line 1330
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    if-ne v0, v1, :cond_17

    .line 1332
    return v9

    .line 1336
    :cond_17
    iput-boolean v15, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 1338
    return v9

    .line 1342
    :cond_1a
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v8, 0x13

    if-nez v0, :cond_38

    .line 1343
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1344
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1345
    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1346
    const/16 v0, 0x3e7

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1347
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1348
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1349
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1350
    return v9

    .line 1353
    :cond_38
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 1354
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1355
    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 1356
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1357
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1358
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    .line 1360
    iget-object v0, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1361
    .local v7, "appUid":I
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1363
    .local v6, "logUid":I
    iget v5, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1364
    .local v5, "prevAppAdj":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    .line 1365
    .local v4, "prevProcState":I
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1367
    .local v3, "prevCapability":I
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/4 v1, 0x2

    const-string v15, "ActivityManager"

    if-gtz v0, :cond_f1

    .line 1370
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_63

    if-ne v6, v7, :cond_79

    .line 1371
    :cond_63
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Making fixed: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/ActivityManagerService;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_79
    const-string v0, "fixed"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1374
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1375
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1376
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 1377
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1378
    const/4 v2, 0x7

    iput v2, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 1379
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1384
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1385
    if-ne v11, v12, :cond_a3

    .line 1386
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1387
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1388
    const-string/jumbo v0, "pers-top-activity"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_b9

    .line 1389
    :cond_a3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasTopUi()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1391
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1392
    const-string/jumbo v0, "pers-top-ui"

    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_b9

    .line 1393
    :cond_b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1394
    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1396
    :cond_b9
    :goto_b9
    iget-boolean v0, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    if-nez v0, :cond_d3

    .line 1397
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cc

    .line 1399
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1400
    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_d3

    .line 1403
    :cond_cc
    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 1404
    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 1407
    :cond_d3
    :goto_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1408
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 1409
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iput v0, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 1411
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lt v0, v5, :cond_ef

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v4, :cond_ed

    goto :goto_ef

    :cond_ed
    move v15, v9

    goto :goto_f0

    :cond_ef
    :goto_ef
    const/4 v15, 0x1

    :goto_f0
    return v15

    .line 1414
    :cond_f1
    const/4 v2, 0x7

    const/16 v16, 0x5

    const/16 v17, 0x3

    iput-boolean v9, v11, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    .line 1416
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v1

    .line 1419
    .local v1, "PROCESS_STATE_CUR_TOP":I
    const/16 v20, 0x1

    .line 1422
    .local v20, "doSlow":Z
    const/16 v21, 0x1

    .line 1431
    .local v21, "doFilterFGS":Z
    const/4 v0, 0x0

    .line 1433
    .local v0, "capability":I
    const/16 v22, 0x0

    .line 1434
    .local v22, "foregroundActivities":Z
    const/4 v2, 0x2

    if-ne v1, v2, :cond_133

    if-ne v11, v12, :cond_133

    .line 1436
    const/16 v19, 0x0

    .line 1437
    .local v19, "adj":I
    const/16 v24, 0x3

    .line 1438
    .local v24, "schedGroup":I
    const-string/jumbo v2, "top-activity"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1439
    const/16 v22, 0x1

    .line 1440
    move v2, v1

    .line 1441
    .local v2, "procState":I
    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v26, :cond_11e

    if-ne v6, v7, :cond_15b

    .line 1442
    :cond_11e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making top: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15b

    .line 1444
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_133
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_165

    .line 1445
    const/16 v19, 0x64

    .line 1446
    .restart local v19    # "adj":I
    const/16 v24, 0x3

    .line 1447
    .restart local v24    # "schedGroup":I
    const-string/jumbo v2, "running-remote-anim"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1448
    move v2, v1

    .line 1449
    .restart local v2    # "procState":I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_147

    if-ne v6, v7, :cond_15b

    .line 1450
    :cond_147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making running remote anim: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :cond_15b
    :goto_15b
    move/from16 v28, v24

    move/from16 v24, v22

    move/from16 v22, v19

    move/from16 v19, v2

    goto/16 :goto_2a4

    .line 1452
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_165
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v2

    if-eqz v2, :cond_190

    .line 1454
    const/16 v19, 0x0

    .line 1455
    .restart local v19    # "adj":I
    const/16 v24, 0x2

    .line 1456
    .restart local v24    # "schedGroup":I
    const-string/jumbo v2, "instrumentation"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1457
    const/4 v2, 0x4

    .line 1463
    .restart local v2    # "procState":I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_17b

    if-ne v6, v7, :cond_15b

    .line 1464
    :cond_17b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making instrumentation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15b

    .line 1466
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_190
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 1471
    const/16 v19, 0x0

    .line 1472
    .restart local v19    # "adj":I
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v8, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 1473
    const/4 v2, 0x2

    goto :goto_1a9

    :cond_1a8
    const/4 v2, 0x0

    :goto_1a9
    move/from16 v24, v2

    .line 1474
    .restart local v24    # "schedGroup":I
    const-string v2, "broadcast"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1475
    const/16 v2, 0xb

    .line 1481
    .restart local v2    # "procState":I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_1b7

    if-ne v6, v7, :cond_15b

    .line 1482
    :cond_1b7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making broadcast: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15b

    .line 1484
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_1cc
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_201

    .line 1487
    const/16 v19, 0x0

    .line 1488
    .restart local v19    # "adj":I
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_1dc

    .line 1489
    const/4 v2, 0x2

    goto :goto_1dd

    :cond_1dc
    const/4 v2, 0x0

    :goto_1dd
    move/from16 v24, v2

    .line 1490
    .restart local v24    # "schedGroup":I
    const-string v2, "exec-service"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1491
    const/16 v2, 0xa

    .line 1497
    .restart local v2    # "procState":I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_1eb

    if-ne v6, v7, :cond_15b

    .line 1498
    :cond_1eb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making exec-service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 1501
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_201
    if-ne v11, v12, :cond_22b

    .line 1502
    const/16 v19, 0x0

    .line 1503
    .restart local v19    # "adj":I
    const/16 v24, 0x0

    .line 1504
    .restart local v24    # "schedGroup":I
    const-string/jumbo v2, "top-sleeping"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1505
    const/16 v22, 0x1

    .line 1506
    move v2, v1

    .line 1507
    .restart local v2    # "procState":I
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_215

    if-ne v6, v7, :cond_15b

    .line 1508
    :cond_215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making top (sleeping): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 1511
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_22b
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 1513
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v8

    .line 1512
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v2

    if-eqz v2, :cond_24d

    .line 1514
    const/16 v19, 0x64

    .line 1515
    .restart local v19    # "adj":I
    const/16 v24, 0x0

    .line 1516
    .restart local v24    # "schedGroup":I
    const-string v2, "force-keep-alive"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1517
    move v2, v1

    move/from16 v28, v24

    move/from16 v24, v22

    move/from16 v22, v19

    move/from16 v19, v2

    .restart local v2    # "procState":I
    goto :goto_2a4

    .line 1518
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_24d
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    if-eqz v2, :cond_274

    .line 1520
    const/16 v19, 0x64

    .line 1521
    .restart local v19    # "adj":I
    const/16 v24, 0x0

    .line 1522
    .restart local v24    # "schedGroup":I
    const-string v2, "dedicated"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1523
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_269

    .line 1524
    move v2, v1

    move/from16 v28, v24

    move/from16 v24, v22

    move/from16 v22, v19

    move/from16 v19, v2

    .restart local v2    # "procState":I
    goto :goto_2a4

    .line 1526
    .end local v2    # "procState":I
    :cond_269
    const/16 v2, 0x13

    move/from16 v28, v24

    move/from16 v24, v22

    move/from16 v22, v19

    move/from16 v19, v2

    .restart local v2    # "procState":I
    goto :goto_2a4

    .line 1531
    .end local v2    # "procState":I
    .end local v19    # "adj":I
    .end local v24    # "schedGroup":I
    :cond_274
    const/16 v24, 0x0

    .line 1534
    .restart local v24    # "schedGroup":I
    move/from16 v19, p2

    .line 1535
    .restart local v19    # "adj":I
    const/16 v2, 0x13

    .line 1536
    .restart local v2    # "procState":I
    iget-boolean v8, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-nez v8, :cond_288

    .line 1537
    const/4 v8, 0x1

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1538
    iput-boolean v8, v11, Lcom/android/server/am/ProcessRecord;->empty:Z

    .line 1539
    const-string v8, "cch-empty"

    iput-object v8, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1541
    :cond_288
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_28e

    if-ne v6, v7, :cond_15b

    .line 1542
    :cond_28e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Making empty: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v15, v8}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15b

    .line 1547
    .end local v2    # "procState":I
    .local v19, "procState":I
    .local v22, "adj":I
    .local v24, "foregroundActivities":Z
    .local v28, "schedGroup":I
    :goto_2a4
    if-nez v24, :cond_2dc

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 1548
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move/from16 v8, v17

    const/4 v9, 0x2

    move/from16 v17, v1

    .end local v1    # "PROCESS_STATE_CUR_TOP":I
    .local v17, "PROCESS_STATE_CUR_TOP":I
    move-object/from16 v1, p1

    const/4 v12, 0x7

    move/from16 v29, v3

    .end local v3    # "prevCapability":I
    .local v29, "prevCapability":I
    move/from16 v3, v22

    move/from16 v30, v4

    .end local v4    # "prevProcState":I
    .local v30, "prevProcState":I
    move/from16 v4, v24

    move/from16 v31, v5

    .end local v5    # "prevAppAdj":I
    .local v31, "prevAppAdj":I
    move/from16 v5, v19

    move/from16 v23, v6

    .end local v6    # "logUid":I
    .local v23, "logUid":I
    move/from16 v6, v28

    move/from16 v25, v7

    .end local v7    # "appUid":I
    .local v25, "appUid":I
    move/from16 v8, v23

    const/4 v12, 0x0

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZIIIII)V

    .line 1552
    iget v1, v11, Lcom/android/server/am/ProcessRecord;->mCachedAdj:I

    .line 1553
    .end local v22    # "adj":I
    .local v1, "adj":I
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->mCachedForegroundActivities:Z

    .line 1554
    .end local v24    # "foregroundActivities":Z
    .local v2, "foregroundActivities":Z
    iget v3, v11, Lcom/android/server/am/ProcessRecord;->mCachedProcState:I

    .line 1555
    .end local v19    # "procState":I
    .local v3, "procState":I
    iget v4, v11, Lcom/android/server/am/ProcessRecord;->mCachedSchedGroup:I

    move v9, v2

    move/from16 v28, v4

    .end local v28    # "schedGroup":I
    .local v4, "schedGroup":I
    goto :goto_2ef

    .line 1547
    .end local v2    # "foregroundActivities":Z
    .end local v17    # "PROCESS_STATE_CUR_TOP":I
    .end local v23    # "logUid":I
    .end local v25    # "appUid":I
    .end local v29    # "prevCapability":I
    .end local v30    # "prevProcState":I
    .end local v31    # "prevAppAdj":I
    .local v1, "PROCESS_STATE_CUR_TOP":I
    .local v3, "prevCapability":I
    .local v4, "prevProcState":I
    .restart local v5    # "prevAppAdj":I
    .restart local v6    # "logUid":I
    .restart local v7    # "appUid":I
    .restart local v19    # "procState":I
    .restart local v22    # "adj":I
    .restart local v24    # "foregroundActivities":Z
    .restart local v28    # "schedGroup":I
    :cond_2dc
    move/from16 v17, v1

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v23, v6

    move/from16 v25, v7

    const/4 v12, 0x0

    .line 1558
    .end local v1    # "PROCESS_STATE_CUR_TOP":I
    .end local v3    # "prevCapability":I
    .end local v4    # "prevProcState":I
    .end local v5    # "prevAppAdj":I
    .end local v6    # "logUid":I
    .end local v7    # "appUid":I
    .restart local v17    # "PROCESS_STATE_CUR_TOP":I
    .restart local v23    # "logUid":I
    .restart local v25    # "appUid":I
    .restart local v29    # "prevCapability":I
    .restart local v30    # "prevProcState":I
    .restart local v31    # "prevAppAdj":I
    move/from16 v3, v19

    move/from16 v1, v22

    move/from16 v9, v24

    .end local v19    # "procState":I
    .end local v22    # "adj":I
    .end local v24    # "foregroundActivities":Z
    .local v1, "adj":I
    .local v3, "procState":I
    .local v9, "foregroundActivities":Z
    :goto_2ef
    const/16 v2, 0x12

    if-le v3, v2, :cond_323

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasRecentTasks()Z

    move-result v2

    if-eqz v2, :cond_323

    .line 1559
    const/16 v3, 0x12

    .line 1560
    const-string v2, "cch-rec"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1561
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_30a

    move/from16 v6, v23

    move/from16 v8, v25

    .end local v23    # "logUid":I
    .end local v25    # "appUid":I
    .restart local v6    # "logUid":I
    .local v8, "appUid":I
    if-ne v6, v8, :cond_327

    goto :goto_30e

    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .restart local v23    # "logUid":I
    .restart local v25    # "appUid":I
    :cond_30a
    move/from16 v6, v23

    move/from16 v8, v25

    .line 1562
    .end local v23    # "logUid":I
    .end local v25    # "appUid":I
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    :goto_30e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to cached recent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_327

    .line 1558
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .restart local v23    # "logUid":I
    .restart local v25    # "appUid":I
    :cond_323
    move/from16 v6, v23

    move/from16 v8, v25

    .line 1566
    .end local v23    # "logUid":I
    .end local v25    # "appUid":I
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    :cond_327
    :goto_327
    const-string v7, ": "

    const-string v5, "Raise to "

    const/4 v4, 0x4

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_332

    if-le v3, v4, :cond_397

    .line 1568
    :cond_332
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v19

    if-eqz v19, :cond_36a

    .line 1570
    const/16 v1, 0xc8

    .line 1571
    const/4 v3, 0x4

    .line 1572
    const-string v4, "fg-service"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1573
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1574
    const/16 v28, 0x2

    .line 1575
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_34a

    if-ne v6, v8, :cond_397

    .line 1576
    :cond_34a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_397

    .line 1579
    :cond_36a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v2

    if-eqz v2, :cond_397

    .line 1581
    const/16 v1, 0xc8

    .line 1582
    const/4 v3, 0x6

    .line 1583
    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1584
    const-string/jumbo v2, "has-overlay-ui"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1585
    const/16 v28, 0x2

    .line 1586
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_383

    if-ne v6, v8, :cond_397

    .line 1587
    :cond_383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to overlay ui: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :cond_397
    :goto_397
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    const-string v4, "fg-service-act"

    if-eqz v2, :cond_3d9

    const/16 v2, 0x32

    if-le v1, v2, :cond_3d9

    iget-wide v12, v11, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v14, v0

    move/from16 v23, v1

    .end local v0    # "capability":I
    .end local v1    # "adj":I
    .local v14, "capability":I
    .local v23, "adj":I
    iget-wide v0, v2, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long/2addr v12, v0

    move-wide/from16 v1, p5

    cmp-long v0, v12, v1

    if-gtz v0, :cond_3b9

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v12, 0x2

    if-gt v0, v12, :cond_3dd

    goto :goto_3ba

    :cond_3b9
    const/4 v12, 0x2

    .line 1598
    :goto_3ba
    const/16 v0, 0x32

    .line 1599
    .end local v23    # "adj":I
    .local v0, "adj":I
    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1600
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v13, :cond_3c4

    if-ne v6, v8, :cond_3df

    .line 1601
    :cond_3c4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise to recent fg: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3df

    .line 1595
    .end local v14    # "capability":I
    .local v0, "capability":I
    .restart local v1    # "adj":I
    :cond_3d9
    move/from16 v23, v1

    move-wide v1, v13

    move v14, v0

    .line 1605
    .end local v0    # "capability":I
    .end local v1    # "adj":I
    .restart local v14    # "capability":I
    .restart local v23    # "adj":I
    :cond_3dd
    move/from16 v0, v23

    .end local v23    # "adj":I
    .local v0, "adj":I
    :cond_3df
    :goto_3df
    const/16 v12, 0x8

    const/16 v13, 0xc8

    if-gt v0, v13, :cond_3e7

    if-le v3, v12, :cond_417

    .line 1607
    :cond_3e7
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v13, :cond_417

    .line 1611
    const/16 v0, 0xc8

    .line 1612
    const/16 v3, 0x8

    .line 1613
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1614
    const-string v13, "force-imp"

    iput-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1615
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    iput-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 1616
    const/16 v28, 0x2

    .line 1617
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v13, :cond_403

    if-ne v6, v8, :cond_417

    .line 1618
    :cond_403
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise to force imp: "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_417
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHeavyWeight()Z

    move-result v12

    if-eqz v12, :cond_472

    .line 1624
    const/16 v12, 0x190

    const-string/jumbo v13, "heavy"

    if-le v0, v12, :cond_450

    .line 1626
    const/16 v0, 0x190

    .line 1627
    const/16 v28, 0x0

    .line 1628
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1629
    iput-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1630
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_438

    if-ne v6, v8, :cond_435

    goto :goto_438

    :cond_435
    move/from16 v24, v0

    goto :goto_44e

    .line 1631
    :cond_438
    :goto_438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    .end local v0    # "adj":I
    .local v24, "adj":I
    const-string v0, "Raise adj to heavy: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :goto_44e
    move/from16 v0, v24

    .end local v24    # "adj":I
    .restart local v0    # "adj":I
    :cond_450
    const/16 v12, 0xd

    if-le v3, v12, :cond_472

    .line 1635
    const/16 v3, 0xd

    .line 1636
    iput-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1637
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_45e

    if-ne v6, v8, :cond_472

    .line 1638
    :cond_45e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise procstate to heavy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_472
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v12

    if-eqz v12, :cond_4d0

    .line 1644
    const/16 v12, 0x258

    if-le v0, v12, :cond_4ab

    .line 1647
    const/16 v0, 0x258

    .line 1648
    const/16 v28, 0x0

    .line 1649
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1650
    const-string/jumbo v12, "home"

    iput-object v12, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1652
    iget-object v12, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    .line 1654
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_497

    if-ne v6, v8, :cond_4ab

    .line 1655
    :cond_497
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise adj to home: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_4ab
    const/16 v12, 0xe

    if-le v3, v12, :cond_4d0

    .line 1659
    const/16 v3, 0xe

    .line 1660
    const-string/jumbo v12, "home"

    iput-object v12, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1661
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_4bc

    if-ne v6, v8, :cond_4d0

    .line 1662
    :cond_4bc
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise procstate to home: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_4d0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsPreviousProcess()Z

    move-result v12

    if-eqz v12, :cond_530

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedHasActivities()Z

    move-result v12

    if-eqz v12, :cond_530

    .line 1668
    const/16 v12, 0x2bc

    if-le v0, v12, :cond_507

    .line 1672
    const/16 v0, 0x2bc

    .line 1673
    const/16 v28, 0x0

    .line 1674
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1675
    const-string/jumbo v12, "previous"

    iput-object v12, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1676
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_4f3

    if-ne v6, v8, :cond_507

    .line 1677
    :cond_4f3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise adj to prev: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_507
    const/16 v12, 0xf

    if-le v3, v12, :cond_52d

    .line 1681
    const/16 v3, 0xf

    .line 1682
    const-string/jumbo v12, "previous"

    iput-object v12, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1683
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v12, :cond_518

    if-ne v6, v8, :cond_530

    .line 1684
    :cond_518
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Raise procstate to prev: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v15, v12}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_530

    .line 1680
    :cond_52d
    move/from16 v12, v28

    goto :goto_532

    .line 1697
    :cond_530
    :goto_530
    move/from16 v12, v28

    .end local v28    # "schedGroup":I
    .local v12, "schedGroup":I
    :goto_532
    if-eqz p7, :cond_54c

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v13

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1699
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v13

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1700
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1702
    :cond_54c
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1703
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1705
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1706
    iget v13, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v13, v11, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 1708
    iget-object v13, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    move-object/from16 v24, v4

    iget v4, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/am/BackupRecord;

    .line 1709
    .local v13, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v13, :cond_5f3

    iget-object v4, v13, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v4, :cond_5f3

    .line 1711
    const/16 v4, 0x12c

    if-le v0, v4, :cond_5c3

    .line 1712
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v4, :cond_58e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0    # "adj":I
    .local v28, "adj":I
    const-string/jumbo v0, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_590

    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    :cond_58e
    move/from16 v28, v0

    .line 1713
    .end local v0    # "adj":I
    .restart local v28    # "adj":I
    :goto_590
    const/16 v0, 0x12c

    .line 1714
    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    const/16 v4, 0x8

    if-le v3, v4, :cond_598

    .line 1715
    const/16 v3, 0x8

    .line 1717
    :cond_598
    const-string v4, "backup"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1718
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_5a6

    if-ne v6, v8, :cond_5a3

    goto :goto_5a6

    :cond_5a3
    move/from16 v28, v0

    goto :goto_5bc

    .line 1719
    :cond_5a6
    :goto_5a6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0    # "adj":I
    .restart local v28    # "adj":I
    const-string v0, "Raise adj to backup: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :goto_5bc
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    move/from16 v0, v28

    goto :goto_5c5

    .line 1711
    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    :cond_5c3
    move/from16 v28, v0

    .line 1723
    :goto_5c5
    const/16 v4, 0x9

    if-le v3, v4, :cond_5f0

    .line 1724
    const/16 v3, 0x9

    .line 1725
    const-string v4, "backup"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1726
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_5d9

    if-ne v6, v8, :cond_5d6

    goto :goto_5d9

    :cond_5d6
    move/from16 v28, v0

    goto :goto_5f5

    .line 1727
    :cond_5d9
    :goto_5d9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0    # "adj":I
    .restart local v28    # "adj":I
    const-string v0, "Raise procstate to backup: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f5

    .line 1723
    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    :cond_5f0
    move/from16 v28, v0

    .end local v0    # "adj":I
    .restart local v28    # "adj":I
    goto :goto_5f7

    .line 1709
    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    :cond_5f3
    move/from16 v28, v0

    .line 1732
    .end local v0    # "adj":I
    .restart local v28    # "adj":I
    :goto_5f5
    move/from16 v0, v28

    .end local v28    # "adj":I
    .restart local v0    # "adj":I
    :goto_5f7
    const/4 v4, 0x0

    .line 1733
    .local v4, "capabilityFromFGS":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v28

    const/16 v18, 0x1

    add-int/lit8 v28, v28, -0x1

    move/from16 v51, v12

    move v12, v4

    move/from16 v4, v51

    move/from16 v52, v28

    move/from16 v28, v9

    move/from16 v9, v52

    .line 1734
    .local v4, "schedGroup":I
    .local v9, "is":I
    .local v12, "capabilityFromFGS":I
    .local v28, "foregroundActivities":Z
    :goto_60b
    move-object/from16 v33, v13

    .end local v13    # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v33, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-ltz v9, :cond_b78

    if-gtz v0, :cond_62e

    if-eqz v4, :cond_62e

    const/4 v13, 0x2

    if-le v3, v13, :cond_617

    goto :goto_62e

    :cond_617
    move/from16 v35, v4

    move-object/from16 v43, v5

    move-object/from16 v45, v7

    move v13, v8

    move/from16 v38, v12

    move-object/from16 v42, v24

    move/from16 v46, v28

    const/16 v8, 0xc8

    const/4 v9, 0x3

    move-wide/from16 v51, v1

    move v2, v6

    move-wide/from16 v5, v51

    goto/16 :goto_b8f

    .line 1738
    :cond_62e
    :goto_62e
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v13

    .line 1739
    .local v13, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v35, v4

    .end local v4    # "schedGroup":I
    .local v35, "schedGroup":I
    iget-boolean v4, v13, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_6ca

    .line 1740
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    .line 1741
    const/16 v4, 0xa

    if-le v3, v4, :cond_668

    .line 1742
    const/16 v3, 0xa

    .line 1743
    const-string/jumbo v4, "started-services"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1744
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_650

    if-ne v6, v8, :cond_64d

    goto :goto_650

    :cond_64d
    move/from16 v36, v3

    goto :goto_666

    .line 1745
    :cond_650
    :goto_650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v3

    .end local v3    # "procState":I
    .local v36, "procState":I
    const-string v3, "Raise procstate to started service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :goto_666
    move/from16 v3, v36

    .end local v36    # "procState":I
    .restart local v3    # "procState":I
    :cond_668
    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_684

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_684

    .line 1754
    const/16 v4, 0x1f4

    if-le v0, v4, :cond_67a

    .line 1755
    const-string v4, "cch-started-ui-services"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1781
    :cond_67a
    move/from16 v36, v3

    move-object/from16 v37, v5

    move/from16 v38, v12

    move-object/from16 v39, v13

    move v3, v0

    goto :goto_6d3

    .line 1758
    :cond_684
    move/from16 v36, v3

    .end local v3    # "procState":I
    .restart local v36    # "procState":I
    iget-wide v3, v13, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move-object/from16 v37, v5

    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v38, v12

    move-object/from16 v39, v13

    .end local v12    # "capabilityFromFGS":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .local v38, "capabilityFromFGS":I
    .local v39, "s":Lcom/android/server/am/ServiceRecord;
    iget-wide v12, v5, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v12

    cmp-long v3, v1, v3

    if-gez v3, :cond_6c0

    .line 1762
    const/16 v3, 0x1f4

    if-le v0, v3, :cond_6c0

    .line 1763
    const/16 v0, 0x1f4

    .line 1764
    const-string/jumbo v3, "started-services"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1765
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_6a8

    if-ne v6, v8, :cond_6bc

    .line 1766
    :cond_6a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to started service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v15, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    :cond_6bc
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1775
    :cond_6c0
    const/16 v3, 0x1f4

    if-le v0, v3, :cond_6c8

    .line 1776
    const-string v3, "cch-started-services"

    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1781
    :cond_6c8
    move v3, v0

    goto :goto_6d3

    .line 1739
    .end local v36    # "procState":I
    .end local v38    # "capabilityFromFGS":I
    .end local v39    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "procState":I
    .restart local v12    # "capabilityFromFGS":I
    .restart local v13    # "s":Lcom/android/server/am/ServiceRecord;
    :cond_6ca
    move-object/from16 v37, v5

    move/from16 v38, v12

    move-object/from16 v39, v13

    .end local v12    # "capabilityFromFGS":I
    .end local v13    # "s":Lcom/android/server/am/ServiceRecord;
    .restart local v38    # "capabilityFromFGS":I
    .restart local v39    # "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v36, v3

    move v3, v0

    .line 1781
    .end local v0    # "adj":I
    .local v3, "adj":I
    .restart local v36    # "procState":I
    :goto_6d3
    move-object/from16 v12, v39

    .end local v39    # "s":Lcom/android/server/am/ServiceRecord;
    .local v12, "s":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_71d

    .line 1782
    iget v4, v12, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1783
    .local v4, "fgsType":I
    iget-boolean v0, v12, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v0, :cond_71a

    .line 1784
    nop

    .line 1786
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_6e6

    const/4 v0, 0x1

    goto :goto_6e7

    :cond_6e6
    const/4 v0, 0x0

    :goto_6e7
    or-int v5, v38, v0

    .line 1788
    .end local v38    # "capabilityFromFGS":I
    .local v5, "capabilityFromFGS":I
    const/4 v13, 0x0

    .line 1790
    .local v13, "enabled":Z
    :try_start_6ea
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    iget-object v1, v12, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_6ee
    .catch Landroid/os/RemoteException; {:try_start_6ea .. :try_end_6ee} :catch_6fb

    move/from16 v34, v3

    const-wide/32 v2, 0x81e8a55

    .end local v3    # "adj":I
    .local v34, "adj":I
    :try_start_6f3
    invoke-interface {v0, v2, v3, v1}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_6f7
    .catch Landroid/os/RemoteException; {:try_start_6f3 .. :try_end_6f7} :catch_6f9

    move v13, v0

    .line 1793
    goto :goto_6fe

    .line 1792
    :catch_6f9
    move-exception v0

    goto :goto_6fe

    .end local v34    # "adj":I
    .restart local v3    # "adj":I
    :catch_6fb
    move-exception v0

    move/from16 v34, v3

    .line 1794
    .end local v3    # "adj":I
    .restart local v34    # "adj":I
    :goto_6fe
    if-eqz v13, :cond_715

    .line 1795
    nop

    .line 1797
    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_707

    const/4 v0, 0x2

    goto :goto_708

    :cond_707
    const/4 v0, 0x0

    :goto_708
    or-int/2addr v0, v5

    .line 1798
    .end local v5    # "capabilityFromFGS":I
    .local v0, "capabilityFromFGS":I
    nop

    .line 1800
    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_710

    const/4 v1, 0x4

    goto :goto_711

    :cond_710
    const/4 v1, 0x0

    :goto_711
    or-int/2addr v0, v1

    move/from16 v38, v0

    goto :goto_71f

    .line 1802
    .end local v0    # "capabilityFromFGS":I
    .restart local v5    # "capabilityFromFGS":I
    :cond_715
    or-int/lit8 v0, v5, 0x6

    move/from16 v38, v0

    .end local v5    # "capabilityFromFGS":I
    .restart local v0    # "capabilityFromFGS":I
    goto :goto_71f

    .line 1783
    .end local v0    # "capabilityFromFGS":I
    .end local v13    # "enabled":Z
    .end local v34    # "adj":I
    .restart local v3    # "adj":I
    .restart local v38    # "capabilityFromFGS":I
    :cond_71a
    move/from16 v34, v3

    .end local v3    # "adj":I
    .restart local v34    # "adj":I
    goto :goto_71f

    .line 1781
    .end local v4    # "fgsType":I
    .end local v34    # "adj":I
    .restart local v3    # "adj":I
    :cond_71d
    move/from16 v34, v3

    .line 1808
    .end local v3    # "adj":I
    .restart local v34    # "adj":I
    :goto_71f
    invoke-virtual {v12}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v13

    .line 1809
    .local v13, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v14

    move/from16 v4, v35

    move/from16 v3, v36

    move v14, v0

    move/from16 v0, v34

    .line 1810
    .end local v34    # "adj":I
    .end local v35    # "schedGroup":I
    .end local v36    # "procState":I
    .local v0, "adj":I
    .local v1, "capability":I
    .local v3, "procState":I
    .local v4, "schedGroup":I
    .local v14, "conni":I
    :goto_731
    if-ltz v14, :cond_b4a

    if-gtz v0, :cond_74f

    if-eqz v4, :cond_74f

    const/4 v2, 0x2

    if-le v3, v2, :cond_73b

    goto :goto_74f

    :cond_73b
    move v2, v6

    move-object/from16 v45, v7

    move v13, v8

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    const/4 v7, 0x7

    const/16 v8, 0xc8

    move-wide/from16 v5, p5

    move/from16 v28, v9

    const/4 v9, 0x3

    goto/16 :goto_b60

    .line 1814
    :cond_74f
    :goto_74f
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/ArrayList;

    .line 1815
    .local v5, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    move/from16 v34, v1

    move/from16 v35, v4

    move v4, v2

    .line 1816
    .end local v1    # "capability":I
    .local v4, "i":I
    .local v34, "capability":I
    .restart local v35    # "schedGroup":I
    :goto_75c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_b1a

    if-gtz v0, :cond_780

    if-eqz v35, :cond_780

    const/4 v1, 0x2

    if-le v3, v1, :cond_76a

    goto :goto_780

    :cond_76a
    move/from16 v22, v3

    move v2, v6

    move-object/from16 v45, v7

    move/from16 v39, v14

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    move-wide/from16 v5, p5

    move/from16 v28, v9

    move-object/from16 v37, v13

    move v13, v8

    goto/16 :goto_b32

    .line 1822
    :cond_780
    :goto_780
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 1823
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v1, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v11, :cond_7a6

    .line 1825
    move/from16 v22, v3

    move/from16 v19, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move/from16 v39, v14

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    move-object/from16 v24, v5

    move/from16 v28, v9

    move-object/from16 v37, v13

    move v13, v8

    goto/16 :goto_828

    .line 1828
    :cond_7a6
    const/16 v36, 0x0

    .line 1830
    .local v36, "trackedProcState":Z
    iget-object v1, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1831
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz p8, :cond_7df

    .line 1832
    const/16 v39, 0x1

    move-object/from16 v40, v1

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .local v40, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v1, p0

    move-object/from16 v41, v2

    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v41, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v2, v40

    move/from16 v22, v3

    .end local v3    # "procState":I
    .local v22, "procState":I
    move/from16 v3, p2

    move/from16 v19, v4

    move-object/from16 v42, v24

    .end local v4    # "i":I
    .local v19, "i":I
    move-object/from16 v4, p3

    move-object/from16 v24, v5

    move-object/from16 v43, v37

    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v24, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move/from16 v5, p4

    move/from16 v44, v6

    move-object/from16 v45, v7

    .end local v6    # "logUid":I
    .local v44, "logUid":I
    move-wide/from16 v6, p5

    move-object/from16 v37, v13

    move v13, v8

    .end local v8    # "appUid":I
    .local v13, "appUid":I
    .local v37, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    move/from16 v8, p7

    move/from16 v46, v28

    move/from16 v28, v9

    .end local v9    # "is":I
    .local v28, "is":I
    .local v46, "foregroundActivities":Z
    move/from16 v9, v39

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v7, v40

    goto :goto_804

    .line 1835
    .end local v19    # "i":I
    .end local v22    # "procState":I
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v40    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v44    # "logUid":I
    .end local v46    # "foregroundActivities":Z
    .restart local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v3    # "procState":I
    .restart local v4    # "i":I
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    .restart local v9    # "is":I
    .local v13, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v28, "foregroundActivities":Z
    :cond_7df
    move-object/from16 v40, v1

    move-object/from16 v41, v2

    move/from16 v22, v3

    move/from16 v19, v4

    move/from16 v44, v6

    move-object/from16 v45, v7

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    move-object/from16 v24, v5

    move/from16 v28, v9

    move-object/from16 v37, v13

    move v13, v8

    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3    # "procState":I
    .end local v4    # "i":I
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v9    # "is":I
    .local v13, "appUid":I
    .restart local v19    # "i":I
    .restart local v22    # "procState":I
    .restart local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v28, "is":I
    .restart local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v40    # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v44    # "logUid":I
    .restart local v46    # "foregroundActivities":Z
    move-object/from16 v7, v40

    .end local v40    # "client":Lcom/android/server/am/ProcessRecord;
    .local v7, "client":Lcom/android/server/am/ProcessRecord;
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1836
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 1839
    :goto_804
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v8

    .line 1840
    .local v8, "clientAdj":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v9

    .line 1842
    .local v9, "clientProcState":I
    move-object/from16 v6, v41

    .end local v41    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v1, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_a80

    .line 1843
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move/from16 v4, v22

    move v5, v0

    move/from16 v39, v14

    move-object v14, v6

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v14, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v39, "conni":I
    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_830

    .line 1844
    nop

    .line 1819
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "i":I
    .end local v22    # "procState":I
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v36    # "trackedProcState":Z
    .end local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v39    # "conni":I
    .end local v44    # "logUid":I
    .end local v46    # "foregroundActivities":Z
    .restart local v3    # "procState":I
    .restart local v4    # "i":I
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "logUid":I
    .local v8, "appUid":I
    .local v9, "is":I
    .local v13, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v14, "conni":I
    .local v28, "foregroundActivities":Z
    :goto_828
    move-wide/from16 v5, p5

    move/from16 v3, v22

    move/from16 v2, v44

    .end local v3    # "procState":I
    .end local v4    # "i":I
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v9    # "is":I
    .end local v14    # "conni":I
    .local v13, "appUid":I
    .restart local v19    # "i":I
    .restart local v22    # "procState":I
    .restart local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v28, "is":I
    .restart local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v39    # "conni":I
    .restart local v44    # "logUid":I
    .restart local v46    # "foregroundActivities":Z
    goto/16 :goto_b04

    .line 1847
    .restart local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .local v8, "clientAdj":I
    .local v9, "clientProcState":I
    .local v14, "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v36    # "trackedProcState":Z
    :cond_830
    const/16 v1, 0x1000

    invoke-virtual {v14, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_83c

    .line 1848
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int v34, v34, v1

    .line 1851
    :cond_83c
    const/16 v1, 0x10

    if-lt v9, v1, :cond_842

    .line 1855
    const/16 v9, 0x13

    .line 1857
    :cond_842
    const/4 v2, 0x0

    .line 1858
    .local v2, "adjType":Ljava/lang/String;
    iget v3, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_873

    .line 1861
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_860

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_860

    .line 1866
    if-le v0, v8, :cond_856

    .line 1867
    const-string v2, "cch-bound-ui-services"

    .line 1869
    :cond_856
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1870
    move v8, v0

    .line 1871
    move/from16 v9, v22

    move-wide/from16 v5, p5

    goto :goto_875

    .line 1873
    :cond_860
    iget-wide v3, v12, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v5

    move-wide/from16 v5, p5

    cmp-long v1, v5, v3

    if-ltz v1, :cond_875

    .line 1880
    if-le v0, v8, :cond_871

    .line 1881
    const-string v2, "cch-bound-services"

    .line 1883
    :cond_871
    move v8, v0

    goto :goto_875

    .line 1858
    :cond_873
    move-wide/from16 v5, p5

    .line 1887
    :cond_875
    :goto_875
    if-le v0, v8, :cond_908

    .line 1895
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_893

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v1

    if-nez v1, :cond_893

    const/16 v1, 0xc8

    if-le v8, v1, :cond_895

    .line 1897
    const/16 v3, 0x384

    if-lt v0, v3, :cond_90a

    .line 1898
    const-string v2, "cch-bound-ui-services"

    move-object v3, v2

    move/from16 v4, v22

    move v2, v0

    move/from16 v0, v35

    goto/16 :goto_910

    .line 1895
    :cond_893
    const/16 v1, 0xc8

    .line 1902
    :cond_895
    iget v3, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x48

    if-eqz v3, :cond_8b2

    .line 1904
    const/16 v3, -0x2bc

    if-lt v8, v3, :cond_8a1

    .line 1905
    move v3, v8

    .local v3, "newAdj":I
    goto :goto_8e7

    .line 1908
    .end local v3    # "newAdj":I
    :cond_8a1
    const/16 v3, -0x2bc

    .line 1909
    .restart local v3    # "newAdj":I
    const/16 v35, 0x2

    .line 1910
    const/4 v4, 0x0

    .line 1911
    .end local v22    # "procState":I
    .local v4, "procState":I
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v4, v1, v5, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 1912
    const/16 v36, 0x1

    move/from16 v22, v4

    const/16 v1, 0xc8

    goto :goto_8e7

    .line 1914
    .end local v3    # "newAdj":I
    .end local v4    # "procState":I
    .restart local v22    # "procState":I
    :cond_8b2
    iget v1, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8c5

    const/16 v1, 0xc8

    if-gt v8, v1, :cond_8c5

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_8c5

    .line 1917
    const/16 v3, 0xfa

    const/16 v1, 0xc8

    .restart local v3    # "newAdj":I
    goto :goto_8e7

    .line 1918
    .end local v3    # "newAdj":I
    :cond_8c5
    iget v1, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_8d5

    const/16 v1, 0xc8

    if-ge v8, v1, :cond_8d7

    if-lt v0, v1, :cond_8d7

    .line 1921
    const/16 v3, 0xc8

    .restart local v3    # "newAdj":I
    goto :goto_8e7

    .line 1918
    .end local v3    # "newAdj":I
    :cond_8d5
    const/16 v1, 0xc8

    .line 1922
    :cond_8d7
    if-lt v8, v1, :cond_8db

    .line 1923
    move v3, v8

    .restart local v3    # "newAdj":I
    goto :goto_8e7

    .line 1925
    .end local v3    # "newAdj":I
    :cond_8db
    const/16 v3, 0x64

    if-le v0, v3, :cond_8e6

    .line 1927
    const/16 v3, 0x64

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "newAdj":I
    goto :goto_8e7

    .line 1929
    .end local v3    # "newAdj":I
    :cond_8e6
    move v3, v0

    .line 1932
    .restart local v3    # "newAdj":I
    :goto_8e7
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v4

    if-nez v4, :cond_8f1

    .line 1933
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 1935
    :cond_8f1
    if-le v0, v3, :cond_901

    .line 1936
    move v0, v3

    .line 1937
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 1938
    const-string/jumbo v2, "service"

    move-object v3, v2

    move/from16 v4, v22

    move v2, v0

    move/from16 v0, v35

    goto :goto_910

    .line 1935
    :cond_901
    move-object v3, v2

    move/from16 v4, v22

    move v2, v0

    move/from16 v0, v35

    goto :goto_910

    .line 1887
    .end local v3    # "newAdj":I
    :cond_908
    const/16 v1, 0xc8

    .line 1942
    :cond_90a
    move-object v3, v2

    move/from16 v4, v22

    move v2, v0

    move/from16 v0, v35

    .end local v22    # "procState":I
    .end local v35    # "schedGroup":I
    .local v0, "schedGroup":I
    .local v2, "adj":I
    .local v3, "adjType":Ljava/lang/String;
    .restart local v4    # "procState":I
    :goto_910
    iget v1, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v22, 0x800004

    and-int v1, v1, v22

    if-nez v1, :cond_9a8

    .line 1947
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v1

    .line 1948
    .local v1, "curSchedGroup":I
    if-le v1, v0, :cond_92f

    .line 1949
    move/from16 v22, v0

    .end local v0    # "schedGroup":I
    .local v22, "schedGroup":I
    iget v0, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_92b

    .line 1950
    move v0, v1

    move/from16 v22, v0

    .end local v22    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    goto :goto_931

    .line 1952
    .end local v0    # "schedGroup":I
    .restart local v22    # "schedGroup":I
    :cond_92b
    const/4 v0, 0x2

    move/from16 v22, v0

    .end local v22    # "schedGroup":I
    .restart local v0    # "schedGroup":I
    goto :goto_931

    .line 1948
    :cond_92f
    move/from16 v22, v0

    .line 1955
    .end local v0    # "schedGroup":I
    .restart local v22    # "schedGroup":I
    :goto_931
    move/from16 v35, v1

    const/4 v1, 0x2

    .end local v1    # "curSchedGroup":I
    .local v35, "curSchedGroup":I
    if-ge v9, v1, :cond_95f

    .line 1960
    const/high16 v0, 0x4000000

    invoke-virtual {v14, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_945

    .line 1961
    const/4 v9, 0x5

    move/from16 v47, v2

    move/from16 v40, v8

    goto/16 :goto_9a3

    .line 1962
    :cond_945
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_959

    iget v0, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_959

    .line 1966
    const/4 v9, 0x5

    move/from16 v47, v2

    move/from16 v40, v8

    goto :goto_9a3

    .line 1968
    :cond_959
    const/4 v9, 0x6

    move/from16 v47, v2

    move/from16 v40, v8

    goto :goto_9a3

    .line 1971
    :cond_95f
    const/4 v1, 0x2

    if-ne v9, v1, :cond_99f

    .line 1974
    const/4 v9, 0x3

    .line 1985
    const/4 v1, 0x0

    .line 1987
    .local v1, "enabled":Z
    :try_start_964
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;
    :try_end_966
    .catch Landroid/os/RemoteException; {:try_start_964 .. :try_end_966} :catch_97f

    move/from16 v40, v8

    move/from16 v41, v9

    .end local v8    # "clientAdj":I
    .end local v9    # "clientProcState":I
    .local v40, "clientAdj":I
    .local v41, "clientProcState":I
    :try_start_96a
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_96c
    .catch Landroid/os/RemoteException; {:try_start_96a .. :try_end_96c} :catch_97a

    move v9, v1

    move/from16 v47, v2

    const-wide/32 v1, 0x81f62a4

    .end local v1    # "enabled":Z
    .end local v2    # "adj":I
    .local v9, "enabled":Z
    .local v47, "adj":I
    :try_start_972
    invoke-interface {v0, v1, v2, v8}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_976
    .catch Landroid/os/RemoteException; {:try_start_972 .. :try_end_976} :catch_978

    move v1, v0

    .line 1990
    .end local v9    # "enabled":Z
    .restart local v1    # "enabled":Z
    goto :goto_988

    .line 1989
    .end local v1    # "enabled":Z
    .restart local v9    # "enabled":Z
    :catch_978
    move-exception v0

    goto :goto_987

    .end local v9    # "enabled":Z
    .end local v47    # "adj":I
    .restart local v1    # "enabled":Z
    .restart local v2    # "adj":I
    :catch_97a
    move-exception v0

    move v9, v1

    move/from16 v47, v2

    .end local v1    # "enabled":Z
    .end local v2    # "adj":I
    .restart local v9    # "enabled":Z
    .restart local v47    # "adj":I
    goto :goto_987

    .end local v40    # "clientAdj":I
    .end local v41    # "clientProcState":I
    .end local v47    # "adj":I
    .restart local v1    # "enabled":Z
    .restart local v2    # "adj":I
    .restart local v8    # "clientAdj":I
    .local v9, "clientProcState":I
    :catch_97f
    move-exception v0

    move/from16 v47, v2

    move/from16 v40, v8

    move/from16 v41, v9

    move v9, v1

    .end local v1    # "enabled":Z
    .end local v2    # "adj":I
    .end local v8    # "clientAdj":I
    .local v9, "enabled":Z
    .restart local v40    # "clientAdj":I
    .restart local v41    # "clientProcState":I
    .restart local v47    # "adj":I
    :goto_987
    move v1, v9

    .line 1991
    .end local v9    # "enabled":Z
    .restart local v1    # "enabled":Z
    :goto_988
    if-eqz v1, :cond_99a

    .line 1992
    const/16 v0, 0x1000

    invoke-virtual {v14, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_997

    .line 1994
    or-int/lit8 v34, v34, 0x7

    move/from16 v9, v41

    goto :goto_9a3

    .line 1992
    :cond_997
    move/from16 v9, v41

    goto :goto_9a3

    .line 2000
    :cond_99a
    or-int/lit8 v34, v34, 0x7

    move/from16 v9, v41

    goto :goto_9a3

    .line 1971
    .end local v1    # "enabled":Z
    .end local v40    # "clientAdj":I
    .end local v41    # "clientProcState":I
    .end local v47    # "adj":I
    .restart local v2    # "adj":I
    .restart local v8    # "clientAdj":I
    .local v9, "clientProcState":I
    :cond_99f
    move/from16 v47, v2

    move/from16 v40, v8

    .line 2003
    .end local v2    # "adj":I
    .end local v8    # "clientAdj":I
    .end local v35    # "curSchedGroup":I
    .restart local v40    # "clientAdj":I
    .restart local v47    # "adj":I
    :goto_9a3
    move/from16 v0, v22

    const/16 v2, 0x8

    goto :goto_9cb

    .end local v22    # "schedGroup":I
    .end local v40    # "clientAdj":I
    .end local v47    # "adj":I
    .restart local v0    # "schedGroup":I
    .restart local v2    # "adj":I
    .restart local v8    # "clientAdj":I
    :cond_9a8
    move/from16 v22, v0

    move/from16 v47, v2

    move/from16 v40, v8

    .end local v0    # "schedGroup":I
    .end local v2    # "adj":I
    .end local v8    # "clientAdj":I
    .restart local v22    # "schedGroup":I
    .restart local v40    # "clientAdj":I
    .restart local v47    # "adj":I
    iget v0, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_9bf

    .line 2004
    const/16 v2, 0x8

    if-ge v9, v2, :cond_9c9

    .line 2006
    const/16 v0, 0x8

    move v9, v0

    move/from16 v0, v22

    .end local v9    # "clientProcState":I
    .local v0, "clientProcState":I
    goto :goto_9cb

    .line 2010
    .end local v0    # "clientProcState":I
    .restart local v9    # "clientProcState":I
    :cond_9bf
    const/16 v2, 0x8

    const/4 v1, 0x7

    if-ge v9, v1, :cond_9c9

    .line 2012
    const/4 v0, 0x7

    move v9, v0

    move/from16 v0, v22

    .end local v9    # "clientProcState":I
    .restart local v0    # "clientProcState":I
    goto :goto_9cb

    .line 2017
    .end local v0    # "clientProcState":I
    .restart local v9    # "clientProcState":I
    :cond_9c9
    move/from16 v0, v22

    .end local v22    # "schedGroup":I
    .local v0, "schedGroup":I
    :goto_9cb
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9da

    iget v8, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v22, 0x80000

    and-int v8, v8, v22

    if-eqz v8, :cond_9da

    .line 2019
    const/4 v0, 0x3

    move/from16 v35, v0

    goto :goto_9dc

    .line 2022
    :cond_9da
    move/from16 v35, v0

    .end local v0    # "schedGroup":I
    .local v35, "schedGroup":I
    :goto_9dc
    if-nez v36, :cond_9e3

    .line 2023
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v14, v9, v0, v5, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(IIJ)V

    .line 2026
    :cond_9e3
    if-le v4, v9, :cond_9fa

    .line 2027
    move v0, v9

    .line 2028
    .end local v4    # "procState":I
    .local v0, "procState":I
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2029
    if-nez v3, :cond_9f4

    .line 2030
    const-string/jumbo v3, "service"

    move-object/from16 v51, v3

    move v3, v0

    move-object/from16 v0, v51

    goto :goto_9fc

    .line 2029
    :cond_9f4
    move-object/from16 v51, v3

    move v3, v0

    move-object/from16 v0, v51

    goto :goto_9fc

    .line 2026
    .end local v0    # "procState":I
    .restart local v4    # "procState":I
    :cond_9fa
    move-object v0, v3

    move v3, v4

    .line 2033
    .end local v4    # "procState":I
    .local v0, "adjType":Ljava/lang/String;
    .local v3, "procState":I
    :goto_9fc
    const/4 v4, 0x7

    if-ge v3, v4, :cond_a0b

    iget v8, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v22, 0x20000000

    and-int v8, v8, v22

    if-eqz v8, :cond_a0b

    .line 2035
    const/4 v8, 0x1

    invoke-virtual {v11, v8}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 2037
    :cond_a0b
    if-eqz v0, :cond_a71

    .line 2038
    iput-object v0, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2039
    const/4 v8, 0x2

    iput v8, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2041
    iget-object v8, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iput-object v8, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2042
    iput v9, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2043
    iget-object v8, v12, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v8, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2044
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_a2e

    move/from16 v8, v44

    .end local v44    # "logUid":I
    .local v8, "logUid":I
    if-ne v8, v13, :cond_a27

    goto :goto_a30

    :cond_a27
    move/from16 v22, v9

    move-object/from16 v9, v45

    move/from16 v2, v47

    goto :goto_a79

    .end local v8    # "logUid":I
    .restart local v44    # "logUid":I
    :cond_a2e
    move/from16 v8, v44

    .line 2045
    .end local v44    # "logUid":I
    .restart local v8    # "logUid":I
    :goto_a30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v9

    move-object/from16 v9, v43

    .end local v9    # "clientProcState":I
    .local v22, "clientProcState":I
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v45

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v47

    .end local v47    # "adj":I
    .restart local v2    # "adj":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2045
    invoke-virtual {v10, v15, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a79

    .line 2037
    .end local v2    # "adj":I
    .end local v8    # "logUid":I
    .end local v22    # "clientProcState":I
    .restart local v9    # "clientProcState":I
    .restart local v44    # "logUid":I
    .restart local v47    # "adj":I
    :cond_a71
    move/from16 v22, v9

    move/from16 v8, v44

    move-object/from16 v9, v45

    move/from16 v2, v47

    .line 2051
    .end local v0    # "adjType":Ljava/lang/String;
    .end local v9    # "clientProcState":I
    .end local v44    # "logUid":I
    .end local v47    # "adj":I
    .restart local v2    # "adj":I
    .restart local v8    # "logUid":I
    .restart local v22    # "clientProcState":I
    :goto_a79
    move v0, v2

    move v1, v3

    move v2, v8

    move/from16 v8, v40

    const/4 v3, 0x1

    goto :goto_a99

    .line 2061
    .end local v2    # "adj":I
    .end local v3    # "procState":I
    .end local v39    # "conni":I
    .end local v40    # "clientAdj":I
    .local v0, "adj":I
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "clientAdj":I
    .restart local v9    # "clientProcState":I
    .local v14, "conni":I
    .local v22, "procState":I
    .restart local v44    # "logUid":I
    :cond_a80
    move v1, v9

    move/from16 v39, v14

    move/from16 v2, v44

    move-object/from16 v9, v45

    move-object v14, v6

    move-wide/from16 v5, p5

    .end local v6    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v9    # "clientProcState":I
    .end local v44    # "logUid":I
    .local v1, "clientProcState":I
    .local v2, "logUid":I
    .local v14, "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v39    # "conni":I
    const/16 v3, 0x384

    if-ge v8, v3, :cond_a92

    .line 2062
    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    goto :goto_a93

    .line 2061
    :cond_a92
    const/4 v3, 0x1

    .line 2065
    :goto_a93
    move/from16 v51, v22

    move/from16 v22, v1

    move/from16 v1, v51

    .local v1, "procState":I
    .local v22, "clientProcState":I
    :goto_a99
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v18, 0x8000000

    and-int v4, v4, v18

    if-eqz v4, :cond_aa3

    .line 2066
    iput-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 2068
    :cond_aa3
    iget-object v3, v14, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2069
    .local v3, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b01

    .line 2070
    if-eqz v3, :cond_afe

    if-lez v0, :cond_afe

    .line 2071
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v4

    if-eqz v4, :cond_afb

    .line 2072
    const/4 v0, 0x0

    .line 2073
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2074
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    move-object/from16 v45, v9

    const/4 v9, 0x4

    and-int/2addr v4, v9

    if-nez v4, :cond_acc

    .line 2075
    iget v4, v14, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_aca

    .line 2076
    const/16 v35, 0x4

    goto :goto_acc

    .line 2078
    :cond_aca
    const/16 v35, 0x2

    .line 2081
    :cond_acc
    :goto_acc
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2082
    const-string/jumbo v4, "service"

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2083
    const/4 v4, 0x2

    iput v4, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2085
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2086
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2087
    iget-object v4, v12, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    iput-object v4, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2088
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v4, :cond_ae6

    if-ne v2, v13, :cond_b03

    .line 2089
    :cond_ae6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Raise to service w/activity: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v15, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b03

    .line 2071
    :cond_afb
    move-object/from16 v45, v9

    goto :goto_b03

    .line 2070
    :cond_afe
    move-object/from16 v45, v9

    goto :goto_b03

    .line 2069
    :cond_b01
    move-object/from16 v45, v9

    .line 1819
    .end local v3    # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "clientAdj":I
    .end local v14    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v22    # "clientProcState":I
    .end local v36    # "trackedProcState":Z
    :cond_b03
    :goto_b03
    move v3, v1

    .end local v1    # "procState":I
    .local v3, "procState":I
    :goto_b04
    add-int/lit8 v4, v19, 0x1

    move v6, v2

    move v8, v13

    move-object/from16 v5, v24

    move/from16 v9, v28

    move-object/from16 v13, v37

    move/from16 v14, v39

    move-object/from16 v24, v42

    move-object/from16 v37, v43

    move-object/from16 v7, v45

    move/from16 v28, v46

    .end local v19    # "i":I
    .local v4, "i":I
    goto/16 :goto_75c

    .line 1816
    .end local v2    # "logUid":I
    .end local v24    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v39    # "conni":I
    .end local v46    # "foregroundActivities":Z
    .restart local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v6, "logUid":I
    .local v8, "appUid":I
    .local v9, "is":I
    .local v13, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v14, "conni":I
    .local v28, "foregroundActivities":Z
    :cond_b1a
    move/from16 v22, v3

    move/from16 v19, v4

    move v2, v6

    move-object/from16 v45, v7

    move/from16 v39, v14

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    move-object/from16 v24, v5

    move/from16 v28, v9

    move-object/from16 v37, v13

    move-wide/from16 v5, p5

    move v13, v8

    .line 1813
    .end local v3    # "procState":I
    .end local v4    # "i":I
    .end local v5    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v9    # "is":I
    .end local v14    # "conni":I
    .restart local v2    # "logUid":I
    .local v13, "appUid":I
    .local v22, "procState":I
    .local v28, "is":I
    .restart local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v39    # "conni":I
    .restart local v46    # "foregroundActivities":Z
    :goto_b32
    add-int/lit8 v14, v39, -0x1

    move v6, v2

    move v8, v13

    move/from16 v3, v22

    move/from16 v9, v28

    move/from16 v1, v34

    move/from16 v4, v35

    move-object/from16 v13, v37

    move-object/from16 v24, v42

    move-object/from16 v37, v43

    move-object/from16 v7, v45

    move/from16 v28, v46

    .end local v39    # "conni":I
    .restart local v14    # "conni":I
    goto/16 :goto_731

    .line 1810
    .end local v2    # "logUid":I
    .end local v22    # "procState":I
    .end local v34    # "capability":I
    .end local v35    # "schedGroup":I
    .end local v37    # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v46    # "foregroundActivities":Z
    .local v1, "capability":I
    .restart local v3    # "procState":I
    .local v4, "schedGroup":I
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    .restart local v9    # "is":I
    .local v13, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v28, "foregroundActivities":Z
    :cond_b4a
    move v2, v6

    move-object/from16 v45, v7

    move/from16 v39, v14

    move-object/from16 v42, v24

    move/from16 v46, v28

    move-object/from16 v43, v37

    const/4 v7, 0x7

    move-wide/from16 v5, p5

    move/from16 v28, v9

    move-object/from16 v37, v13

    const/4 v9, 0x3

    move v13, v8

    const/16 v8, 0xc8

    .line 1737
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v9    # "is":I
    .end local v12    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v14    # "conni":I
    .restart local v2    # "logUid":I
    .local v13, "appUid":I
    .local v28, "is":I
    .restart local v46    # "foregroundActivities":Z
    :goto_b60
    add-int/lit8 v12, v28, -0x1

    move v14, v1

    move v9, v12

    move v8, v13

    move-object/from16 v13, v33

    move/from16 v12, v38

    move-object/from16 v24, v42

    move-object/from16 v7, v45

    move/from16 v28, v46

    move-wide/from16 v51, v5

    move v6, v2

    move-wide/from16 v1, v51

    move-object/from16 v5, v43

    .end local v28    # "is":I
    .local v12, "is":I
    goto/16 :goto_60b

    .line 1734
    .end local v1    # "capability":I
    .end local v2    # "logUid":I
    .end local v13    # "appUid":I
    .end local v38    # "capabilityFromFGS":I
    .end local v46    # "foregroundActivities":Z
    .restart local v6    # "logUid":I
    .restart local v8    # "appUid":I
    .restart local v9    # "is":I
    .local v12, "capabilityFromFGS":I
    .local v14, "capability":I
    .local v28, "foregroundActivities":Z
    :cond_b78
    move/from16 v35, v4

    move-object/from16 v43, v5

    move-object/from16 v45, v7

    move v13, v8

    move/from16 v38, v12

    move-object/from16 v42, v24

    move/from16 v46, v28

    const/16 v8, 0xc8

    move/from16 v28, v9

    const/4 v9, 0x3

    move-wide/from16 v51, v1

    move v2, v6

    move-wide/from16 v5, v51

    .line 2098
    .end local v4    # "schedGroup":I
    .end local v6    # "logUid":I
    .end local v8    # "appUid":I
    .end local v9    # "is":I
    .end local v12    # "capabilityFromFGS":I
    .end local v28    # "foregroundActivities":Z
    .restart local v2    # "logUid":I
    .restart local v13    # "appUid":I
    .restart local v35    # "schedGroup":I
    .restart local v38    # "capabilityFromFGS":I
    .restart local v46    # "foregroundActivities":Z
    :goto_b8f
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move v12, v1

    move/from16 v4, v35

    .line 2099
    .end local v35    # "schedGroup":I
    .restart local v4    # "schedGroup":I
    .local v12, "provi":I
    :goto_b9a
    if-ltz v12, :cond_ddd

    if-gtz v0, :cond_bad

    if-eqz v4, :cond_bad

    const/4 v1, 0x2

    if-le v3, v1, :cond_ba4

    goto :goto_bad

    :cond_ba4
    move-wide v6, v5

    move v8, v13

    move/from16 v23, v14

    move-object v13, v15

    move v5, v2

    const/4 v2, 0x6

    goto/16 :goto_de6

    .line 2103
    :cond_bad
    :goto_bad
    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2104
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v18, 0x1

    add-int/lit8 v7, v7, -0x1

    move/from16 v51, v7

    move v7, v3

    move/from16 v3, v51

    .line 2105
    .local v3, "i":I
    .local v7, "procState":I
    :goto_bc4
    if-ltz v3, :cond_d62

    if-gtz v0, :cond_bde

    if-eqz v4, :cond_bde

    const/4 v8, 0x2

    if-le v7, v8, :cond_bce

    goto :goto_bde

    :cond_bce
    move/from16 v24, v12

    move v8, v13

    move/from16 v23, v14

    move-object v13, v15

    move-object v14, v1

    move-wide/from16 v51, v5

    move v5, v2

    move v2, v4

    move v4, v7

    move-wide/from16 v6, v51

    goto/16 :goto_d72

    .line 2109
    :cond_bde
    :goto_bde
    iget-object v8, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    .line 2110
    .local v8, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2111
    .local v9, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v9, v11, :cond_c02

    .line 2113
    move/from16 v44, v2

    move/from16 v26, v3

    move/from16 v48, v4

    move/from16 v28, v7

    move/from16 v24, v12

    move/from16 v32, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    const/4 v13, 0x4

    move-object v14, v1

    goto/16 :goto_c67

    .line 2115
    :cond_c02
    if-eqz p8, :cond_c34

    .line 2116
    const/16 v22, 0x1

    move/from16 v23, v14

    move-object v14, v1

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v14, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v23, "capability":I
    move-object/from16 v1, p0

    move/from16 v24, v12

    move v12, v2

    .end local v2    # "logUid":I
    .local v12, "logUid":I
    .local v24, "provi":I
    move-object v2, v9

    move/from16 v26, v3

    .end local v3    # "i":I
    .local v26, "i":I
    move/from16 v3, p2

    move/from16 v48, v4

    .end local v4    # "schedGroup":I
    .local v48, "schedGroup":I
    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v28, v7

    .end local v7    # "procState":I
    .local v28, "procState":I
    move-wide/from16 v6, p5

    move/from16 v44, v12

    move-object/from16 v19, v15

    const/16 v12, 0xc8

    move-object v15, v8

    .end local v8    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12    # "logUid":I
    .local v15, "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v44    # "logUid":I
    move/from16 v8, p7

    move-object v12, v9

    move/from16 v32, v13

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    const/4 v13, 0x4

    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "appUid":I
    .local v12, "client":Lcom/android/server/am/ProcessRecord;
    .local v32, "appUid":I
    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_c56

    .line 2119
    .end local v15    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v23    # "capability":I
    .end local v24    # "provi":I
    .end local v26    # "i":I
    .end local v28    # "procState":I
    .end local v32    # "appUid":I
    .end local v44    # "logUid":I
    .end local v48    # "schedGroup":I
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "logUid":I
    .restart local v3    # "i":I
    .restart local v4    # "schedGroup":I
    .restart local v7    # "procState":I
    .restart local v8    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .local v12, "provi":I
    .restart local v13    # "appUid":I
    .local v14, "capability":I
    :cond_c34
    move/from16 v44, v2

    move/from16 v26, v3

    move/from16 v48, v4

    move/from16 v28, v7

    move/from16 v24, v12

    move/from16 v32, v13

    move/from16 v23, v14

    move-object/from16 v19, v15

    move-object/from16 v50, v43

    move-object/from16 v49, v45

    const/4 v13, 0x4

    move-object v14, v1

    move-object v15, v8

    move-object v12, v9

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "logUid":I
    .end local v3    # "i":I
    .end local v4    # "schedGroup":I
    .end local v7    # "procState":I
    .end local v8    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v9    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "appUid":I
    .local v12, "client":Lcom/android/server/am/ProcessRecord;
    .local v14, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v15    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v23    # "capability":I
    .restart local v24    # "provi":I
    .restart local v26    # "i":I
    .restart local v28    # "procState":I
    .restart local v32    # "appUid":I
    .restart local v44    # "logUid":I
    .restart local v48    # "schedGroup":I
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v12, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2120
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v12, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2123
    :goto_c56
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move/from16 v4, v28

    move v5, v0

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v1

    if-eqz v1, :cond_c77

    .line 2124
    nop

    .line 2108
    .end local v15    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v23    # "capability":I
    .end local v24    # "provi":I
    .end local v26    # "i":I
    .end local v28    # "procState":I
    .end local v32    # "appUid":I
    .end local v44    # "logUid":I
    .end local v48    # "schedGroup":I
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v2    # "logUid":I
    .restart local v3    # "i":I
    .restart local v4    # "schedGroup":I
    .restart local v7    # "procState":I
    .local v12, "provi":I
    .restart local v13    # "appUid":I
    .local v14, "capability":I
    :goto_c67
    move-wide/from16 v6, p5

    move-object/from16 v13, v19

    move/from16 v8, v32

    move/from16 v5, v44

    move/from16 v4, v48

    move-object/from16 v45, v49

    move-object/from16 v43, v50

    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "logUid":I
    .end local v3    # "i":I
    .end local v4    # "schedGroup":I
    .end local v7    # "procState":I
    .end local v12    # "provi":I
    .end local v13    # "appUid":I
    .local v14, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v23    # "capability":I
    .restart local v24    # "provi":I
    .restart local v26    # "i":I
    .restart local v28    # "procState":I
    .restart local v32    # "appUid":I
    .restart local v44    # "logUid":I
    .restart local v48    # "schedGroup":I
    goto/16 :goto_d50

    .line 2127
    .local v12, "client":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_c77
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v9

    .line 2128
    .local v9, "clientAdj":I
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    .line 2130
    .local v1, "clientProcState":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_c85

    .line 2133
    const/16 v1, 0x13

    .line 2135
    :cond_c85
    const/4 v3, 0x0

    .line 2136
    .local v3, "adjType":Ljava/lang/String;
    if-le v0, v9, :cond_cb4

    .line 2137
    iget-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v4, :cond_c99

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_c99

    const/16 v5, 0xc8

    if-le v9, v5, :cond_c9b

    .line 2139
    const-string v3, "cch-ui-provider"

    goto :goto_ca7

    .line 2137
    :cond_c99
    const/16 v5, 0xc8

    .line 2141
    :cond_c9b
    if-lez v9, :cond_c9f

    .line 2142
    move v4, v9

    goto :goto_ca0

    :cond_c9f
    const/4 v4, 0x0

    :goto_ca0
    move v0, v4

    .line 2143
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2144
    const-string/jumbo v3, "provider"

    .line 2146
    :goto_ca7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v4

    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v6

    and-int/2addr v4, v6

    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    goto :goto_cb6

    .line 2136
    :cond_cb4
    const/16 v5, 0xc8

    .line 2149
    :goto_cb6
    if-gt v1, v13, :cond_cc3

    .line 2150
    if-nez v3, :cond_cbd

    .line 2151
    const-string/jumbo v3, "provider"

    .line 2165
    :cond_cbd
    const/4 v4, 0x2

    if-ne v1, v4, :cond_cc2

    .line 2166
    const/4 v1, 0x3

    goto :goto_cc3

    .line 2168
    :cond_cc2
    const/4 v1, 0x5

    .line 2172
    :cond_cc3
    :goto_cc3
    iget v4, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-wide/from16 v6, p5

    invoke-virtual {v15, v1, v4, v6, v7}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(IIJ)V

    .line 2173
    move/from16 v4, v28

    .end local v28    # "procState":I
    .local v4, "procState":I
    if-le v4, v1, :cond_cd2

    .line 2174
    move v4, v1

    .line 2175
    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2177
    :cond_cd2
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getCurrentSchedulingGroup()I

    move-result v8

    move/from16 v2, v48

    .end local v48    # "schedGroup":I
    .local v2, "schedGroup":I
    if-le v8, v2, :cond_cdb

    .line 2178
    const/4 v2, 0x2

    .line 2180
    :cond_cdb
    if-eqz v3, :cond_d41

    .line 2181
    iput-object v3, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2182
    const/4 v8, 0x1

    iput v8, v11, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    .line 2184
    iput-object v12, v11, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    .line 2185
    iput v1, v11, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 2186
    iget-object v8, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v8, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2187
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v8, :cond_cfc

    move/from16 v8, v32

    move/from16 v5, v44

    .end local v32    # "appUid":I
    .end local v44    # "logUid":I
    .local v5, "logUid":I
    .local v8, "appUid":I
    if-ne v5, v8, :cond_cf5

    goto :goto_d00

    :cond_cf5
    move-object/from16 v13, v19

    move-object/from16 v45, v49

    move-object/from16 v43, v50

    goto :goto_d4d

    .end local v5    # "logUid":I
    .end local v8    # "appUid":I
    .restart local v32    # "appUid":I
    .restart local v44    # "logUid":I
    :cond_cfc
    move/from16 v8, v32

    move/from16 v5, v44

    .line 2188
    .end local v32    # "appUid":I
    .end local v44    # "logUid":I
    .restart local v5    # "logUid":I
    .restart local v8    # "appUid":I
    :goto_d00
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v1

    move-object/from16 v1, v50

    .end local v1    # "clientProcState":I
    .local v22, "clientProcState":I
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v43, v1

    move-object/from16 v1, v49

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v45, v1

    const-string v1, ", due to "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adj="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2188
    move-object/from16 v13, v19

    invoke-virtual {v10, v13, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d4d

    .line 2180
    .end local v5    # "logUid":I
    .end local v8    # "appUid":I
    .end local v22    # "clientProcState":I
    .restart local v1    # "clientProcState":I
    .restart local v32    # "appUid":I
    .restart local v44    # "logUid":I
    :cond_d41
    move/from16 v22, v1

    move-object/from16 v13, v19

    move/from16 v8, v32

    move/from16 v5, v44

    move-object/from16 v45, v49

    move-object/from16 v43, v50

    .line 2108
    .end local v1    # "clientProcState":I
    .end local v3    # "adjType":Ljava/lang/String;
    .end local v9    # "clientAdj":I
    .end local v12    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v32    # "appUid":I
    .end local v44    # "logUid":I
    .restart local v5    # "logUid":I
    .restart local v8    # "appUid":I
    :goto_d4d
    move/from16 v28, v4

    move v4, v2

    .end local v2    # "schedGroup":I
    .local v4, "schedGroup":I
    .restart local v28    # "procState":I
    :goto_d50
    add-int/lit8 v3, v26, -0x1

    move v2, v5

    move-wide v5, v6

    move-object v15, v13

    move-object v1, v14

    move/from16 v14, v23

    move/from16 v12, v24

    move/from16 v7, v28

    const/4 v9, 0x3

    move v13, v8

    const/16 v8, 0xc8

    .end local v26    # "i":I
    .local v3, "i":I
    goto/16 :goto_bc4

    .line 2105
    .end local v5    # "logUid":I
    .end local v8    # "appUid":I
    .end local v23    # "capability":I
    .end local v24    # "provi":I
    .end local v28    # "procState":I
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v2, "logUid":I
    .restart local v7    # "procState":I
    .local v12, "provi":I
    .restart local v13    # "appUid":I
    .local v14, "capability":I
    :cond_d62
    move/from16 v26, v3

    move/from16 v24, v12

    move v8, v13

    move/from16 v23, v14

    move-object v13, v15

    move-object v14, v1

    move-wide/from16 v51, v5

    move v5, v2

    move v2, v4

    move v4, v7

    move-wide/from16 v6, v51

    .line 2198
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v3    # "i":I
    .end local v7    # "procState":I
    .end local v12    # "provi":I
    .end local v13    # "appUid":I
    .local v2, "schedGroup":I
    .local v4, "procState":I
    .restart local v5    # "logUid":I
    .restart local v8    # "appUid":I
    .local v14, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v23    # "capability":I
    .restart local v24    # "provi":I
    :goto_d72
    invoke-virtual {v14}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v1

    if-eqz v1, :cond_dce

    .line 2199
    if-lez v0, :cond_da6

    .line 2200
    const/4 v0, 0x0

    .line 2201
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2202
    const/4 v1, 0x2

    .line 2203
    .end local v2    # "schedGroup":I
    .local v1, "schedGroup":I
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2204
    const-string v2, "ext-provider"

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2205
    iget-object v2, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v2, v11, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    .line 2206
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_d91

    if-ne v5, v8, :cond_da7

    .line 2207
    :cond_d91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to external provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v13, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_da7

    .line 2199
    .end local v1    # "schedGroup":I
    .restart local v2    # "schedGroup":I
    :cond_da6
    move v1, v2

    .line 2211
    .end local v2    # "schedGroup":I
    .restart local v1    # "schedGroup":I
    :cond_da7
    :goto_da7
    const/4 v2, 0x6

    if-le v4, v2, :cond_dcb

    .line 2212
    const/4 v2, 0x6

    .line 2213
    .end local v4    # "procState":I
    .local v2, "procState":I
    invoke-virtual {v11, v2}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2214
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_db4

    if-ne v5, v8, :cond_dc8

    .line 2215
    :cond_db4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to external provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v13, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    .end local v14    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_dc8
    move v4, v1

    move v3, v2

    goto :goto_dd0

    .line 2211
    .end local v2    # "procState":I
    .restart local v4    # "procState":I
    .restart local v14    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_dcb
    move v3, v4

    move v4, v1

    goto :goto_dd0

    .line 2198
    .end local v1    # "schedGroup":I
    .local v2, "schedGroup":I
    :cond_dce
    move v3, v4

    move v4, v2

    .line 2102
    .end local v2    # "schedGroup":I
    .end local v14    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v3, "procState":I
    .local v4, "schedGroup":I
    :goto_dd0
    add-int/lit8 v12, v24, -0x1

    move v2, v5

    move-wide v5, v6

    move-object v15, v13

    move/from16 v14, v23

    const/4 v9, 0x3

    move v13, v8

    const/16 v8, 0xc8

    .end local v24    # "provi":I
    .restart local v12    # "provi":I
    goto/16 :goto_b9a

    .line 2099
    .end local v5    # "logUid":I
    .end local v8    # "appUid":I
    .end local v23    # "capability":I
    .local v2, "logUid":I
    .restart local v13    # "appUid":I
    .local v14, "capability":I
    :cond_ddd
    move-wide v6, v5

    move/from16 v24, v12

    move v8, v13

    move/from16 v23, v14

    move-object v13, v15

    move v5, v2

    const/4 v2, 0x6

    .line 2222
    .end local v2    # "logUid":I
    .end local v12    # "provi":I
    .end local v13    # "appUid":I
    .end local v14    # "capability":I
    .restart local v5    # "logUid":I
    .restart local v8    # "appUid":I
    .restart local v23    # "capability":I
    :goto_de6
    iget-wide v14, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    const-wide/16 v35, 0x0

    cmp-long v1, v14, v35

    if-lez v1, :cond_e4c

    iget-wide v14, v11, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v9, v3

    .end local v3    # "procState":I
    .local v9, "procState":I
    iget-wide v2, v1, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v14, v2

    cmp-long v1, v14, v6

    if-lez v1, :cond_e4b

    .line 2224
    const/16 v1, 0x2bc

    if-le v0, v1, :cond_e24

    .line 2225
    const/16 v0, 0x2bc

    .line 2226
    const/4 v4, 0x0

    .line 2227
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessRecord;->setCached(Z)V

    .line 2228
    const-string/jumbo v1, "recent-provider"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2229
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_e10

    if-ne v5, v8, :cond_e24

    .line 2230
    :cond_e10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to recent provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_e24
    const/16 v1, 0xf

    move v3, v9

    .end local v9    # "procState":I
    .restart local v3    # "procState":I
    if-le v3, v1, :cond_e4c

    .line 2235
    const/16 v3, 0xf

    .line 2236
    const-string/jumbo v1, "recent-provider"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2237
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v1, :cond_e36

    if-ne v5, v8, :cond_e4c

    .line 2238
    :cond_e36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to recent provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4c

    .line 2222
    .end local v3    # "procState":I
    .restart local v9    # "procState":I
    :cond_e4b
    move v3, v9

    .line 2244
    .end local v9    # "procState":I
    .restart local v3    # "procState":I
    :cond_e4c
    :goto_e4c
    const/16 v1, 0x13

    if-lt v3, v1, :cond_e67

    .line 2245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v1

    if-eqz v1, :cond_e5d

    .line 2247
    const/16 v3, 0x11

    .line 2248
    const-string v1, "cch-client-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    goto :goto_e67

    .line 2249
    :cond_e5d
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_e67

    .line 2252
    const/16 v3, 0x10

    .line 2253
    const-string v1, "cch-as-act"

    iput-object v1, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2257
    :cond_e67
    :goto_e67
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_eb6

    .line 2258
    if-eqz p4, :cond_ead

    if-nez p7, :cond_ead

    .line 2259
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v9, 0x3

    div-int/2addr v2, v9

    if-le v1, v2, :cond_e79

    const/4 v1, 0x1

    goto :goto_e7a

    :cond_e79
    const/4 v1, 0x0

    :goto_e7a
    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 2260
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2262
    iget-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-nez v1, :cond_ea9

    .line 2267
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_ea1

    iget-wide v1, v11, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iget-object v12, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2268
    invoke-virtual {v12}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v12

    cmp-long v1, v1, v12

    if-ltz v1, :cond_e9f

    .line 2269
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 2270
    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    const/4 v1, 0x0

    goto :goto_eaf

    .line 2268
    :cond_e9f
    const/4 v1, 0x1

    goto :goto_ea2

    .line 2267
    :cond_ea1
    const/4 v1, 0x1

    .line 2273
    :goto_ea2
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v2, v1

    iput v2, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v1, 0x0

    goto :goto_eaf

    .line 2277
    :cond_ea9
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    goto :goto_eaf

    .line 2258
    :cond_ead
    const/4 v1, 0x0

    const/4 v9, 0x3

    .line 2280
    :goto_eaf
    iget-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_eb8

    .line 2281
    const/16 v0, 0x320

    goto :goto_eb8

    .line 2257
    :cond_eb6
    const/4 v1, 0x0

    const/4 v9, 0x3

    .line 2285
    :cond_eb8
    :goto_eb8
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 2289
    iget v2, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, v2, :cond_ec8

    .line 2290
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2291
    iget v2, v11, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    const/16 v12, 0xfa

    if-gt v2, v12, :cond_ec8

    .line 2292
    const/4 v4, 0x2

    .line 2298
    :cond_ec8
    const/4 v2, 0x5

    if-lt v3, v2, :cond_ed6

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:I

    const/4 v12, 0x1

    if-eq v2, v12, :cond_ed7

    .line 2300
    if-le v4, v12, :cond_ed7

    .line 2301
    const/4 v4, 0x1

    goto :goto_ed7

    .line 2298
    :cond_ed6
    const/4 v12, 0x1

    .line 2306
    :cond_ed7
    :goto_ed7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_ee0

    .line 2307
    or-int v14, v23, v38

    .end local v23    # "capability":I
    .restart local v14    # "capability":I
    goto :goto_ee2

    .line 2306
    .end local v14    # "capability":I
    .restart local v23    # "capability":I
    :cond_ee0
    move/from16 v14, v23

    .line 2310
    .end local v23    # "capability":I
    .restart local v14    # "capability":I
    :goto_ee2
    invoke-direct {v10, v11, v3}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v2

    or-int/2addr v2, v14

    .line 2319
    .end local v14    # "capability":I
    .local v2, "capability":I
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v13, :cond_f24

    .line 2320
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    move-object/from16 v14, v42

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f1f

    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    const-string/jumbo v14, "vis-activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f1f

    if-nez v3, :cond_f0d

    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2321
    const-string/jumbo v14, "service"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f1f

    :cond_f0d
    if-ne v3, v9, :cond_f1d

    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 2322
    const-string/jumbo v13, "provider"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1b

    goto :goto_f1f

    :cond_f1b
    const/4 v9, 0x2

    goto :goto_f25

    .line 2321
    :cond_f1d
    const/4 v9, 0x2

    goto :goto_f25

    .line 2323
    :cond_f1f
    :goto_f1f
    const/4 v9, 0x2

    if-ne v4, v9, :cond_f25

    .line 2324
    const/4 v4, 0x6

    goto :goto_f25

    .line 2319
    :cond_f24
    const/4 v9, 0x2

    .line 2375
    :cond_f25
    :goto_f25
    invoke-virtual {v11, v0}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v13

    iput v13, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 2376
    iput v2, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    .line 2377
    invoke-virtual {v11, v4}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2378
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 2379
    invoke-virtual {v11, v3}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 2380
    move/from16 v13, v46

    .end local v46    # "foregroundActivities":Z
    .local v13, "foregroundActivities":Z
    invoke-virtual {v11, v13}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 2381
    iget v14, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v14, v11, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 2385
    iget-boolean v14, v11, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v14, :cond_f4d

    .line 2386
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v14, :cond_f49

    .line 2387
    const/4 v9, 0x6

    goto :goto_f4a

    .line 2388
    :cond_f49
    nop

    .line 2386
    :goto_f4a
    invoke-virtual {v11, v9}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 2394
    :cond_f4d
    iget v9, v11, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v14, v31

    .end local v31    # "prevAppAdj":I
    .local v14, "prevAppAdj":I
    if-lt v9, v14, :cond_f68

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v9

    move/from16 v15, v30

    .end local v30    # "prevProcState":I
    .local v15, "prevProcState":I
    if-lt v9, v15, :cond_f65

    iget v9, v11, Lcom/android/server/am/ProcessRecord;->curCapability:I

    move/from16 v1, v29

    .end local v29    # "prevCapability":I
    .local v1, "prevCapability":I
    if-eq v9, v1, :cond_f62

    goto :goto_f6c

    :cond_f62
    const/16 v27, 0x0

    goto :goto_f6e

    .end local v1    # "prevCapability":I
    .restart local v29    # "prevCapability":I
    :cond_f65
    move/from16 v1, v29

    .end local v29    # "prevCapability":I
    .restart local v1    # "prevCapability":I
    goto :goto_f6c

    .end local v1    # "prevCapability":I
    .end local v15    # "prevProcState":I
    .restart local v29    # "prevCapability":I
    .restart local v30    # "prevProcState":I
    :cond_f68
    move/from16 v1, v29

    move/from16 v15, v30

    .end local v29    # "prevCapability":I
    .end local v30    # "prevProcState":I
    .restart local v1    # "prevCapability":I
    .restart local v15    # "prevProcState":I
    :goto_f6c
    move/from16 v27, v12

    :goto_f6e
    return v27
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 268
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 270
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 272
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$OomAdjuster$w2JKyOlVhlVlGBOm72ve5OICjWM;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I

    .line 2399
    if-eqz p2, :cond_16

    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_d

    .line 2420
    return v1

    .line 2407
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2410
    return v1

    .line 2415
    :cond_14
    const/4 v0, 0x6

    return v0

    .line 2403
    :cond_16
    const/4 v0, 0x7

    return v0
.end method

.method static synthetic lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V
    .registers 3
    .param p0, "adjusterThread"    # Lcom/android/server/ServiceThread;

    .line 272
    nop

    .line 273
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v1, :cond_c

    .line 274
    const/16 v1, 0xa

    goto :goto_d

    .line 275
    :cond_c
    const/4 v1, 0x5

    .line 272
    :goto_d
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/os/Message;)Z
    .registers 7
    .param p0, "msg"    # Landroid/os/Message;

    .line 291
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 292
    .local v0, "pid":I
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 293
    .local v1, "group":I
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProcessGroup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 298
    :cond_2b
    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_37
    .catchall {:try_start_2b .. :try_end_2e} :catchall_32

    .line 304
    :goto_2e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    goto :goto_39

    .line 304
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    throw v4

    .line 299
    :catch_37
    move-exception v4

    goto :goto_2e

    .line 306
    :goto_39
    const/4 v2, 0x1

    return v2
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowUptime"    # J

    .line 3126
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_d

    .line 3127
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 3128
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastTopTime:J

    .line 3130
    :cond_d
    return-void
.end method

.method private maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 3078
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v0, :cond_38

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking proc ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] state changes: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3079
    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_3f

    .line 3084
    return-void

    .line 3090
    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    if-le v0, v1, :cond_84

    .line 3091
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    goto :goto_84

    .line 3094
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v0, v1, :cond_77

    .line 3095
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_67

    .line 3096
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 3097
    const/4 v0, 0x0

    .local v0, "isInteraction":Z
    goto :goto_88

    .line 3099
    .end local v0    # "isInteraction":Z
    :cond_67
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getFgInteractionTime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    add-long/2addr v0, v7

    cmp-long v0, p2, v0

    if-lez v0, :cond_75

    move v5, v6

    :cond_75
    move v0, v5

    .restart local v0    # "isInteraction":Z
    goto :goto_88

    .line 3103
    .end local v0    # "isInteraction":Z
    :cond_77
    nop

    .line 3104
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    if-gt v0, v2, :cond_7f

    move v5, v6

    :cond_7f
    move v0, v5

    .line 3105
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    goto :goto_88

    .line 3092
    .end local v0    # "isInteraction":Z
    :cond_84
    :goto_84
    const/4 v0, 0x1

    .line 3093
    .restart local v0    # "isInteraction":Z
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setFgInteractionTime(J)V

    .line 3107
    :goto_88
    if-eqz v0, :cond_b7

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    if-eqz v1, :cond_9c

    .line 3108
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, p2, v5

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_b7

    .line 3110
    :cond_9c
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 3111
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 3112
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_b7

    .line 3113
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a6
    array-length v6, v1

    if-ge v5, v6, :cond_b7

    .line 3114
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v7, v1, v5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v7, v8, v2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3113
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 3119
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_b7
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    .line 3120
    if-nez v0, :cond_be

    .line 3121
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setInteractionEventTime(J)V

    .line 3123
    :cond_be
    return-void
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "procState"    # I
    .param p4, "adj"    # I
    .param p5, "cycleReEval"    # Z

    .line 2437
    iget-boolean v0, p2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1d

    .line 2441
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 2444
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v1, v2, :cond_1d

    .line 2445
    if-eqz p5, :cond_1c

    .line 2448
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawProcState()I

    move-result v1

    if-lt v1, p3, :cond_1d

    .line 2449
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    if-lt v1, p4, :cond_1d

    .line 2450
    return v0

    .line 2455
    :cond_1c
    return v0

    .line 2459
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z
    .registers 36
    .param p1, "now"    # J
    .param p3, "nowElapsed"    # J
    .param p5, "oldTime"    # J
    .param p7, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 876
    move-object/from16 v7, p0

    move-wide/from16 v8, p5

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 877
    .local v10, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 879
    .local v11, "numLru":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v12, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 880
    .local v12, "emptyProcessLimit":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int v13, v0, v12

    .line 882
    .local v13, "cachedProcessLimit":I
    const/4 v0, 0x0

    .line 883
    .local v0, "lastCachedGroup":I
    const/4 v1, 0x0

    .line 884
    .local v1, "lastCachedGroupUid":I
    const/4 v2, 0x0

    .line 885
    .local v2, "numCached":I
    const/4 v3, 0x0

    .line 886
    .local v3, "numCachedExtraGroup":I
    const/4 v4, 0x0

    .line 887
    .local v4, "numEmpty":I
    const/4 v5, 0x0

    .line 889
    .local v5, "numTrimming":I
    iget-object v6, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v6, :cond_2d

    .line 890
    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 891
    iget-object v6, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    .line 892
    iget-object v6, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v6}, Lcom/android/server/am/DynamicHiddenApp;->initDhaProcessesLocked()V

    .line 895
    :cond_2d
    add-int/lit8 v6, v11, -0x1

    move v14, v0

    move v15, v1

    move/from16 v16, v3

    move v3, v5

    move v5, v2

    move/from16 v27, v6

    move v6, v4

    move/from16 v4, v27

    .end local v0    # "lastCachedGroup":I
    .end local v1    # "lastCachedGroupUid":I
    .end local v2    # "numCached":I
    .local v3, "numTrimming":I
    .local v4, "i":I
    .local v5, "numCached":I
    .local v6, "numEmpty":I
    .local v14, "lastCachedGroup":I
    .local v15, "lastCachedGroupUid":I
    .local v16, "numCachedExtraGroup":I
    :goto_3a
    if-ltz v4, :cond_28d

    .line 896
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 897
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_276

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_276

    .line 899
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_71

    .line 900
    const/16 v19, 0x1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-object/from16 v18, v10

    move v10, v1

    .end local v10    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v18, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object v1, v2

    move-object v10, v2

    move/from16 v17, v11

    const/4 v11, 0x1

    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "numLru":I
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    .local v17, "numLru":I
    move/from16 v2, v19

    move/from16 v20, v3

    move/from16 v19, v4

    .end local v3    # "numTrimming":I
    .end local v4    # "i":I
    .local v19, "i":I
    .local v20, "numTrimming":I
    move-wide/from16 v3, p1

    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .local v21, "numCached":I
    .local v22, "numEmpty":I
    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_7f

    .line 899
    .end local v17    # "numLru":I
    .end local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19    # "i":I
    .end local v20    # "numTrimming":I
    .end local v21    # "numCached":I
    .end local v22    # "numEmpty":I
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "numTrimming":I
    .restart local v4    # "i":I
    .restart local v5    # "numCached":I
    .restart local v6    # "numEmpty":I
    .local v10, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "numLru":I
    :cond_71
    move/from16 v20, v3

    move/from16 v19, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v18, v10

    move/from16 v17, v11

    const/4 v11, 0x1

    move-object v10, v2

    .line 904
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "numTrimming":I
    .end local v4    # "i":I
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .end local v11    # "numLru":I
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v17    # "numLru":I
    .restart local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v19    # "i":I
    .restart local v20    # "numTrimming":I
    .restart local v21    # "numCached":I
    .restart local v22    # "numEmpty":I
    :goto_7f
    const/4 v0, 0x0

    .line 905
    .local v0, "isKillSkip":I
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const/16 v2, 0x11

    if-nez v1, :cond_9a

    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerConstants;->getOverrideMaxCachedProcesses()I

    move-result v1

    if-gez v1, :cond_9a

    .line 906
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->dhaProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    move v3, v12

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_244

    .line 909
    :cond_9a
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v4, 0x0

    const/16 v5, 0x13

    const/16 v6, 0x10

    if-eqz v1, :cond_124

    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    move v0, v1

    if-lez v1, :cond_124

    .line 910
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v1, v11, :cond_b9

    .line 911
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V

    move/from16 v5, v21

    move/from16 v4, v22

    goto/16 :goto_120

    .line 912
    :cond_b9
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-ne v1, v11, :cond_c7

    .line 913
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->MLLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V

    move/from16 v5, v21

    move/from16 v4, v22

    goto :goto_120

    .line 916
    :cond_c7
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    if-eq v1, v6, :cond_d8

    if-eq v1, v2, :cond_d8

    if-eq v1, v5, :cond_d7

    .line 924
    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v1, v11

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_de

    .line 922
    :cond_d7
    goto :goto_de

    .line 919
    :cond_d8
    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v1, v11

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 920
    nop

    .line 927
    :goto_de
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11c

    .line 928
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    move/from16 v5, v21

    .end local v21    # "numCached":I
    .restart local v5    # "numCached":I
    invoke-virtual {v1, v10, v5, v13}, Lcom/android/server/am/DynamicHiddenApp;->destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 929
    add-int/lit8 v5, v5, 0x1

    .line 930
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v1, :cond_10d

    .line 931
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v1, :cond_102

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v14, v1, :cond_102

    .line 936
    add-int/lit8 v16, v16, 0x1

    move v3, v12

    move/from16 v6, v22

    goto/16 :goto_244

    .line 938
    :cond_102
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 939
    iget v14, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    move v3, v12

    move/from16 v6, v22

    goto/16 :goto_244

    .line 942
    :cond_10d
    move v14, v4

    move v15, v4

    move v3, v12

    move/from16 v6, v22

    goto/16 :goto_244

    .line 945
    :cond_114
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    move/from16 v4, v22

    .end local v22    # "numEmpty":I
    .local v4, "numEmpty":I
    invoke-virtual {v1, v10, v4, v8, v9}, Lcom/android/server/am/DynamicHiddenApp;->killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_120

    .line 927
    .end local v4    # "numEmpty":I
    .end local v5    # "numCached":I
    .restart local v21    # "numCached":I
    .restart local v22    # "numEmpty":I
    :cond_11c
    move/from16 v5, v21

    move/from16 v4, v22

    .line 1029
    :goto_120
    move v6, v4

    move v3, v12

    .end local v21    # "numCached":I
    .end local v22    # "numEmpty":I
    .restart local v4    # "numEmpty":I
    .restart local v5    # "numCached":I
    goto/16 :goto_244

    .line 909
    .end local v4    # "numEmpty":I
    .end local v5    # "numCached":I
    .restart local v21    # "numCached":I
    .restart local v22    # "numEmpty":I
    :cond_124
    move/from16 v4, v21

    move/from16 v1, v22

    .line 951
    .end local v21    # "numCached":I
    .end local v22    # "numEmpty":I
    .local v1, "numEmpty":I
    .local v4, "numCached":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-eq v3, v6, :cond_1e6

    if-eq v3, v2, :cond_1e6

    if-eq v3, v5, :cond_139

    .line 1024
    iget v3, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v3, v11

    iput v3, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    move v3, v12

    goto :goto_177

    .line 992
    :cond_139
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->dedicated:Z

    if-eqz v3, :cond_13f

    .line 994
    move v3, v12

    goto :goto_177

    .line 997
    :cond_13f
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    const-string/jumbo v5, "s"

    const-wide/16 v23, 0x3e8

    if-le v1, v3, :cond_17b

    iget-wide v2, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_17b

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v25, 0x1b7740

    add-long v25, v8, v25

    move v3, v12

    .end local v12    # "emptyProcessLimit":I
    .local v3, "emptyProcessLimit":I
    iget-wide v11, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long v25, v25, v11

    div-long v11, v25, v23

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/16 v6, 0xd

    const/4 v11, 0x1

    invoke-virtual {v10, v2, v6, v5, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1029
    .end local v3    # "emptyProcessLimit":I
    .restart local v12    # "emptyProcessLimit":I
    :goto_177
    move v6, v1

    move v5, v4

    .end local v12    # "emptyProcessLimit":I
    .restart local v3    # "emptyProcessLimit":I
    goto/16 :goto_244

    .line 997
    .end local v3    # "emptyProcessLimit":I
    .restart local v12    # "emptyProcessLimit":I
    :cond_17b
    move v3, v12

    .line 1006
    .end local v12    # "emptyProcessLimit":I
    .restart local v3    # "emptyProcessLimit":I
    add-int/lit8 v6, v1, 0x1

    .line 1007
    .end local v1    # "numEmpty":I
    .restart local v6    # "numEmpty":I
    if-le v6, v3, :cond_1e3

    .line 1008
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->BOOTING_EMPTY_KILL_SKIP_ENABLE:Z

    if-eqz v1, :cond_1ca

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->sBEKS_processList:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1009
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/32 v11, 0x927c0

    cmp-long v1, v1, v11

    if-gtz v1, :cond_1ca

    .line 1011
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_1c8

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BootKillSkip proc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uptime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    div-long v11, v11, v23

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjuster"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto :goto_1e4

    .line 1011
    :cond_1c8
    const/4 v11, 0x1

    goto :goto_1e4

    .line 1016
    :cond_1ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v5, 0xd

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v5, v2, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_1e4

    .line 1007
    :cond_1e3
    const/4 v11, 0x1

    .line 1029
    :goto_1e4
    move v5, v4

    goto :goto_244

    .line 951
    .end local v3    # "emptyProcessLimit":I
    .end local v6    # "numEmpty":I
    .restart local v1    # "numEmpty":I
    .restart local v12    # "emptyProcessLimit":I
    :cond_1e6
    move v3, v12

    .line 954
    .end local v12    # "emptyProcessLimit":I
    .restart local v3    # "emptyProcessLimit":I
    iget v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v11

    iput v2, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 955
    add-int/lit8 v5, v4, 0x1

    .line 956
    .end local v4    # "numCached":I
    .restart local v5    # "numCached":I
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eqz v2, :cond_206

    .line 957
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v2, :cond_1ff

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v14, v2, :cond_1ff

    .line 962
    add-int/lit8 v16, v16, 0x1

    goto :goto_209

    .line 964
    :cond_1ff
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 965
    iget v14, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_209

    .line 968
    :cond_206
    const/4 v2, 0x0

    move v14, v2

    move v15, v2

    .line 970
    :goto_209
    sub-int v2, v5, v16

    if-le v2, v13, :cond_243

    .line 972
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_224

    .line 973
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v4, "com.android.vending"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_224

    .line 974
    const-string v2, "GATE"

    const-string v4, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_224
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    if-eq v2, v6, :cond_22b

    goto :goto_243

    .line 983
    :cond_22b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    const/16 v6, 0xd

    const/4 v11, 0x1

    invoke-virtual {v10, v2, v6, v4, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1029
    :cond_243
    :goto_243
    move v6, v1

    .end local v1    # "numEmpty":I
    .restart local v6    # "numEmpty":I
    :goto_244
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_25e

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v1

    if-gtz v1, :cond_25e

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v1, :cond_25e

    .line 1038
    const-string/jumbo v1, "isolated not needed"

    const/16 v2, 0x11

    const/16 v4, 0xd

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v4, v2, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_261

    .line 1042
    :cond_25e
    invoke-direct {v7, v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1045
    :goto_261
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_273

    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_273

    .line 1047
    move/from16 v2, v20

    .end local v20    # "numTrimming":I
    .local v2, "numTrimming":I
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .end local v2    # "numTrimming":I
    .local v1, "numTrimming":I
    goto :goto_283

    .line 1045
    .end local v1    # "numTrimming":I
    .restart local v20    # "numTrimming":I
    :cond_273
    move/from16 v2, v20

    .end local v20    # "numTrimming":I
    .restart local v2    # "numTrimming":I
    goto :goto_283

    .line 897
    .end local v0    # "isKillSkip":I
    .end local v17    # "numLru":I
    .end local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19    # "i":I
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    .local v3, "numTrimming":I
    .local v4, "i":I
    .local v10, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "numLru":I
    .restart local v12    # "emptyProcessLimit":I
    :cond_276
    move/from16 v19, v4

    move v4, v5

    move v1, v6

    move-object/from16 v18, v10

    move/from16 v17, v11

    move-object v10, v2

    move v2, v3

    move v3, v12

    .line 895
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .end local v10    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "numLru":I
    .end local v12    # "emptyProcessLimit":I
    .local v1, "numEmpty":I
    .local v2, "numTrimming":I
    .local v3, "emptyProcessLimit":I
    .local v4, "numCached":I
    .restart local v17    # "numLru":I
    .restart local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v19    # "i":I
    move v6, v1

    move v5, v4

    .end local v1    # "numEmpty":I
    .end local v4    # "numCached":I
    .restart local v5    # "numCached":I
    .restart local v6    # "numEmpty":I
    :goto_283
    add-int/lit8 v4, v19, -0x1

    move v12, v3

    move/from16 v11, v17

    move-object/from16 v10, v18

    move v3, v2

    .end local v19    # "i":I
    .local v4, "i":I
    goto/16 :goto_3a

    .end local v2    # "numTrimming":I
    .end local v17    # "numLru":I
    .end local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v3, "numTrimming":I
    .restart local v10    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "numLru":I
    .restart local v12    # "emptyProcessLimit":I
    :cond_28d
    move v2, v3

    move/from16 v19, v4

    move v4, v5

    move v1, v6

    move-object/from16 v18, v10

    move/from16 v17, v11

    move v3, v12

    .line 1053
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .end local v10    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "numLru":I
    .end local v12    # "emptyProcessLimit":I
    .restart local v1    # "numEmpty":I
    .restart local v2    # "numTrimming":I
    .local v3, "emptyProcessLimit":I
    .local v4, "numCached":I
    .restart local v17    # "numLru":I
    .restart local v18    # "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->getOverrideMaxCachedProcesses()I

    move-result v0

    if-gez v0, :cond_2e7

    .line 1054
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v0, :cond_2db

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v0, :cond_2db

    .line 1055
    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->postInitDhaProcessesLocked()V

    .line 1057
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/am/DynamicHiddenApp;->getBgProcCount(I)I

    move-result v5

    .line 1058
    .end local v4    # "numCached":I
    .restart local v5    # "numCached":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/server/am/DynamicHiddenApp;->getBgProcCount(I)I

    move-result v6

    .line 1059
    .end local v1    # "numEmpty":I
    .restart local v6    # "numEmpty":I
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;->getBgProcCount(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1060
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp;->getBgProcCount(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1062
    iput v5, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1063
    iput v6, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 1064
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 1065
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    goto :goto_2e9

    .line 1069
    .end local v5    # "numCached":I
    .end local v6    # "numEmpty":I
    .restart local v1    # "numEmpty":I
    .restart local v4    # "numCached":I
    :cond_2db
    iput v4, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1070
    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 1071
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 1072
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    iput v0, v7, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 1079
    :cond_2e7
    move v6, v1

    move v5, v4

    .end local v1    # "numEmpty":I
    .end local v4    # "numCached":I
    .restart local v5    # "numCached":I
    .restart local v6    # "numEmpty":I
    :goto_2e9
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2f4

    .line 1080
    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/wm/SluggishInfo;->refreshDHAStatForSluggishInfo(IIII)V

    .line 1084
    :cond_2f4
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    .line 1086
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/server/am/ActivityManagerService;->updateLowMemStateLocked(III)Z

    move-result v0

    return v0
.end method

.method private updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1090
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 1091
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_2d

    .line 1092
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->ephemeral:Z

    .line 1093
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_1d

    .line 1094
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1096
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1097
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    .line 1099
    :cond_26
    iget v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curCapability:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/UidRecord;->curCapability:I

    .line 1101
    :cond_2d
    return-void
.end method

.method private final updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z
    .registers 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"    # I
    .param p3, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"    # Z
    .param p5, "now"    # J

    .line 362
    move-object v9, p0

    move-object v10, p1

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_8

    .line 363
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 367
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 368
    .local v11, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v11, :cond_2c

    .line 369
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_29

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_29
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 375
    :cond_2c
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v2, p4

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    .line 379
    .local v0, "success":Z
    if-eqz v11, :cond_ae

    .line 382
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget-object v1, v1, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    .line 383
    .local v1, "procRecords":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_51
    if-ltz v2, :cond_76

    .line 384
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 385
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v4, :cond_73

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_73

    .line 386
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v4, :cond_70

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v4

    if-gtz v4, :cond_70

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v4, :cond_70

    goto :goto_73

    .line 391
    :cond_70
    invoke-direct {p0, v3}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 383
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_73
    :goto_73
    add-int/lit8 v2, v2, -0x1

    goto :goto_51

    .line 395
    .end local v2    # "i":I
    :cond_76
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_ab

    iget v2, v11, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 396
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    if-ne v2, v3, :cond_96

    iget v2, v11, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v3, v11, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v2, v3, :cond_96

    iget-boolean v2, v11, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v3, v11, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, v3, :cond_93

    goto :goto_96

    :cond_93
    move-wide/from16 v3, p5

    goto :goto_b0

    .line 399
    :cond_96
    :goto_96
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 400
    .local v2, "uids":Lcom/android/server/am/ActiveUids;
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 401
    iget v3, v11, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2, v3, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 402
    move-wide/from16 v3, p5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    .line 403
    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V

    goto :goto_b0

    .line 395
    .end local v2    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_ab
    move-wide/from16 v3, p5

    goto :goto_b0

    .line 379
    .end local v1    # "procRecords":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    :cond_ae
    move-wide/from16 v3, p5

    .line 407
    :goto_b0
    return v0
.end method

.method private updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .registers 36
    .param p1, "oomAdjReason"    # Ljava/lang/String;
    .param p2, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uids"    # Lcom/android/server/am/ActiveUids;
    .param p5, "potentialCycles"    # Z
    .param p6, "startProfiling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    .line 552
    .local p3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v9, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_13

    .line 553
    move-object/from16 v12, p1

    invoke-static {v10, v11, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 554
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_15

    .line 552
    :cond_13
    move-object/from16 v12, p1

    .line 556
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 557
    .local v13, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 558
    .local v7, "nowElapsed":J
    const-wide/32 v0, 0x1b7740

    sub-long v15, v13, v0

    .line 559
    .local v15, "oldTime":J
    const/4 v5, 0x0

    const/16 v17, 0x1

    if-nez p3, :cond_2a

    move/from16 v0, v17

    goto :goto_2b

    :cond_2a
    move v0, v5

    :goto_2b
    move/from16 v18, v0

    .line 560
    .local v18, "fullUpdate":Z
    move-object/from16 v0, p4

    .line 561
    .local v0, "activeUids":Lcom/android/server/am/ActiveUids;
    if-eqz v18, :cond_36

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    goto :goto_38

    .line 562
    :cond_36
    move-object/from16 v1, p3

    :goto_38
    move-object v6, v1

    .line 563
    .local v6, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 565
    .local v4, "numProc":I
    if-nez v0, :cond_5f

    .line 566
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 567
    .local v1, "numUids":I
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 568
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 569
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    if-ge v2, v1, :cond_5d

    .line 570
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 571
    .local v3, "r":Lcom/android/server/am/UidRecord;
    iget v10, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v0, v10, v3}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 569
    .end local v3    # "r":Lcom/android/server/am/UidRecord;
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x40

    goto :goto_4b

    :cond_5d
    move-object v10, v0

    goto :goto_60

    .line 565
    .end local v1    # "numUids":I
    .end local v2    # "i":I
    :cond_5f
    move-object v10, v0

    .line 576
    .end local v0    # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v10, "activeUids":Lcom/android/server/am/ActiveUids;
    :goto_60
    invoke-virtual {v10}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_66
    const-string v11, "ActivityManager"

    if-ltz v0, :cond_8c

    .line 577
    invoke-virtual {v10, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 578
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v2, :cond_86

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting update of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_86
    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->reset()V

    .line 576
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    .line 584
    .end local v0    # "i":I
    :cond_8c
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_99

    .line 585
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->rankTaskLayersIfNeeded()V

    .line 588
    :cond_99
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 589
    if-eqz v18, :cond_a5

    .line 590
    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 591
    iput v5, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 594
    :cond_a5
    const/4 v0, 0x0

    .line 595
    .local v0, "retryCycles":Z
    if-nez v18, :cond_ad

    if-eqz p5, :cond_ab

    goto :goto_ad

    :cond_ab
    move v1, v5

    goto :goto_af

    :cond_ad
    :goto_ad
    move/from16 v1, v17

    :goto_af
    move/from16 v19, v1

    .line 598
    .local v19, "computeClients":Z
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_b3
    if-ltz v1, :cond_d9

    .line 599
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 600
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iput-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 602
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v3, v5, :cond_d5

    .line 603
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 604
    const/16 v5, 0x13

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 605
    const/16 v5, 0x3e9

    invoke-virtual {v2, v5}, Lcom/android/server/am/ProcessRecord;->setCurRawAdj(I)V

    .line 606
    iput v3, v2, Lcom/android/server/am/ProcessRecord;->setCapability:I

    .line 607
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 598
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_d5
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    goto :goto_b3

    .line 610
    .end local v1    # "i":I
    :cond_d9
    add-int/lit8 v1, v4, -0x1

    move/from16 v21, v0

    move v5, v1

    .end local v0    # "retryCycles":Z
    .local v5, "i":I
    .local v21, "retryCycles":Z
    :goto_de
    if-ltz v5, :cond_132

    .line 611
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 612
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v3, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_120

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_120

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 614
    const/16 v20, 0x3e9

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v23, v2

    move/from16 v2, v20

    move-object/from16 v24, v3

    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v3, p2

    move/from16 v25, v4

    .end local v4    # "numProc":I
    .local v25, "numProc":I
    move/from16 v4, v18

    move/from16 v20, v5

    move-object/from16 v26, v6

    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v20, "i":I
    .local v26, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide v5, v13

    move-wide/from16 v27, v7

    .end local v7    # "nowElapsed":J
    .local v27, "nowElapsed":J
    move/from16 v7, v22

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 617
    move-object/from16 v0, v24

    .end local v24    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    or-int v1, v21, v1

    .line 619
    .end local v21    # "retryCycles":Z
    .local v1, "retryCycles":Z
    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v2, v0, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    move/from16 v21, v1

    goto :goto_129

    .line 612
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "retryCycles":Z
    .end local v20    # "i":I
    .end local v25    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v27    # "nowElapsed":J
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "numProc":I
    .restart local v5    # "i":I
    .restart local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "nowElapsed":J
    .restart local v21    # "retryCycles":Z
    :cond_120
    move-object v0, v3

    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    .line 610
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "numProc":I
    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "nowElapsed":J
    .restart local v20    # "i":I
    .restart local v25    # "numProc":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v27    # "nowElapsed":J
    :goto_129
    add-int/lit8 v5, v20, -0x1

    move/from16 v4, v25

    move-object/from16 v6, v26

    move-wide/from16 v7, v27

    .end local v20    # "i":I
    .restart local v5    # "i":I
    goto :goto_de

    .end local v25    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v27    # "nowElapsed":J
    .restart local v4    # "numProc":I
    .restart local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "nowElapsed":J
    :cond_132
    move/from16 v25, v4

    move/from16 v20, v5

    move-object/from16 v26, v6

    move-wide/from16 v27, v7

    .line 623
    .end local v4    # "numProc":I
    .end local v5    # "i":I
    .end local v6    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "nowElapsed":J
    .restart local v25    # "numProc":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v27    # "nowElapsed":J
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 625
    if-eqz v19, :cond_1d6

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "cycleCount":I
    :goto_144
    if-eqz v21, :cond_1d3

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d3

    .line 632
    add-int/lit8 v20, v0, 0x1

    .line 633
    .end local v0    # "cycleCount":I
    .local v20, "cycleCount":I
    const/4 v0, 0x0

    .line 635
    .end local v21    # "retryCycles":Z
    .local v0, "retryCycles":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14e
    move/from16 v8, v25

    .end local v25    # "numProc":I
    .local v8, "numProc":I
    if-ge v1, v8, :cond_179

    .line 636
    move-object/from16 v7, v26

    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v7, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 637
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_172

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_172

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v3, :cond_172

    .line 638
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    .line 639
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/ProcessRecord;->completedAdjSeq:I

    .line 635
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_172
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v26, v7

    move/from16 v25, v8

    goto :goto_14e

    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_179
    move-object/from16 v7, v26

    .line 643
    .end local v1    # "i":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    move/from16 v21, v0

    move v5, v1

    .end local v0    # "retryCycles":Z
    .restart local v5    # "i":I
    .restart local v21    # "retryCycles":Z
    :goto_17f
    if-ge v5, v8, :cond_1c7

    .line 644
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 645
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1b8

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1b8

    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    if-eqz v0, :cond_1b8

    .line 646
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    const/4 v4, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v3, p2

    move/from16 v24, v5

    move-object/from16 v25, v6

    .end local v5    # "i":I
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "i":I
    .local v25, "app":Lcom/android/server/am/ProcessRecord;
    move-wide v5, v13

    move-object/from16 v26, v7

    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v7, v22

    move/from16 v22, v8

    .end local v8    # "numProc":I
    .local v22, "numProc":I
    move/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 648
    const/16 v21, 0x1

    goto :goto_1c0

    .line 645
    .end local v22    # "numProc":I
    .end local v24    # "i":I
    .end local v25    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "i":I
    .restart local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "numProc":I
    :cond_1b8
    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v22, v8

    .line 643
    .end local v5    # "i":I
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "numProc":I
    .restart local v22    # "numProc":I
    .restart local v24    # "i":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1c0
    :goto_1c0
    add-int/lit8 v5, v24, 0x1

    move/from16 v8, v22

    move-object/from16 v7, v26

    .end local v24    # "i":I
    .restart local v5    # "i":I
    goto :goto_17f

    .end local v22    # "numProc":I
    .end local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8    # "numProc":I
    :cond_1c7
    move/from16 v24, v5

    move-object/from16 v26, v7

    move/from16 v22, v8

    .end local v5    # "i":I
    .end local v7    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8    # "numProc":I
    .restart local v22    # "numProc":I
    .restart local v24    # "i":I
    .restart local v26    # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v0, v20

    move/from16 v25, v22

    .end local v24    # "i":I
    goto/16 :goto_144

    .line 631
    .end local v20    # "cycleCount":I
    .end local v22    # "numProc":I
    .local v0, "cycleCount":I
    .local v25, "numProc":I
    :cond_1d3
    move/from16 v22, v25

    .end local v25    # "numProc":I
    .restart local v22    # "numProc":I
    goto :goto_1d8

    .line 625
    .end local v0    # "cycleCount":I
    .end local v22    # "numProc":I
    .restart local v25    # "numProc":I
    :cond_1d6
    move/from16 v22, v25

    .line 655
    .end local v25    # "numProc":I
    .restart local v22    # "numProc":I
    :goto_1d8
    const/4 v8, 0x0

    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 656
    iput v8, v9, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 658
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide/from16 v3, v27

    move-wide v5, v15

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLocked(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v0

    .line 659
    .local v0, "allChanged":Z
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 661
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v1, :cond_1fb

    .line 664
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v2, "always-finish"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 667
    :cond_1fb
    if-eqz v0, :cond_208

    .line 668
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 669
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v2

    .line 668
    invoke-virtual {v1, v13, v14, v8, v2}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 672
    :cond_208
    move-wide/from16 v1, v27

    .end local v27    # "nowElapsed":J
    .local v1, "nowElapsed":J
    invoke-direct {v9, v10, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V

    .line 674
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v13, v14}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v3

    if-eqz v3, :cond_227

    .line 675
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 680
    :cond_227
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v3, v4, v13, v14}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 682
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v3, :cond_253

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v13

    .line 688
    .local v3, "duration":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did OOM ADJ in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v3    # "duration":J
    :cond_253
    if-eqz p6, :cond_261

    .line 692
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 693
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 695
    :cond_261
    return-void
.end method

.method private updateUidsLocked(Lcom/android/server/am/ActiveUids;J)V
    .registers 15
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p2, "nowElapsed"    # J

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1106
    .local v0, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becameIdle is cleared without AM Lock. activeUids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    .line 1108
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    const-string v2, "OomAdjuster"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1114
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_38

    .line 1115
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1117
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_3e
    if-ltz v1, :cond_1bd

    .line 1118
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1119
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v4, 0x0

    .line 1120
    .local v4, "uidChange":I
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_1b0

    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 1121
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v5, v7, :cond_61

    iget v5, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v7, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    if-ne v5, v7, :cond_61

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    iget-boolean v7, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v5, v7, :cond_1b0

    .line 1124
    :cond_61
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    const-string v7, "Changes in "

    const-string v8, "ActivityManager"

    const-string v9, " to "

    if-eqz v5, :cond_b5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": proc state from "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", capability from "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", whitelist from "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1124
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_b5
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-nez v5, :cond_106

    iget v5, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    iget v10, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    if-eq v5, v10, :cond_106

    .line 1133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Caller="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    .line 1136
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_106
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_147

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-nez v5, :cond_147

    .line 1143
    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v5

    if-eqz v5, :cond_121

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    if-eqz v5, :cond_13a

    .line 1145
    :cond_121
    iput-wide p2, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 1146
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_13a

    .line 1151
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1155
    :cond_13a
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_157

    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    if-nez v5, :cond_157

    .line 1156
    const/4 v4, 0x2

    .line 1157
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_157

    .line 1160
    :cond_147
    iget-boolean v5, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v5, :cond_153

    .line 1161
    const/4 v4, 0x4

    .line 1162
    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v5}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1163
    iput-boolean v7, v3, Lcom/android/server/am/UidRecord;->idle:Z

    .line 1165
    :cond_153
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 1167
    :cond_157
    :goto_157
    iget v5, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    const/16 v8, 0xb

    if-le v5, v8, :cond_15f

    move v5, v2

    goto :goto_160

    :cond_15f
    move v5, v7

    .line 1169
    .local v5, "wasCached":Z
    :goto_160
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_167

    move v7, v2

    .line 1171
    .local v7, "isCached":Z
    :cond_167
    if-ne v5, v7, :cond_16d

    iget v8, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    if-ne v8, v6, :cond_175

    .line 1172
    :cond_16d
    if-eqz v7, :cond_172

    const/16 v6, 0x8

    goto :goto_174

    :cond_172
    const/16 v6, 0x10

    :goto_174
    or-int/2addr v4, v6

    .line 1174
    :cond_175
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    iput v6, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 1175
    iget v6, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    iput v6, v3, Lcom/android/server/am/UidRecord;->setCapability:I

    .line 1176
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v6, v3, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 1177
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->idle:Z

    iput-boolean v6, v3, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 1178
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v8, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget v9, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 1179
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    invoke-virtual {v6, v3, v8, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 1180
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    iget v10, v3, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1182
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->foregroundServices:Z

    if-eqz v6, :cond_1b0

    .line 1183
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1186
    .end local v5    # "wasCached":Z
    .end local v7    # "isCached":Z
    :cond_1b0
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(I)V

    .line 1117
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "uidChange":I
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3e

    .line 1188
    .end local v1    # "i":I
    :cond_1bd
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1c4

    .line 1189
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1192
    :cond_1c4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1193
    .local v1, "size":I
    if-lez v1, :cond_1e0

    .line 1196
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1cc
    if-ltz v2, :cond_1e0

    .line 1197
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    iget v4, v4, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 1196
    add-int/lit8 v2, v2, -0x1

    goto :goto_1cc

    .line 1200
    .end local v2    # "i":I
    :cond_1e0
    return-void
.end method


# virtual methods
.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3227
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    .line 3228
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3219
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3223
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 3201
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3202
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3203
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3205
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3206
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3209
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v1, v1, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    return-void
.end method

.method idleUidsLocked()V
    .registers 15

    .line 3138
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3139
    .local v0, "N":I
    if-gtz v0, :cond_9

    .line 3140
    return-void

    .line 3142
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3143
    .local v1, "nowElapsed":J
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v3, v1, v3

    .line 3144
    .local v3, "maxBgTime":J
    const-wide/16 v5, 0x0

    .line 3145
    .local v5, "nextTime":J
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_1c

    .line 3146
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 3148
    :cond_1c
    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_1e
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_54

    .line 3149
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v10, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v10

    .line 3150
    .local v10, "uidRec":Lcom/android/server/am/UidRecord;
    iget-wide v11, v10, Lcom/android/server/am/UidRecord;->lastBackgroundTime:J

    .line 3151
    .local v11, "bgTime":J
    cmp-long v13, v11, v8

    if-lez v13, :cond_51

    iget-boolean v13, v10, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v13, :cond_51

    .line 3152
    cmp-long v13, v11, v3

    if-gtz v13, :cond_48

    .line 3153
    iget v8, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v8}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 3154
    const/4 v8, 0x1

    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->idle:Z

    .line 3155
    iput-boolean v8, v10, Lcom/android/server/am/UidRecord;->setIdle:Z

    .line 3156
    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_51

    .line 3158
    :cond_48
    cmp-long v8, v5, v8

    if-eqz v8, :cond_50

    cmp-long v8, v5, v11

    if-lez v8, :cond_51

    .line 3159
    :cond_50
    move-wide v5, v11

    .line 3148
    .end local v10    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v11    # "bgTime":J
    :cond_51
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    .line 3164
    .end local v7    # "i":I
    :cond_54
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v7, :cond_5b

    .line 3165
    invoke-virtual {v7}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 3167
    :cond_5b
    cmp-long v7, v5, v8

    if-lez v7, :cond_75

    .line 3168
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3169
    iget-object v7, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3172
    :cond_75
    return-void
.end method

.method initSettings()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 321
    return-void
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"    # J

    .line 3071
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3072
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLocked(Lcom/android/server/am/ProcessRecord;J)V

    .line 3073
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3074
    return-void

    .line 3073
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 2465
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_16

    .line 2467
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2469
    :cond_16
    return-void
.end method

.method final setAppIdTempWhitelistStateLocked(IZ)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "onWhitelist"    # Z

    .line 3176
    const/4 v0, 0x0

    .line 3177
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 3178
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3179
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_20

    iget-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v3, p2, :cond_20

    .line 3180
    iput-boolean p2, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 3181
    const/4 v0, 0x1

    .line 3177
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3184
    .end local v1    # "i":I
    :cond_23
    if-eqz v0, :cond_2b

    .line 3185
    const-string/jumbo v1, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 3187
    :cond_2b
    return-void
.end method

.method setAttachingSchedGroupLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3036
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_7

    .line 3037
    :cond_6
    const/4 v0, 0x2

    :goto_7
    nop

    .line 3041
    .local v0, "initialSchedGroup":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 3042
    const/4 v1, 0x0

    .line 3047
    .local v1, "fallbackReason":Ljava/lang/String;
    :try_start_f
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_27

    .line 3048
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3049
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v3, -0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    goto :goto_2b

    .line 3051
    :cond_27
    const-string/jumbo v2, "not expected top priority"
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2c

    move-object v1, v2

    .line 3055
    :goto_2b
    goto :goto_31

    .line 3053
    :catch_2c
    move-exception v2

    .line 3054
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3056
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_31
    if-nez v1, :cond_35

    .line 3057
    const/4 v0, 0x3

    goto :goto_4b

    .line 3061
    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback pre-set sched group to default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OomAdjuster"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    .end local v1    # "fallbackReason":Ljava/lang/String;
    :cond_4b
    :goto_4b
    iput v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 3066
    return-void
.end method

.method final setUidTempWhitelistStateLocked(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "onWhitelist"    # Z

    .line 3191
    const/4 v0, 0x0

    .line 3192
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 3193
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_15

    iget-boolean v2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    if-eq v2, p2, :cond_15

    .line 3194
    iput-boolean p2, v1, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    .line 3195
    const-string/jumbo v2, "updateOomAdj_whitelistChange"

    invoke-virtual {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 3197
    :cond_15
    return-void
.end method

.method updateAppFreezeStateLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3232
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3233
    return-void

    .line 3236
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_16

    .line 3237
    return-void

    .line 3241
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleWhitelist:[I

    array-length v1, v1

    if-ge v0, v1, :cond_37

    .line 3242
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleWhitelist:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_34

    .line 3243
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v1, :cond_33

    .line 3244
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3246
    :cond_33
    return-void

    .line 3241
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 3250
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    .line 3252
    .local v0, "marsFrozen":Z
    sget-boolean v1, Lcom/android/server/am/FreecessController;->ENABLE_PROCESS_FREEZE:Z

    if-eqz v1, :cond_68

    .line 3253
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3254
    :try_start_3f
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3255
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessController;->getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    .line 3256
    .local v2, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v2, :cond_63

    .line 3257
    iget-boolean v3, v2, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v3, :cond_61

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v3, v4, :cond_61

    const/4 v3, 0x1

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    :goto_62
    move v0, v3

    .line 3259
    .end local v2    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_63
    monitor-exit v1

    goto :goto_68

    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_65

    throw v2

    .line 3262
    :cond_68
    :goto_68
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessController;->isProcessAllowList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 3265
    .local v1, "isAllow":Z
    if-nez v0, :cond_a2

    if-nez v1, :cond_a2

    .line 3267
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v2, :cond_81

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-eqz v2, :cond_81

    .line 3268
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3273
    :cond_81
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x352

    if-lt v2, v3, :cond_95

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v2, :cond_95

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-nez v2, :cond_95

    .line 3274
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsync(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_a2

    .line 3275
    :cond_95
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-ge v2, v3, :cond_a2

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v2, :cond_a2

    .line 3276
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3286
    :cond_a2
    :goto_a2
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .registers 10
    .param p1, "oomAdjReason"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 416
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 417
    return-void
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 28
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # Ljava/lang/String;

    .line 429
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const/4 v13, 0x1

    if-eqz v11, :cond_1ef

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v0, :cond_11

    goto/16 :goto_1ef

    .line 434
    :cond_11
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 436
    .local v14, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 437
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 438
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v0, v13

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v15

    .line 442
    .local v15, "wasCached":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v7

    .line 443
    .local v7, "oldAdj":I
    const/16 v0, 0x384

    const/16 v5, 0x3e9

    if-lt v7, v0, :cond_38

    .line 444
    move v2, v7

    goto :goto_39

    :cond_38
    move v2, v5

    .line 445
    .local v2, "cachedAdj":I
    :goto_39
    iget v0, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    .line 446
    .local v6, "wasBackground":Z
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->containsCycle:Z

    .line 447
    iput-boolean v4, v11, Lcom/android/server/am/ProcessRecord;->procStateChanged:Z

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->resetCachedInfo()V

    .line 449
    const/16 v16, 0x0

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    move v8, v4

    move/from16 v4, v16

    move v9, v6

    .end local v6    # "wasBackground":Z
    .local v9, "wasBackground":Z
    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v0

    .line 451
    .local v0, "success":Z
    if-eqz v0, :cond_1c2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v1

    if-ne v15, v1, :cond_7a

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_7a

    iget v1, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 452
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v9, v1, :cond_7a

    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    goto/16 :goto_1ca

    .line 463
    :cond_7a
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 464
    .local v1, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 465
    .local v6, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 467
    .local v5, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-virtual {v6}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 469
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->clear()V

    .line 472
    const/4 v3, 0x0

    .line 474
    .local v3, "containsCycle":Z
    iput-boolean v13, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 475
    move-object/from16 v4, p1

    move/from16 v16, v3

    .end local v3    # "containsCycle":Z
    .local v4, "pr":Lcom/android/server/am/ProcessRecord;
    .local v16, "containsCycle":Z
    :goto_90
    if-eqz v4, :cond_149

    .line 476
    if-eq v4, v11, :cond_97

    .line 477
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_97
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v3, :cond_a4

    .line 480
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v3, v3, Lcom/android/server/am/UidRecord;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    invoke-virtual {v6, v3, v8}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 482
    :cond_a4
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v13

    .local v3, "i":I
    :goto_ab
    if-ltz v3, :cond_101

    .line 483
    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 484
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v13, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_c2

    .line 485
    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_c8

    :cond_c2
    iget-object v13, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v13, v13, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 486
    .local v13, "service":Lcom/android/server/am/ProcessRecord;
    :goto_c8
    if-eqz v13, :cond_f5

    if-ne v13, v4, :cond_d1

    .line 487
    move/from16 v21, v2

    move-object/from16 v22, v6

    goto :goto_f9

    .line 489
    :cond_d1
    move/from16 v21, v2

    .end local v2    # "cachedAdj":I
    .local v21, "cachedAdj":I
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v2, v16, v2

    .line 490
    .end local v16    # "containsCycle":Z
    .local v2, "containsCycle":Z
    move/from16 v16, v2

    .end local v2    # "containsCycle":Z
    .restart local v16    # "containsCycle":Z
    iget-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v2, :cond_e0

    .line 491
    move-object/from16 v22, v6

    goto :goto_f9

    .line 493
    :cond_e0
    iget v2, v8, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v22, 0x80000a0

    and-int v2, v2, v22

    move-object/from16 v22, v6

    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .local v22, "uids":Lcom/android/server/am/ActiveUids;
    const/16 v6, 0x20

    if-ne v2, v6, :cond_ee

    .line 497
    goto :goto_f9

    .line 499
    :cond_ee
    invoke-virtual {v5, v13}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 500
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    goto :goto_f9

    .line 486
    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .local v2, "cachedAdj":I
    .restart local v6    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_f5
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 482
    .end local v2    # "cachedAdj":I
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v13    # "service":Lcom/android/server/am/ProcessRecord;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    :goto_f9
    add-int/lit8 v3, v3, -0x1

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v13, 0x1

    goto :goto_ab

    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v2    # "cachedAdj":I
    .restart local v6    # "uids":Lcom/android/server/am/ActiveUids;
    :cond_101
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 502
    .end local v2    # "cachedAdj":I
    .end local v3    # "i":I
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_10d
    if-ltz v2, :cond_13a

    .line 503
    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 504
    .local v3, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v3, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 505
    .local v6, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_137

    if-eq v6, v4, :cond_137

    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v8, v16, v8

    move/from16 v16, v8

    if-eqz v8, :cond_128

    .line 506
    goto :goto_137

    .line 508
    :cond_128
    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    or-int v16, v16, v8

    .line 509
    iget-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    if-eqz v8, :cond_131

    .line 510
    goto :goto_137

    .line 512
    :cond_131
    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 513
    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 502
    .end local v3    # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v6    # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_137
    :goto_137
    add-int/lit8 v2, v2, -0x1

    goto :goto_10d

    .line 475
    .end local v2    # "i":I
    :cond_13a
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v8, 0x0

    const/4 v13, 0x1

    goto/16 :goto_90

    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .local v2, "cachedAdj":I
    .local v6, "uids":Lcom/android/server/am/ActiveUids;
    :cond_149
    move/from16 v21, v2

    move-object/from16 v22, v6

    .line 518
    .end local v2    # "cachedAdj":I
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21    # "cachedAdj":I
    .restart local v22    # "uids":Lcom/android/server/am/ActiveUids;
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/server/am/ProcessRecord;->mReachable:Z

    .line 519
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 520
    .local v2, "size":I
    if-lez v2, :cond_190

    .line 522
    const/4 v3, 0x0

    .local v3, "l":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "r":I
    :goto_159
    if-ge v3, v4, :cond_172

    .line 523
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 524
    .local v6, "t":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-virtual {v1, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 522
    .end local v6    # "t":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_159

    .line 527
    .end local v3    # "l":I
    .end local v4    # "r":I
    :cond_172
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 529
    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    .end local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .local v17, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    move-object v5, v14

    move-object v6, v1

    move/from16 v23, v7

    .end local v7    # "oldAdj":I
    .local v23, "oldAdj":I
    move-object/from16 v7, v22

    const-wide/16 v19, 0x40

    move/from16 v8, v16

    move/from16 v24, v9

    .end local v9    # "wasBackground":Z
    .local v24, "wasBackground":Z
    move v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLockedInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_1b6

    .line 530
    .end local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    .restart local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v7    # "oldAdj":I
    .restart local v9    # "wasBackground":Z
    :cond_190
    move-object/from16 v17, v5

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    .end local v5    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7    # "oldAdj":I
    .end local v9    # "wasBackground":Z
    .restart local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v23    # "oldAdj":I
    .restart local v24    # "wasBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_1b6

    .line 533
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 535
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 535
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 538
    :cond_1b6
    :goto_1b6
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 539
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 540
    const/4 v3, 0x1

    return v3

    .line 451
    .end local v1    # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v16    # "containsCycle":Z
    .end local v17    # "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    .end local v21    # "cachedAdj":I
    .end local v22    # "uids":Lcom/android/server/am/ActiveUids;
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    .local v2, "cachedAdj":I
    .restart local v7    # "oldAdj":I
    .restart local v9    # "wasBackground":Z
    :cond_1c2
    move/from16 v21, v2

    move/from16 v23, v7

    move/from16 v24, v9

    const-wide/16 v19, 0x40

    .line 454
    .end local v2    # "cachedAdj":I
    .end local v7    # "oldAdj":I
    .end local v9    # "wasBackground":Z
    .restart local v21    # "cachedAdj":I
    .restart local v23    # "oldAdj":I
    .restart local v24    # "wasBackground":Z
    :goto_1ca
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_1e4

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No oomadj changes for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1e4
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 458
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    return v0

    .line 430
    .end local v0    # "success":Z
    .end local v14    # "topApp":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "wasCached":Z
    .end local v21    # "cachedAdj":I
    .end local v23    # "oldAdj":I
    .end local v24    # "wasBackground":Z
    :cond_1ef
    :goto_1ef
    invoke-virtual {v10, v12}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjAll"    # Z
    .param p3, "oomAdjReason"    # Ljava/lang/String;

    .line 334
    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-eqz v0, :cond_d

    .line 335
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 337
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 338
    .local v0, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v8

    .line 340
    .local v8, "wasCached":Z
    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 346
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    const/16 v2, 0x384

    const/16 v9, 0x3e9

    if-lt v1, v2, :cond_2d

    .line 347
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v1

    move v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v9

    .line 348
    .local v3, "cachedAdj":I
    :goto_2e
    const/4 v5, 0x0

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 348
    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJ)Z

    move-result v1

    .line 350
    .local v1, "success":Z
    if-eqz p2, :cond_4b

    .line 351
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v2

    if-ne v8, v2, :cond_48

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurRawAdj()I

    move-result v2

    if-ne v2, v9, :cond_4b

    .line 354
    :cond_48
    invoke-virtual {p0, p3}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 356
    :cond_4b
    return v1
.end method
