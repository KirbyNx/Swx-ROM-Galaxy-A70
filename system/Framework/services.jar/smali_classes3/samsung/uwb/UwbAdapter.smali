.class public final Lsamsung/uwb/UwbAdapter;
.super Ljava/lang/Object;
.source "UwbAdapter.java"


# static fields
.field public static final AIRPLANE_MODE:I = 0x1

.field public static final ANTENNA_CONFIG_AOA_LANDSCAPE:I = 0x2

.field public static final ANTENNA_CONFIG_AOA_PORTRAIT:I = 0x1

.field public static final ANTENNA_CONFIG_RANGING_PREFERRED:I = 0x0

.field public static final COUNTRY_DISABLE_MODE:I = 0x10

.field public static final DEVICE_DISABLE_MODE:I = 0x40

.field public static final EDM_RESTRICTION_MODE:I = 0x20

.field public static final EMERGENCY_MODE:I = 0x4

.field public static final MAX_UWB_ANTENNA_PAIR_CONFIG:I = 0x4

.field public static final MCC_901_MODE:I = 0x8

.field public static final NORMAL_MODE:I = 0x0

.field public static final NO_SERVICE_MODE:I = 0x2

.field public static final READ_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.uwb.READ_NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "UWB"

.field public static final UWB_ADAPTER_STATE_ACTION:Ljava/lang/String; = "com.samsung.android.uwb.action.ADAPTER_STATE_CHANGED"

.field public static final UWB_ADAPTER_STATE_OFF:I = 0x0

.field public static final UWB_ADAPTER_STATE_ON:I = 0x1

.field public static final UWB_APP_BACKGROUND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UWB_APP_FOREGROUND:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UWB_DEFAULT_MAX_PPM_VALUE:I = 0x64

.field public static final UWB_DEVICE_STATUS:Ljava/lang/String; = "android.uwb.extra.UWB_DEVICE_STATUS"

.field public static final UWB_MULTICAST_LIST_UPDATE_STATUS_KEY:Ljava/lang/String; = "UWB_MULTICAST_LIST_UPDATE_STATUS_KEY"

.field public static final UWB_SESSION_ERROR_INVALID_CONFIG:I = 0x7

.field public static final UWB_SESSION_ERROR_UNKNOWN_REASON:I = 0xff

.field public static final UWB_SESSION_ERROR_WITH_IN_BAND_SIGNAL:I = 0x6

.field public static final UWB_SESSION_ERROR_WITH_KEY_FETCH_FAILURE:I = 0x5

.field public static final UWB_SESSION_ERROR_WITH_MAX_NUMBER_OF_BLOCKS_REACHED:I = 0x3

.field public static final UWB_SESSION_ERROR_WITH_MAX_RR_RETRY_COUNT_REACHED:I = 0x2

.field public static final UWB_SESSION_ERROR_WITH_NO_RNGDATA_IN_ESE:I = 0x4

.field public static final UWB_SESSION_MAX_RR_RETRY_COUNT_REACHED:I = 0x1

.field public static final UWB_SESSION_STATE_CHANGED:I = 0x0

.field public static final UWB_SESSION_STATUS_ACTIVE:I = 0x2

.field public static final UWB_SESSION_STATUS_DEINITIALIZED:I = 0x1

.field public static final UWB_SESSION_STATUS_ERROR:I = 0xff

.field public static final UWB_SESSION_STATUS_IDLE:I = 0x3

.field public static final UWB_SESSION_STATUS_INITIALIZED:I = 0x0

.field public static final UWB_SESSION_STATUS_IN_BAND_STOP_RECEIVED:I = 0x83

.field public static final UWB_SESSION_STATUS_PENDING:I = 0x10

.field public static final UWB_SESSION_STATUS_READY:I = 0x1

.field public static final UWB_SESSION_STOPPED_WITH_MAX_NUMBER_OF_MEASUREMENTS_REACHED:I = 0x8

.field public static final UWB_STATUS_DEVICE_NOT_INITIALIZED:I = -0x2

.field public static final UWB_STATUS_FAILED:I = -0x1

.field public static final UWB_STATUS_INVALID_PARAMETER:I = -0x6

.field public static final UWB_STATUS_INVALID_PARAMETER_VALUE:I = -0x7

.field public static final UWB_STATUS_MAX_PSDU_SIZE_EXCEEDED:I = -0x9

.field public static final UWB_STATUS_OK:I = 0x0

.field public static final UWB_STATUS_PARAM_LENGTH_NOT_SUPPORTED:I = -0xa

.field public static final UWB_STATUS_SESSION_ACTIVE_ERROR:I = -0x8

.field public static final UWB_STATUS_SESSION_DUPLICATE:I = -0x4

.field public static final UWB_STATUS_SESSION_NOT_ACTIVE:I = -0x5

.field public static final UWB_STATUS_SESSION_NOT_CONFIGURED:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UWB_STATUS_SESSION_NOT_INITIALIZED:I = -0x3

.field public static final UWB_STATUS_SESSION_NOT_OPENED:I = -0xc

.field public static final UWB_STATUS_SESSION_RESTRICTED:I = -0xb

.field public static final UWB_SVC_TYPE_CCC:I = 0x3

.field public static final UWB_SVC_TYPE_DIGITAL_KEY:I = 0x2

.field public static final UWB_SVC_TYPE_OPEN:I = 0x0

.field public static final UWB_SVC_TYPE_QUICK_SHARE:I = 0x1

.field public static final UWB_SVC_TYPE_SMART_TAG:I = 0x4

.field public static final UWB_SVC_TYPE_WHERE_IS:I

.field private static sIsInitialized:Z

.field private static sUwbAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lsamsung/uwb/UwbAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sUwbService:Lsamsung/uwb/IUwbAdapter;


# instance fields
.field private appExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lsamsung/uwb/UwbAdapter;->sIsInitialized:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lsamsung/uwb/UwbAdapter;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lsamsung/uwb/UwbAdapter;)Ljava/util/concurrent/Executor;
    .registers 2
    .param p0, "x0"    # Lsamsung/uwb/UwbAdapter;

    .line 48
    iget-object v0, p0, Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static getServiceInterface()Lsamsung/uwb/IUwbAdapter;
    .registers 2

    .line 489
    const-string v0, "uwb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 490
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 491
    const/4 v1, 0x0

    return-object v1

    .line 493
    :cond_a
    invoke-static {v0}, Lsamsung/uwb/IUwbAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getUwbAdapter(Landroid/content/Context;)Lsamsung/uwb/UwbAdapter;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lsamsung/uwb/UwbAdapter;

    monitor-enter v0

    .line 517
    if-nez p0, :cond_8

    .line 518
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 521
    :cond_8
    :try_start_8
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Need ACCESS FINE permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v2, "Need BACKGROUND permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-boolean v1, Lsamsung/uwb/UwbAdapter;->sIsInitialized:Z

    if-nez v1, :cond_33

    .line 525
    invoke-static {}, Lsamsung/uwb/UwbAdapter;->getServiceInterface()Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    sput-object v1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    .line 526
    if-eqz v1, :cond_26

    .line 531
    const/4 v1, 0x1

    sput-boolean v1, Lsamsung/uwb/UwbAdapter;->sIsInitialized:Z

    goto :goto_33

    .line 527
    :cond_26
    const-string v1, "UWB"

    const-string v2, "could not retrieve UWB service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 534
    :cond_33
    :goto_33
    sget-object v1, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsamsung/uwb/UwbAdapter;

    .line 535
    .local v1, "adapter":Lsamsung/uwb/UwbAdapter;
    if-nez v1, :cond_48

    .line 536
    new-instance v2, Lsamsung/uwb/UwbAdapter;

    invoke-direct {v2, p0}, Lsamsung/uwb/UwbAdapter;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 537
    sget-object v2, Lsamsung/uwb/UwbAdapter;->sUwbAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_4a

    .line 539
    :cond_48
    monitor-exit v0

    return-object v1

    .line 516
    .end local v1    # "adapter":Lsamsung/uwb/UwbAdapter;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_4a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I
    .registers 22
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "defaultConfig"    # Lsamsung/uwb/UwbDefaultConfig;
    .param p4, "bBackgroundMode"    # Z
    .param p5, "callback"    # Lsamsung/uwb/UwbCallback;

    .line 229
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string v0, "UWB"

    :try_start_6
    const-string v3, "UwbAdapter: openSession is invoked"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-nez p3, :cond_12

    const-string v3, "UwbAdapter: defaultConfig is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_12
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 233
    .local v8, "iBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_33

    .line 234
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, v1, Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;

    .line 235
    sget-object v4, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    new-instance v10, Lsamsung/uwb/UwbAdapter$1;

    invoke-direct {v10, v1, v2}, Lsamsung/uwb/UwbAdapter$1;-><init>(Lsamsung/uwb/UwbAdapter;Lsamsung/uwb/UwbCallback;)V

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p4

    invoke-interface/range {v4 .. v10}, Lsamsung/uwb/IUwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;Landroid/os/IBinder;ZLsamsung/uwb/IUwbCallback;)I

    move-result v0

    .local v0, "resultOpenSession":I
    goto :goto_43

    .line 265
    .end local v0    # "resultOpenSession":I
    :cond_33
    sget-object v9, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    const/4 v15, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v8

    move/from16 v14, p4

    invoke-interface/range {v9 .. v15}, Lsamsung/uwb/IUwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;Landroid/os/IBinder;ZLsamsung/uwb/IUwbCallback;)I

    move-result v0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_43} :catch_45

    .line 270
    .end local v8    # "iBinder":Landroid/os/IBinder;
    .restart local v0    # "resultOpenSession":I
    :goto_43
    nop

    .line 271
    return v0

    .line 267
    .end local v0    # "resultOpenSession":I
    :catch_45
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v1, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 269
    const/4 v3, -0x1

    return v3
.end method

.method private openSession(IILsamsung/uwb/profile/UwbProfile;Lsamsung/uwb/UwbCallback;)I
    .registers 12
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "uwbProfile"    # Lsamsung/uwb/profile/UwbProfile;
    .param p4, "callback"    # Lsamsung/uwb/UwbCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "ret":I
    if-nez p3, :cond_e

    .line 213
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    goto :goto_22

    .line 215
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p3}, Lsamsung/uwb/profile/UwbProfile;->getBackgroundMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    move v5, v2

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    move v5, v1

    :goto_1a
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    .line 217
    :goto_22
    return v0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 497
    const-string v0, "UWB"

    const-string v1, "UWB service dead - attempting to recover"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-static {}, Lsamsung/uwb/UwbAdapter;->getServiceInterface()Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    .line 499
    .local v1, "service":Lsamsung/uwb/IUwbAdapter;
    if-nez v1, :cond_13

    .line 500
    const-string v2, "could not retrieve UWB service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void

    .line 503
    :cond_13
    sput-object v1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    .line 505
    return-void
.end method

.method public checkRestrict()I
    .registers 3

    .line 681
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->checkRestrict()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 682
    :catch_7
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 684
    const/4 v1, -0x1

    return v1
.end method

.method public closeSession(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 276
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "UwbAdapter: closeSession is invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->closeSession(I)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 278
    :catch_e
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 280
    const/4 v1, -0x1

    return v1
.end method

.method public controllerMulticastListUpdate(IBB[I[I)B
    .registers 14
    .param p1, "sessionId"    # I
    .param p2, "action"    # B
    .param p3, "noOfControlees"    # B
    .param p4, "shortAddress"    # [I
    .param p5, "subSessionId"    # [I

    .line 612
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "controllerMulticastListUpdate enter: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v2, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lsamsung/uwb/IUwbAdapter;->controllerMulticastListUpdate(IBB[I[I)B

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 614
    :catch_13
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 616
    const/4 v1, -0x1

    return v1
.end method

.method public disable()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 161
    const/4 v0, -0x1

    .line 163
    .local v0, "status":I
    :try_start_1
    const-string v1, "UWB"

    const-string v2, "UwbAdapter: Uwb Off is invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v1}, Lsamsung/uwb/IUwbAdapter;->disable()I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10

    move v0, v1

    .line 167
    goto :goto_14

    .line 165
    :catch_10
    move-exception v1

    .line 166
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 168
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_14
    return v0
.end method

.method public enable()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    const/4 v0, -0x1

    .line 151
    .local v0, "status":I
    :try_start_1
    const-string v1, "UWB"

    const-string v2, "UwbAdapter: Uwb On is invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v1, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v1}, Lsamsung/uwb/IUwbAdapter;->enable()I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10

    move v0, v1

    .line 155
    goto :goto_14

    .line 153
    :catch_10
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_14
    return v0
.end method

.method public enableRangeDataNtf(IB)I
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "enable"    # B

    .line 353
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->enableRangeDataNtf(IB)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 354
    :catch_7
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 356
    const/4 v1, -0x1

    return v1
.end method

.method public getAntennaPair(B)I
    .registers 4
    .param p1, "rxAntennaPair"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->getAntennaPair(B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 631
    :catch_7
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 633
    const/4 v1, -0x1

    return v1
.end method

.method public getAntennaPairConfig(B)I
    .registers 4
    .param p1, "config"    # B

    .line 646
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->getAntennaPairConfig(B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 647
    :catch_7
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 649
    const/4 v1, -0x1

    return v1
.end method

.method public getAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigParameters;
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsamsung/uwb/AppConfigParameters;"
        }
    .end annotation

    .line 431
    .local p2, "appConfigParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->getAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigParameters;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 432
    :catch_7
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 434
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDecentChannelNumber()I
    .registers 3

    .line 593
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getDecentChannelNumber()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 594
    :catch_7
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 596
    const/4 v1, -0x1

    return v1
.end method

.method public getDecentPreambleCode()I
    .registers 3

    .line 584
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getDecentPreambleCode()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 585
    :catch_7
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 587
    const/4 v1, -0x1

    return v1
.end method

.method public getExtAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigExtParameters;
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsamsung/uwb/AppConfigExtParameters;"
        }
    .end annotation

    .line 476
    .local p2, "appConfigParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "getExtAppConfigurations enter: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->getExtAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigExtParameters;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 478
    :catch_e
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 480
    const/4 v1, 0x0

    return-object v1
.end method

.method public getExtDeviceCapability()Lsamsung/uwb/DeviceCapabilityParameters;
    .registers 3

    .line 803
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getExtDeviceCapability()Lsamsung/uwb/DeviceCapabilityParameters;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 804
    :catch_7
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 806
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRanMultiplier()B
    .registers 3

    .line 819
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "getRanMultiplier()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getRanMultiplier()B

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 821
    :catch_e
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 823
    const/4 v1, -0x1

    return v1
.end method

.method public getRangingCount(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 370
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->getRangingCount(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 371
    :catch_7
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 373
    const/4 v1, 0x0

    return v1
.end method

.method public getRxAntennaPair()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getRxAntennaPair()[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 665
    :catch_7
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 667
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSessionCount()I
    .registers 3

    .line 319
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getSessionCount()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 320
    :catch_7
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 322
    const/4 v1, 0x0

    return v1
.end method

.method public getSessionState(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 302
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->getSessionState(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 303
    :catch_7
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 305
    const/4 v1, 0x0

    return v1
.end method

.method public getUwbDeviceTimeStamp()Lsamsung/uwb/UwbDeviceTimeStamp;
    .registers 3

    .line 841
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "getUwbDeviceTimeStamp()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getUwbDeviceTimeStamp()Lsamsung/uwb/UwbDeviceTimeStamp;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 843
    :catch_e
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 845
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUwbMaxPpm()I
    .registers 3

    .line 881
    :try_start_0
    const-string v0, "UWB"

    const-string v1, "getUwbMaxPpm()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->getUwbMaxPpm()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 883
    :catch_e
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 885
    const/16 v1, 0x64

    return v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 293
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0}, Lsamsung/uwb/IUwbAdapter;->isEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 294
    :catch_7
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 296
    const/4 v1, 0x0

    return v1
.end method

.method public openSession(IILsamsung/uwb/UwbCallback;)I
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callback"    # Lsamsung/uwb/UwbCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/profile/UwbProfile;Lsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public openSession(IIZ)I
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "bBackgroundMode"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 193
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public openSession(IIZLsamsung/uwb/UwbCallback;)I
    .registers 11
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "bBackgroundMode"    # Z
    .param p4, "callback"    # Lsamsung/uwb/UwbCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public openSession(ILsamsung/uwb/UwbDefaultConfig;)I
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "defaultConfig"    # Lsamsung/uwb/UwbDefaultConfig;

    .line 188
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public openSession(ILsamsung/uwb/UwbDefaultConfig;Lsamsung/uwb/UwbCallback;)I
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "defaultConfig"    # Lsamsung/uwb/UwbDefaultConfig;
    .param p3, "callback"    # Lsamsung/uwb/UwbCallback;

    .line 184
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lsamsung/uwb/UwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;ZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public openSession(ILsamsung/uwb/profile/UwbProfile;Lsamsung/uwb/UwbCallback;)I
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "uwbProfile"    # Lsamsung/uwb/profile/UwbProfile;
    .param p3, "callback"    # Lsamsung/uwb/UwbCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p2, :cond_9

    .line 205
    invoke-virtual {p0, p1, v1, v0, p3}, Lsamsung/uwb/UwbAdapter;->openSession(IIZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0

    .line 206
    :cond_9
    invoke-virtual {p2}, Lsamsung/uwb/profile/UwbProfile;->getBackgroundMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    move v0, v3

    :cond_11
    invoke-virtual {p0, p1, v1, v0, p3}, Lsamsung/uwb/UwbAdapter;->openSession(IIZLsamsung/uwb/UwbCallback;)I

    move-result v0

    return v0
.end method

.method public rangingStart(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 556
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->rangingStart(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 557
    :catch_7
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 559
    const/4 v1, -0x1

    return v1
.end method

.method public rangingStop(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 575
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Lsamsung/uwb/IUwbAdapter;->rangingStop(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 576
    :catch_7
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 578
    const/4 v1, -0x1

    return v1
.end method

.method public registerRangingCallback(ILsamsung/uwb/RangingCallback;)Z
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Lsamsung/uwb/RangingCallback;

    .line 721
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;

    .line 722
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    new-instance v1, Lsamsung/uwb/UwbAdapter$2;

    invoke-direct {v1, p0, p2}, Lsamsung/uwb/UwbAdapter$2;-><init>(Lsamsung/uwb/UwbAdapter;Lsamsung/uwb/RangingCallback;)V

    invoke-interface {v0, p1, v1}, Lsamsung/uwb/IUwbAdapter;->registerRangingCallback(ILsamsung/uwb/IRangingCallback;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    .line 745
    :catch_12
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 747
    const/4 v1, 0x0

    return v1
.end method

.method public registerUwbCallback(ILsamsung/uwb/UwbCallback;)Z
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Lsamsung/uwb/UwbCallback;

    .line 759
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsamsung/uwb/UwbAdapter;->appExecutor:Ljava/util/concurrent/Executor;

    .line 760
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    new-instance v1, Lsamsung/uwb/UwbAdapter$3;

    invoke-direct {v1, p0, p2}, Lsamsung/uwb/UwbAdapter$3;-><init>(Lsamsung/uwb/UwbAdapter;Lsamsung/uwb/UwbCallback;)V

    invoke-interface {v0, p1, v1}, Lsamsung/uwb/IUwbAdapter;->registerUwbCallback(ILsamsung/uwb/IUwbCallback;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    .line 789
    :catch_12
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 791
    const/4 v1, 0x0

    return v1
.end method

.method public sendBlinkData(IB[B)B
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "repetitionCount"    # B
    .param p3, "appData"    # [B

    .line 707
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2, p3}, Lsamsung/uwb/IUwbAdapter;->sendBlinkData(IB[B)B

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 708
    :catch_7
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 710
    const/4 v1, -0x1

    return v1
.end method

.method public sendData(I[B[B)I
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "address"    # [B
    .param p3, "appData"    # [B

    .line 865
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2, p3}, Lsamsung/uwb/IUwbAdapter;->sendData(I[B[B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 866
    :catch_7
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 868
    const/4 v1, -0x1

    return v1
.end method

.method public setAppConfigurations(ILjava/util/List;)I
    .registers 6
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    .local p2, "appConfigList":Ljava/util/List;, "Ljava/util/List<Lsamsung/uwb/ConfigParamTlv;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, v0}, Lsamsung/uwb/UwbUtil;->getConfigMapFromList(Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object v0

    .line 390
    .local v0, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lsamsung/uwb/AppConfigParameters$Builder;

    invoke-direct {v1}, Lsamsung/uwb/AppConfigParameters$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lsamsung/uwb/AppConfigParameters$Builder;->parse(Ljava/util/HashMap;)Lsamsung/uwb/AppConfigParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lsamsung/uwb/AppConfigParameters$Builder;->build()Lsamsung/uwb/AppConfigParameters;

    move-result-object v1

    .line 391
    .local v1, "appConfig":Lsamsung/uwb/AppConfigParameters;
    sget-object v2, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v2, p1, v1}, Lsamsung/uwb/IUwbAdapter;->setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_19

    return v2

    .line 392
    .end local v0    # "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v1    # "appConfig":Lsamsung/uwb/AppConfigParameters;
    :catch_19
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 394
    const/4 v1, -0x1

    return v1
.end method

.method public setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "appConfig"    # Lsamsung/uwb/AppConfigParameters;

    .line 414
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 415
    :catch_7
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 417
    const/4 v1, -0x1

    return v1
.end method

.method public setExtAppConfigurations(ILjava/util/List;)I
    .registers 6
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lsamsung/uwb/ConfigParamTlv;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    .local p2, "appConfigList":Ljava/util/List;, "Ljava/util/List<Lsamsung/uwb/ConfigParamTlv;>;"
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p2, v0}, Lsamsung/uwb/UwbUtil;->getConfigMapFromList(Ljava/util/List;I)Ljava/util/HashMap;

    move-result-object v0

    .line 450
    .local v0, "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lsamsung/uwb/AppConfigExtParameters$Builder;

    invoke-direct {v1}, Lsamsung/uwb/AppConfigExtParameters$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lsamsung/uwb/AppConfigExtParameters$Builder;->parse(Ljava/util/HashMap;)Lsamsung/uwb/AppConfigExtParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lsamsung/uwb/AppConfigExtParameters$Builder;->build()Lsamsung/uwb/AppConfigExtParameters;

    move-result-object v1

    .line 451
    .local v1, "appConfig":Lsamsung/uwb/AppConfigExtParameters;
    sget-object v2, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v2, p1, v1}, Lsamsung/uwb/IUwbAdapter;->setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_19

    return v2

    .line 452
    .end local v0    # "configMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .end local v1    # "appConfig":Lsamsung/uwb/AppConfigExtParameters;
    :catch_19
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 454
    const/4 v1, -0x1

    return v1
.end method

.method public setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "appExConfig"    # Lsamsung/uwb/AppConfigExtParameters;

    .line 460
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 461
    :catch_7
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 463
    const/4 v1, -0x1

    return v1
.end method

.method public setRangingDataSamplingRate(IB)I
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "SamplingRate"    # B

    .line 336
    :try_start_0
    sget-object v0, Lsamsung/uwb/UwbAdapter;->sUwbService:Lsamsung/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setRangingDataSamplingRate(IB)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 337
    :catch_7
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lsamsung/uwb/UwbAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 339
    const/4 v1, -0x1

    return v1
.end method
