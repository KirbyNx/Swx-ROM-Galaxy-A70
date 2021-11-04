.class public Lcom/android/server/ipm/psitracker/PSITrackerService;
.super Ljava/lang/Object;
.source "PSITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;,
        Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;
    }
.end annotation


# static fields
.field private static final AID_OEM_RESERVED_2_END:I = 0x176f

.field private static final AID_OEM_RESERVED_2_START:I = 0x1388

.field private static final AID_SPASS:I = 0x4b1

.field private static final AID_SPAY:I = 0x4b0

.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static DEBUG:Z = false

.field public static final ONE_YEAR_MILLIS:J = 0x757b12c00L

.field public static ONOFFSWITCH:Z = false

.field public static PSIONOFFSWITCH:Z = false

.field private static final PSITHRESHOLD:F = 50.0f

.field static PSI_FULL_MAX_NODE:Ljava/lang/String; = null

.field static PSI_MEMORY_NODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PSITrackerService"

.field public static final intervalHour:J = 0x1L

.field public static mFirstTriggeredAfterBooting:Z

.field public static pts:Lcom/android/server/ipm/psitracker/PSITrackerService;


# instance fields
.field appentrycount:I

.field count:I

.field foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private final mAvailMemRecord240AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

.field private mContext:Landroid/content/Context;

.field private mCurrentAvailMemRecord:Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

.field private mCurrentEntryAppRecord:Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

.field private mCurrentRecord:Lcom/android/server/ipm/psitracker/PSIRecord;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMediaScanReceiver:Landroid/content/BroadcastReceiver;

.field private final mPSIRecord5AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mPSIRecordAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field namePsiFullMaxMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field namePssMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field nameUserIdMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final syncListObj1:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->pts:Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    .line 60
    const-string/jumbo v1, "ro.slmk.psitracker_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ipm/psitracker/PSITrackerService;->ONOFFSWITCH:Z

    .line 86
    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mFirstTriggeredAfterBooting:Z

    .line 98
    const-string v0, "/proc/pressure/memory"

    sput-object v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_MEMORY_NODE:Ljava/lang/String;

    .line 99
    const-string v0, "/proc/lmkd_debug/psi_full_max"

    sput-object v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_FULL_MAX_NODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->nameUserIdMap:Ljava/util/LinkedHashMap;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->syncListObj1:Ljava/lang/Object;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->count:I

    .line 90
    iput v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    .line 96
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;Lcom/android/server/ipm/psitracker/PSITrackerService$1;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    .line 102
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$1;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mMediaScanReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$2;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$3;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecordAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 174
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$4;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecord5AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 186
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$5;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAvailMemRecord240AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 276
    new-instance v1, Lcom/android/server/ipm/psitracker/PSITrackerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/psitracker/PSITrackerService$6;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;)V

    iput-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 236
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "state":Ljava/lang/String;
    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 238
    :cond_6f
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    .line 240
    :cond_72
    iput-object p2, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 241
    iput-object p1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {p1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->init(Landroid/content/Context;)V

    .line 244
    new-instance v2, Lcom/android/server/ipm/psitracker/PSICollector;

    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/ipm/psitracker/PSICollector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    .line 247
    sput-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSIONOFFSWITCH : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "getPSIFULLMAXValue(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIFULLMAXValue()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PSITrackerService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->ONOFFSWITCH:Z

    if-eqz v0, :cond_f6

    .line 253
    if-eqz p3, :cond_ba

    .line 254
    new-instance v0, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/ipm/psitracker/PSITrackerService$ObserverHandler;-><init>(Lcom/android/server/ipm/psitracker/PSITrackerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    goto :goto_bf

    .line 256
    :cond_ba
    const-string v0, "error: handlerThread == null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_bf
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, "mediaScanFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 263
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v2, "dateChangedFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mMediaScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    sget-boolean v3, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    if-eqz v3, :cond_f6

    .line 270
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 273
    .end local v0    # "mediaScanFilter":Landroid/content/IntentFilter;
    .end local v2    # "dateChangedFilter":Landroid/content/IntentFilter;
    :cond_f6
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI30PeriodRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->schedulePSI5PeriodRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ipm/psitracker/PSITrackerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/ipm/psitracker/PSITrackerService;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ipm/psitracker/PSITrackerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ipm/psitracker/PSITrackerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->record5MinutesPSI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ipm/psitracker/PSITrackerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->record30MinutesPSI()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ipm/psitracker/PSITrackerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 55
    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->record240MinutesAvailMem()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ipm/psitracker/PSITrackerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/psitracker/PSITrackerService;->processForegroundChanged(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ipm/psitracker/PSITrackerService;)Lcom/android/server/ipm/psitracker/PSICollector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 55
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    return-object v0
.end method

.method private getMemmoryOfPid(Lcom/android/server/am/ActivityManagerService;I)J
    .registers 11
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pid"    # I

    .line 1041
    const-wide/16 v0, 0x0

    .line 1043
    .local v0, "pss":J
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 1044
    .local v2, "debugMemoryInfo":[Landroid/os/Debug$MemoryInfo;
    array-length v4, v2

    :goto_d
    if-ge v3, v4, :cond_1a

    aget-object v5, v2, v3

    .line 1045
    .local v5, "info":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_1b

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 1044
    .end local v5    # "info":Landroid/os/Debug$MemoryInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1049
    .end local v2    # "debugMemoryInfo":[Landroid/os/Debug$MemoryInfo;
    :cond_1a
    goto :goto_1f

    .line 1047
    :catch_1b
    move-exception v2

    .line 1048
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1050
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1f
    return-wide v0
.end method

.method private getPSIFULLMAXValue()F
    .registers 7

    .line 355
    const/4 v0, 0x1

    new-array v1, v0, [F

    .line 356
    .local v1, "avg":[F
    new-array v2, v0, [I

    const/16 v3, 0x100a

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 360
    .local v2, "SINGLE_LONG_FORMAT":[I
    new-array v0, v0, [Ljava/lang/String;

    .line 362
    .local v0, "longTmp1":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_FULL_MAX_NODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v2, v0, v5, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 365
    :try_start_12
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const v5, 0x4b189680    # 1.0E7f

    div-float/2addr v3, v5

    aput v3, v1, v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_22

    .line 369
    nop

    .line 371
    aget v3, v1, v4

    return v3

    .line 366
    :catch_22
    move-exception v3

    .line 367
    .local v3, "E":Ljava/lang/Exception;
    const-string v4, "PSITrackerService"

    const-string v5, "PSIFullMax Node is not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/high16 v4, -0x40800000    # -1.0f

    return v4
.end method

.method private getPSIValue(I)F
    .registers 11
    .param p1, "index"    # I

    .line 302
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 303
    .local v0, "avg":[F
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x100a

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 307
    .local v2, "SINGLE_LONG_FORMAT":[I
    new-array v1, v1, [Ljava/lang/String;

    .line 309
    .local v1, "longTmp1":[Ljava/lang/String;
    const/4 v3, 0x3

    if-le p1, v3, :cond_1b

    .line 310
    const-string v3, "PSITrackerService"

    const-string/jumbo v4, "invalid index!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/high16 v3, -0x40800000    # -1.0f

    return v3

    .line 313
    :cond_1b
    sget-object v3, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_MEMORY_NODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, "idx":I
    :try_start_22
    new-instance v5, Ljava/util/StringTokenizer;

    aget-object v4, v1, v4

    const-string v6, " ="

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 318
    .local v4, "st":Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 319
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "tempstr":Ljava/lang/String;
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_46

    if-lez v5, :cond_46

    .line 321
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "idx":I
    .local v7, "idx":I
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v0, v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_45} :catch_4a

    move v3, v7

    .line 318
    .end local v6    # "tempstr":Ljava/lang/String;
    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 325
    .end local v3    # "idx":I
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "i":I
    :cond_49
    goto :goto_4b

    .line 324
    :catch_4a
    move-exception v3

    .line 327
    :goto_4b
    aget v3, v0, p1

    return v3
.end method

.method private getPSIValueAll()[F
    .registers 10

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 331
    .local v0, "avg":[F
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x100a

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 335
    .local v2, "SINGLE_LONG_FORMAT":[I
    new-array v1, v1, [Ljava/lang/String;

    .line 337
    .local v1, "longTmp1":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_MEMORY_NODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "idx":I
    :try_start_14
    new-instance v5, Ljava/util/StringTokenizer;

    aget-object v4, v1, v4

    const-string v6, " ="

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 342
    .local v4, "st":Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 343
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "tempstr":Ljava/lang/String;
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_38

    if-lez v5, :cond_38

    .line 345
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "idx":I
    .local v7, "idx":I
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v0, v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3c

    move v3, v7

    .line 342
    .end local v6    # "tempstr":Ljava/lang/String;
    .end local v7    # "idx":I
    .restart local v3    # "idx":I
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 349
    .end local v3    # "idx":I
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "i":I
    :cond_3b
    goto :goto_3d

    .line 348
    :catch_3c
    move-exception v3

    .line 351
    :goto_3d
    return-object v0
.end method

.method private static isSystemApp(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 1031
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_17

    const/16 v0, 0x1388

    if-lt p0, v0, :cond_c

    const/16 v0, 0x176f

    if-le p0, v0, :cond_17

    :cond_c
    const/16 v0, 0x4b0

    if-eq p0, v0, :cond_17

    const/16 v0, 0x4b1

    if-ne p0, v0, :cond_15

    goto :goto_17

    .line 1036
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 1034
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method private processForegroundChanged(II)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1054
    const/4 v0, 0x0

    .line 1055
    .local v0, "checkflag":Z
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v1, v1, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    .line 1056
    .local v1, "prevProcessName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v2, v2, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->pid:I

    .line 1057
    .local v2, "prevPid":I
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v3, v3, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->uid:I

    .line 1059
    .local v3, "prevUid":I
    const-string v4, ""

    .line 1060
    .local v4, "resultProcessName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iput p1, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->pid:I

    .line 1061
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iput p2, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->uid:I

    .line 1062
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    .line 1064
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1065
    .local v7, "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, p2, :cond_41

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_41

    .line 1066
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v8, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_43

    .line 1067
    goto :goto_42

    .line 1069
    .end local v7    # "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_41
    goto :goto_26

    .line 1072
    :cond_42
    :goto_42
    goto :goto_47

    .line 1070
    :catch_43
    move-exception v5

    .line 1071
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1074
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_47
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v5, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    if-nez v5, :cond_65

    .line 1075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown app go to foreground... pid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PSITrackerService"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void

    .line 1079
    :cond_65
    sget-boolean v5, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    if-eqz v5, :cond_83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v7, v7, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " go to foreground!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "PSITrackerService"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_83
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v5, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    const-string v7, "com.sec.android.app.launcher"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v5, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    .line 1082
    const-string v7, "com.android.systemui"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 1083
    const/4 v0, 0x1

    .line 1084
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v4, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    goto :goto_bd

    .line 1085
    :cond_a1
    if-eqz v1, :cond_bd

    const-string v5, "com.sec.android.app.launcher"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 1086
    const-string v5, "com.android.systemui"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    .line 1087
    const/4 v0, 0x0

    .line 1088
    move-object v4, v1

    .line 1089
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iput v2, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->pid:I

    .line 1090
    iget-object v5, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iput v3, v5, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->uid:I

    .line 1093
    :cond_bd
    :goto_bd
    const/4 v5, 0x0

    .line 1094
    .local v5, "psifullmax":F
    const-wide/16 v7, 0x0

    .line 1095
    .local v7, "pss":J
    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIFULLMAXValue()F

    move-result v5

    .line 1098
    iget v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    .line 1099
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v9, v9, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->pid:I

    invoke-static {v9, v6, v6}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    .line 1101
    .end local v7    # "pss":J
    .local v6, "pss":J
    sget-boolean v8, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    if-eqz v8, :cond_121

    .line 1102
    if-eqz v0, :cond_103

    .line 1103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applaunched psifullmax: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", foregroundapp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v9, v9, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pss : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PSITrackerService"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    .line 1105
    :cond_103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applaunched psifullmax: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", prevForegroundapp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PSITrackerService"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_121
    :goto_121
    iget-object v8, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->syncListObj1:Ljava/lang/Object;

    monitor-enter v8

    .line 1109
    :try_start_124
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16c

    .line 1110
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v5, v9

    if-ltz v9, :cond_145

    .line 1111
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_145
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_18b

    .line 1114
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->nameUserIdMap:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v10, v10, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18b

    .line 1118
    :cond_16c
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->nameUserIdMap:Ljava/util/LinkedHashMap;

    iget-object v10, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v10, v10, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    :cond_18b
    :goto_18b
    monitor-exit v8

    .line 1130
    return-void

    .line 1129
    :catchall_18d
    move-exception v9

    monitor-exit v8
    :try_end_18f
    .catchall {:try_start_124 .. :try_end_18f} :catchall_18d

    throw v9
.end method

.method private record240MinutesAvailMem()V
    .registers 21

    .line 978
    move-object/from16 v8, p0

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v9, v0

    .line 979
    .local v9, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v0, v8, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 980
    const-wide/16 v1, 0x0

    .line 981
    .local v1, "cachedSize":J
    const-wide/16 v3, 0x0

    .line 984
    .local v3, "runningSize":J
    :try_start_11
    iget-object v0, v8, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 985
    .local v0, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 986
    .local v6, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x190

    if-lt v7, v10, :cond_37

    .line 987
    iget-object v7, v8, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {v8, v7, v10}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getMemmoryOfPid(Lcom/android/server/am/ActivityManagerService;I)J

    move-result-wide v10

    add-long/2addr v1, v10

    goto :goto_48

    .line 990
    :cond_37
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Lcom/android/server/ipm/psitracker/PSITrackerService;->isSystemApp(I)Z

    move-result v7

    if-nez v7, :cond_48

    .line 991
    iget-object v7, v8, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {v8, v7, v10}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getMemmoryOfPid(Lcom/android/server/am/ActivityManagerService;I)J

    move-result-wide v10
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_47} :catch_4c

    add-long/2addr v3, v10

    .line 994
    .end local v6    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_48
    :goto_48
    goto :goto_1b

    .line 997
    .end local v0    # "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_49
    move-wide v10, v1

    move-wide v12, v3

    goto :goto_52

    .line 995
    :catch_4c
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v10, v1

    move-wide v12, v3

    .line 999
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "cachedSize":J
    .end local v3    # "runningSize":J
    .local v10, "cachedSize":J
    .local v12, "runningSize":J
    :goto_52
    iget-wide v0, v9, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long v14, v0, v2

    .line 1000
    .local v14, "availMem":J
    move-wide v6, v12

    .line 1001
    .local v6, "running":J
    move-wide v4, v10

    .line 1002
    .local v4, "cached":J
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->DEBUG:Z

    if-eqz v0, :cond_8e

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getAvailable memInfo.totalMem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v9, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  available = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " runningSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cachedSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSITrackerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_8e
    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v16, v4

    .end local v4    # "cached":J
    .local v16, "cached":J
    move-wide v4, v6

    move-wide/from16 v18, v6

    .end local v6    # "running":J
    .local v18, "running":J
    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ipm/psitracker/PSITrackerService;->recordAvailableMemValue(JJJ)V

    .line 1019
    return-void
.end method

.method private record30MinutesPSI()V
    .registers 10

    .line 963
    iget v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    if-nez v0, :cond_30

    .line 964
    invoke-direct {p0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIFULLMAXValue()F

    move-result v0

    .line 965
    .local v0, "psifullmax":F
    const-wide/16 v7, 0x0

    .line 967
    .local v7, "pss":J
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v1, v1, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 968
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget v1, v1, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->pid:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v7

    .line 969
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->foregroundApp:Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;

    iget-object v2, v1, Lcom/android/server/ipm/psitracker/PSITrackerService$ForegroundApp;->processName:Ljava/lang/String;

    long-to-int v4, v7

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ipm/psitracker/PSITrackerService;->recordPSIValue(Ljava/lang/String;FIII)V

    goto :goto_30

    .line 972
    :cond_26
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, ""

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ipm/psitracker/PSITrackerService;->recordPSIValue(Ljava/lang/String;FIII)V

    .line 975
    .end local v0    # "psifullmax":F
    .end local v7    # "pss":J
    :cond_30
    :goto_30
    return-void
.end method

.method private record5MinutesPSI()V
    .registers 19

    .line 902
    move-object/from16 v7, p0

    const-string v1, ""

    .line 903
    .local v1, "processNameAt5minutes":Ljava/lang/String;
    const/4 v2, 0x0

    .line 904
    .local v2, "maxPsiFullMaxAt5minutes":F
    const-wide/16 v3, 0x0

    .line 905
    .local v3, "pssAt5minutes":J
    const/4 v5, 0x0

    .line 907
    .local v5, "userIdAt5minutes":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 908
    .local v8, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 909
    .local v9, "tempPssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 912
    .local v10, "tempUserIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    if-nez v0, :cond_1f

    return-void

    .line 913
    :cond_1f
    iget-object v6, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->syncListObj1:Ljava/lang/Object;

    monitor-enter v6

    .line 930
    :try_start_22
    iget-object v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_b1

    move-object v11, v1

    move v12, v2

    move-wide v13, v3

    move v15, v5

    .end local v1    # "processNameAt5minutes":Ljava/lang/String;
    .end local v2    # "maxPsiFullMaxAt5minutes":F
    .end local v3    # "pssAt5minutes":J
    .end local v5    # "userIdAt5minutes":I
    .local v11, "processNameAt5minutes":Ljava/lang/String;
    .local v12, "maxPsiFullMaxAt5minutes":F
    .local v13, "pssAt5minutes":J
    .local v15, "userIdAt5minutes":I
    :goto_30
    :try_start_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 931
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 932
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 933
    .local v3, "psifullmax":F
    iget-object v4, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 934
    .local v4, "pss":J
    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->nameUserIdMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 936
    .local v0, "userId":I
    cmpl-float v17, v3, v12

    if-ltz v17, :cond_6e

    .line 937
    move v12, v3

    .line 938
    move-object v11, v2

    .line 939
    move-wide v13, v4

    .line 940
    move v15, v0

    .line 942
    :cond_6e
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    move-object/from16 v17, v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    move-object/from16 v0, v16

    .end local v0    # "userId":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "psifullmax":F
    .end local v4    # "pss":J
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    goto :goto_30

    .line 947
    :cond_84
    iget-object v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePsiFullMaxMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 948
    iget-object v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->namePssMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 949
    iget-object v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->nameUserIdMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 951
    monitor-exit v6
    :try_end_94
    .catchall {:try_start_30 .. :try_end_94} :catchall_ab

    .line 953
    const/4 v0, 0x0

    iput v0, v7, Lcom/android/server/ipm/psitracker/PSITrackerService;->appentrycount:I

    .line 954
    long-to-int v4, v13

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move v3, v12

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ipm/psitracker/PSITrackerService;->recordPSIValue(Ljava/lang/String;FIII)V

    .line 957
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, v12, v0

    if-ltz v0, :cond_aa

    .line 958
    invoke-direct {v7, v8, v9, v10}, Lcom/android/server/ipm/psitracker/PSITrackerService;->recordAppEntryData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 960
    :cond_aa
    return-void

    .line 951
    :catchall_ab
    move-exception v0

    move-object v1, v11

    move v2, v12

    move-wide v3, v13

    move v5, v15

    goto :goto_b2

    .end local v11    # "processNameAt5minutes":Ljava/lang/String;
    .end local v12    # "maxPsiFullMaxAt5minutes":F
    .end local v13    # "pssAt5minutes":J
    .end local v15    # "userIdAt5minutes":I
    .local v1, "processNameAt5minutes":Ljava/lang/String;
    .local v2, "maxPsiFullMaxAt5minutes":F
    .local v3, "pssAt5minutes":J
    .restart local v5    # "userIdAt5minutes":I
    :catchall_b1
    move-exception v0

    :goto_b2
    :try_start_b2
    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0
.end method

.method private recordAppEntryData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 863
    .local p1, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "tempPssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "tempUserIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 864
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 865
    .local v3, "processName":Ljava/lang/String;
    move-object/from16 v10, p2

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 866
    .local v11, "longpss":J
    long-to-int v13, v11

    .line 867
    .local v13, "pss":I
    move-object/from16 v14, p3

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 869
    .local v15, "userId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 870
    .local v16, "checkTime":J
    iget-object v4, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    move-object v5, v3

    move v6, v13

    move v7, v15

    move-wide/from16 v8, v16

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/ipm/psitracker/PSICollector;->generateEntryAppRecord(Ljava/lang/String;IIJ)Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCurrentEntryAppRecord:Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;

    .line 872
    if-eqz v4, :cond_42

    .line 873
    iget-object v5, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v5, v4}, Lcom/android/server/ipm/psitracker/PSICollector;->saveEntryAppRecord(Lcom/android/server/ipm/psitracker/PSIEntryAppRecord;)V

    .line 863
    .end local v3    # "processName":Ljava/lang/String;
    .end local v11    # "longpss":J
    .end local v13    # "pss":I
    .end local v15    # "userId":I
    .end local v16    # "checkTime":J
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_45
    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p3

    .line 878
    .end local v1    # "i":I
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v1}, Lcom/android/server/ipm/psitracker/PSICollector;->isEntryAppRecordsSizeMax()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 879
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 880
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->what:I

    .line 881
    iget-object v3, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 883
    .end local v1    # "msg":Landroid/os/Message;
    :cond_60
    return-void
.end method

.method private recordAvailableMemValue(JJJ)V
    .registers 19
    .param p1, "availMem"    # J
    .param p3, "running"    # J
    .param p5, "cached"    # J

    .line 886
    move-object v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 887
    .local v10, "checkTime":J
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide v8, v10

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/ipm/psitracker/PSICollector;->generateAvailableMemRecord(JJJJ)Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCurrentAvailMemRecord:Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;

    .line 889
    if-eqz v1, :cond_19

    .line 890
    iget-object v2, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/psitracker/PSICollector;->saveAvailableMemRecord(Lcom/android/server/ipm/psitracker/PSIAvailableMemRecord;)V

    .line 894
    :cond_19
    iget-object v1, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v1}, Lcom/android/server/ipm/psitracker/PSICollector;->isAvailableMemRecordsSizeMax()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 895
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 896
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 897
    iget-object v2, v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2e
    return-void
.end method

.method private recordPSIValue(Ljava/lang/String;FIII)V
    .registers 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "psiMax"    # F
    .param p3, "pss"    # I
    .param p4, "type"    # I
    .param p5, "userId"    # I

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 814
    .local v8, "checkTime":J
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, v8

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ipm/psitracker/PSICollector;->generateRecord(Ljava/lang/String;FIIJI)Lcom/android/server/ipm/psitracker/PSIRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCurrentRecord:Lcom/android/server/ipm/psitracker/PSIRecord;

    .line 816
    if-eqz v0, :cond_19

    .line 817
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v1, v0}, Lcom/android/server/ipm/psitracker/PSICollector;->saveRecord(Lcom/android/server/ipm/psitracker/PSIRecord;)V

    .line 821
    :cond_19
    iget-object v0, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mCollector:Lcom/android/server/ipm/psitracker/PSICollector;

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSICollector;->isRecordsSizeMax()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 822
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 823
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 824
    iget-object v1, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 826
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2e
    return-void
.end method

.method private scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 219
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 225
    .local v1, "nowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xdbba00

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule next trigger time interval: 4 /now Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PSITrackerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule next trigger time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 230
    .local v3, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAvailMemRecord240AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 231
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mAvailMemRecord240AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-string v8, "RecordAvailMem240"

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 232
    return-void
.end method

.method private schedulePSI30PeriodRecord(Ljava/lang/String;)V
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 159
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 165
    .local v1, "nowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule next trigger time interval: 0 /now Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PSITrackerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule next trigger time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 170
    .local v3, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecordAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecordAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-string v8, "RecordPSI30"

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 172
    return-void
.end method

.method private schedulePSI5PeriodRecord(Ljava/lang/String;)V
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;

    .line 200
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 201
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 207
    .local v1, "nowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule next trigger time interval: 0 /now Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PSITrackerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule next trigger time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v3, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 212
    .local v3, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecord5AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 213
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mPSIRecord5AlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ipm/psitracker/PSITrackerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-string v8, "RecordPSI5"

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 214
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    .line 1193
    const-string v0, "0"

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_24

    .line 1196
    :cond_13
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    goto :goto_2e

    .line 1193
    :cond_22
    move-object/from16 v2, p3

    .line 1194
    :goto_24
    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIValueListDump(Ljava/io/PrintWriter;JJ)V

    .line 1198
    :goto_2e
    return-void
.end method

.method public getAvailableMemInfo(JJ)Ljava/util/List;
    .registers 27
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/PSIAvailableMem;",
            ">;"
        }
    .end annotation

    .line 583
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 584
    .local v5, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 585
    .local v6, "availMemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 586
    .local v7, "runningList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 587
    .local v8, "cachedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 589
    .local v9, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v10

    .line 590
    .local v10, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    const/4 v11, 0x0

    .line 592
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {v10}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 593
    const-string v0, "PSITrackerService"

    const-string v12, "getAvailableMemInfo failed! db is closed!"

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_34
    const-string v0, ""

    .line 597
    .local v0, "statement":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v14, v1, v12

    const-string v15, " ORDER BY id"

    const-string v12, "SELECT id,availMem,running,cached,checkTime FROM "

    if-nez v14, :cond_5d

    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-eqz v13, :cond_47

    goto :goto_5d

    .line 610
    :cond_47
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_82

    .line 599
    :cond_5d
    :goto_5d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " WHERE checkTime <= "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " AND checkTime > "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 621
    .end local v0    # "statement":Ljava/lang/String;
    .local v12, "statement":Ljava/lang/String;
    :goto_82
    const/4 v0, 0x0

    :try_start_83
    invoke-virtual {v10, v12, v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 623
    if-eqz v11, :cond_e8

    .line 624
    const-string/jumbo v0, "id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, "idIndex":I
    const-string v13, "availMem"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 626
    .local v13, "availMemIndex":I
    const-string/jumbo v14, "running"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 627
    .local v14, "runningIndex":I
    const-string v15, "cached"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 628
    .local v15, "cachedIndex":I
    const-string v1, "checkTime"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 630
    .local v1, "checkTimeIndex":I
    :goto_aa
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 631
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e7} :catch_f0
    .catchall {:try_start_83 .. :try_end_e7} :catchall_ee

    goto :goto_aa

    .line 641
    .end local v0    # "idIndex":I
    .end local v1    # "checkTimeIndex":I
    .end local v13    # "availMemIndex":I
    .end local v14    # "runningIndex":I
    .end local v15    # "cachedIndex":I
    :cond_e8
    if-eqz v11, :cond_f7

    .line 642
    :goto_ea
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_f7

    .line 641
    :catchall_ee
    move-exception v0

    goto :goto_138

    .line 638
    :catch_f0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_ee

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v11, :cond_f7

    .line 642
    goto :goto_ea

    .line 646
    :cond_f7
    :goto_f7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/PSIAvailableMem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_fd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_137

    .line 648
    new-instance v2, Lcom/samsung/android/ipm/PSIAvailableMem;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object v13, v2

    invoke-direct/range {v13 .. v21}, Lcom/samsung/android/ipm/PSIAvailableMem;-><init>(JJJJ)V

    .line 649
    .local v2, "availMemInfo":Lcom/samsung/android/ipm/PSIAvailableMem;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    .end local v2    # "availMemInfo":Lcom/samsung/android/ipm/PSIAvailableMem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_fd

    .line 652
    .end local v1    # "i":I
    :cond_137
    return-object v0

    .line 641
    .end local v0    # "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/PSIAvailableMem;>;"
    :goto_138
    if-eqz v11, :cond_13d

    .line 642
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_13d
    throw v0
.end method

.method public getEntryInfo(JJ)Ljava/util/List;
    .registers 25
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/AppEntryInfo;",
            ">;"
        }
    .end annotation

    .line 510
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 511
    .local v5, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 512
    .local v6, "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 513
    .local v7, "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 514
    .local v8, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 516
    .local v9, "userIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v10

    .line 517
    .local v10, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    const/4 v11, 0x0

    .line 519
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {v10}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 520
    const-string v0, "PSITrackerService"

    const-string v12, "getEntryInfo failed! db is closed!"

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_34
    const-string v0, ""

    .line 524
    .local v0, "statement":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v14, v1, v12

    const-string v15, " ORDER BY id"

    const-string v12, "SELECT id,processName,pss,userId,checkTime FROM "

    if-nez v14, :cond_5d

    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-eqz v13, :cond_47

    goto :goto_5d

    .line 537
    :cond_47
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_82

    .line 526
    :cond_5d
    :goto_5d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/ipm/psitracker/PSIDBManager;->mEntryAppTable:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " WHERE checkTime <= "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " AND checkTime > "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 548
    .end local v0    # "statement":Ljava/lang/String;
    .local v12, "statement":Ljava/lang/String;
    :goto_82
    const/4 v0, 0x0

    :try_start_83
    invoke-virtual {v10, v12, v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v11, v0

    .line 550
    if-eqz v11, :cond_e6

    .line 551
    const-string/jumbo v0, "id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 552
    .local v0, "idIndex":I
    const-string/jumbo v13, "processName"

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 553
    .local v13, "processNameIndex":I
    const-string/jumbo v14, "pss"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 554
    .local v14, "pssIndex":I
    const-string/jumbo v15, "userId"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 555
    .local v15, "userIdIndex":I
    const-string v1, "checkTime"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "checkTimeIndex":I
    :goto_ac
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 558
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e5} :catch_ee
    .catchall {:try_start_83 .. :try_end_e5} :catchall_ec

    goto :goto_ac

    .line 568
    .end local v0    # "idIndex":I
    .end local v1    # "checkTimeIndex":I
    .end local v13    # "processNameIndex":I
    .end local v14    # "pssIndex":I
    .end local v15    # "userIdIndex":I
    :cond_e6
    if-eqz v11, :cond_f5

    .line 569
    :goto_e8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_f5

    .line 568
    :catchall_ec
    move-exception v0

    goto :goto_133

    .line 565
    :catch_ee
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_ec

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v11, :cond_f5

    .line 569
    goto :goto_e8

    .line 573
    :cond_f5
    :goto_f5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v0, "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_fb
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_132

    .line 575
    new-instance v2, Lcom/samsung/android/ipm/AppEntryInfo;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/ipm/AppEntryInfo;-><init>(Ljava/lang/String;JIJ)V

    .line 576
    .local v2, "entryInform":Lcom/samsung/android/ipm/AppEntryInfo;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v2    # "entryInform":Lcom/samsung/android/ipm/AppEntryInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    .line 579
    .end local v1    # "i":I
    :cond_132
    return-object v0

    .line 568
    .end local v0    # "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    :goto_133
    if-eqz v11, :cond_138

    .line 569
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_138
    throw v0
.end method

.method public getPSI(JJ)Ljava/util/List;
    .registers 29
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/PSIInformation;",
            ">;"
        }
    .end annotation

    .line 415
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 416
    .local v5, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 417
    .local v6, "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 418
    .local v7, "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 419
    .local v8, "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 420
    .local v9, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 422
    .local v10, "userIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v11

    .line 423
    .local v11, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    const/4 v12, 0x0

    .line 425
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-virtual {v11}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 426
    const-string v0, "PSITrackerService"

    const-string v13, "getPSI failed! db is closed!"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3a
    const-string v0, ""

    .line 430
    .local v0, "statement":Ljava/lang/String;
    const-wide/16 v13, 0x0

    cmp-long v15, v1, v13

    const-string v13, " ORDER BY id"

    const-string v14, "SELECT id,processName,psiMax,pss,type,checkTime,userId FROM "

    if-nez v15, :cond_63

    const-wide/16 v15, 0x0

    cmp-long v15, v3, v15

    if-eqz v15, :cond_4d

    goto :goto_63

    .line 445
    :cond_4d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_88

    .line 432
    :cond_63
    :goto_63
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " WHERE checkTime <= "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " AND checkTime > "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 458
    .end local v0    # "statement":Ljava/lang/String;
    .local v13, "statement":Ljava/lang/String;
    :goto_88
    const/4 v0, 0x0

    :try_start_89
    invoke-virtual {v11, v13, v0}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 460
    if-eqz v12, :cond_fe

    .line 461
    const-string/jumbo v0, "id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, "idIndex":I
    const-string/jumbo v14, "processName"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 463
    .local v14, "processNameIndex":I
    const-string/jumbo v15, "psiMax"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 464
    .local v15, "psiMaxIndex":I
    const-string/jumbo v1, "pss"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, "pssIndex":I
    const-string v2, "checkTime"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 466
    .local v2, "checkTimeIndex":I
    const-string/jumbo v3, "userId"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 468
    .local v3, "userIdIndex":I
    :goto_b9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 469
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_fd} :catch_107
    .catchall {:try_start_89 .. :try_end_fd} :catchall_104

    goto :goto_b9

    .line 480
    .end local v0    # "idIndex":I
    .end local v1    # "pssIndex":I
    .end local v2    # "checkTimeIndex":I
    .end local v3    # "userIdIndex":I
    .end local v14    # "processNameIndex":I
    .end local v15    # "psiMaxIndex":I
    :cond_fe
    if-eqz v12, :cond_10e

    .line 481
    :goto_100
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_10e

    .line 480
    :catchall_104
    move-exception v0

    goto/16 :goto_194

    .line 477
    :catch_107
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    :try_start_108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_104

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v12, :cond_10e

    .line 481
    goto :goto_100

    .line 485
    :cond_10e
    :goto_10e
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getEntryInfo(JJ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 486
    .local v0, "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    if-nez v0, :cond_11c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 488
    :cond_11c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v1, "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/PSIInformation;>;"
    const/4 v2, 0x0

    .line 490
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_193

    .line 491
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v4, "entryInfoItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    :goto_12e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_155

    .line 494
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/ipm/AppEntryInfo;

    .line 495
    .local v14, "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    if-nez v14, :cond_13d

    goto :goto_155

    .line 497
    :cond_13d
    invoke-virtual {v14}, Lcom/samsung/android/ipm/AppEntryInfo;->getCheckTime()J

    move-result-wide v15

    .line 498
    .local v15, "curItemCheckTime":J
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 499
    .local v17, "lastItemCheckTime":J
    cmp-long v19, v15, v17

    if-gtz v19, :cond_155

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v14    # "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    .end local v15    # "curItemCheckTime":J
    .end local v17    # "lastItemCheckTime":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_12e

    .line 503
    :cond_155
    :goto_155
    new-instance v23, Lcom/samsung/android/ipm/PSIInformation;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v14, v23

    move-object v15, v4

    invoke-direct/range {v14 .. v22}, Lcom/samsung/android/ipm/PSIInformation;-><init>(Ljava/util/ArrayList;Ljava/lang/String;FJJI)V

    .line 504
    .local v14, "psiinform":Lcom/samsung/android/ipm/PSIInformation;
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v4    # "entryInfoItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v14    # "psiinform":Lcom/samsung/android/ipm/PSIInformation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 507
    .end local v3    # "i":I
    :cond_193
    return-object v1

    .line 480
    .end local v0    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v1    # "resultarray":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/PSIInformation;>;"
    .end local v2    # "j":I
    :goto_194
    if-eqz v12, :cond_199

    .line 481
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_199
    throw v0
.end method

.method public getPSICurrentValue()[F
    .registers 10

    .line 383
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 384
    .local v0, "avg":[F
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x100a

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 388
    .local v2, "SINGLE_LONG_FORMAT":[I
    new-array v1, v1, [Ljava/lang/String;

    .line 390
    .local v1, "longTmp1":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSI_MEMORY_NODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v5, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "index":I
    :try_start_14
    new-instance v5, Ljava/util/StringTokenizer;

    aget-object v4, v1, v4

    const-string v6, " ="

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 395
    .local v4, "st":Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 396
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "tempstr":Ljava/lang/String;
    rem-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_38

    if-lez v5, :cond_38

    .line 398
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v0, v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3c

    move v3, v7

    .line 395
    .end local v6    # "tempstr":Ljava/lang/String;
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 402
    .end local v3    # "index":I
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "i":I
    :cond_3b
    goto :goto_3d

    .line 401
    :catch_3c
    move-exception v3

    .line 403
    :goto_3d
    return-object v0
.end method

.method public getPSIThreshold()F
    .registers 2

    .line 407
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method public getPSIValueListDump(Ljava/io/PrintWriter;JJ)V
    .registers 40
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .line 656
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-string v6, "checkTime"

    const-string/jumbo v7, "id"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 657
    .local v8, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 658
    .local v9, "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 659
    .local v10, "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 660
    .local v11, "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 662
    .local v12, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/server/ipm/psitracker/PSIDBManager;->getInstance()Lcom/android/server/ipm/psitracker/PSIDBManager;

    move-result-object v13

    .line 663
    .local v13, "db":Lcom/android/server/ipm/psitracker/PSIDBManager;
    const/4 v14, 0x0

    .line 665
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-virtual {v13}, Lcom/android/server/ipm/psitracker/PSIDBManager;->isDBClosed()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 666
    const-string v0, "PSITrackerService"

    const-string v6, "getPSI failed! db is closed!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_3c
    const-string v0, ""

    .line 671
    .local v0, "statement":Ljava/lang/String;
    const-wide/16 v15, 0x0

    cmp-long v17, v2, v15

    const-string v15, " AND checkTime > "

    move-object/from16 v16, v14

    .end local v14    # "cursor":Landroid/database/Cursor;
    .local v16, "cursor":Landroid/database/Cursor;
    const-string v14, " WHERE checkTime <= "

    move-object/from16 v19, v0

    .end local v0    # "statement":Ljava/lang/String;
    .local v19, "statement":Ljava/lang/String;
    const-string v0, "SELECT id,processName,psiMax,pss,type,checkTime,userId FROM "

    const-string v1, " ORDER BY id"

    if-nez v17, :cond_71

    const-wide/16 v17, 0x0

    cmp-long v20, v4, v17

    if-eqz v20, :cond_59

    move-object/from16 v17, v12

    goto :goto_73

    .line 686
    :cond_59
    move-object/from16 v17, v12

    .end local v12    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v17, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .end local v19    # "statement":Ljava/lang/String;
    .restart local v0    # "statement":Ljava/lang/String;
    goto :goto_94

    .line 671
    .end local v0    # "statement":Ljava/lang/String;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v12    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "statement":Ljava/lang/String;
    :cond_71
    move-object/from16 v17, v12

    .line 673
    .end local v12    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_73
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/ipm/psitracker/PSIDBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 698
    .end local v19    # "statement":Ljava/lang/String;
    .local v12, "statement":Ljava/lang/String;
    :goto_94
    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_97
    invoke-virtual {v13, v12, v1}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_189
    .catchall {:try_start_97 .. :try_end_9b} :catchall_176

    move-object/from16 v16, v0

    .line 700
    move-object/from16 v1, v16

    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_166

    .line 701
    :try_start_a1
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a5} :catch_15c
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_14a

    .line 702
    .local v0, "idIndex":I
    move-object/from16 v21, v12

    .end local v12    # "statement":Ljava/lang/String;
    .local v21, "statement":Ljava/lang/String;
    :try_start_a7
    const-string/jumbo v12, "processName"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ae} :catch_142
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_132

    .line 703
    .local v12, "processNameIndex":I
    move-object/from16 v22, v7

    :try_start_b0
    const-string/jumbo v7, "psiMax"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b7} :catch_130
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_132

    .line 704
    .local v7, "psiMaxIndex":I
    move-object/from16 v23, v15

    :try_start_b9
    const-string/jumbo v15, "pss"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 705
    .local v15, "pssIndex":I
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v24, v16

    .line 707
    .local v24, "checkTimeIndex":I
    :goto_c6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_125

    .line 708
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v25, v0

    .end local v0    # "idIndex":I
    .local v25, "idIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    move/from16 v0, v24

    .end local v24    # "checkTimeIndex":I
    .local v0, "checkTimeIndex":I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move/from16 v16, v0

    .end local v0    # "checkTimeIndex":I
    .local v16, "checkTimeIndex":I
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_102} :catch_12e
    .catchall {:try_start_b9 .. :try_end_102} :catchall_132

    move/from16 v24, v7

    move-object/from16 v7, v17

    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v7, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v24, "psiMaxIndex":I
    :try_start_106
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_122
    .catchall {:try_start_106 .. :try_end_109} :catchall_112

    move-object/from16 v17, v7

    move/from16 v7, v24

    move/from16 v0, v25

    move/from16 v24, v16

    goto :goto_c6

    .line 718
    .end local v12    # "processNameIndex":I
    .end local v15    # "pssIndex":I
    .end local v16    # "checkTimeIndex":I
    .end local v24    # "psiMaxIndex":I
    .end local v25    # "idIndex":I
    :catchall_112
    move-exception v0

    move-object/from16 v12, p1

    move-object v14, v1

    move-object/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v19, v11

    goto/16 :goto_425

    .line 715
    :catch_122
    move-exception v0

    goto/16 :goto_194

    .line 707
    .local v0, "idIndex":I
    .local v7, "psiMaxIndex":I
    .restart local v12    # "processNameIndex":I
    .restart local v15    # "pssIndex":I
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v24, "checkTimeIndex":I
    :cond_125
    move/from16 v25, v0

    move/from16 v16, v24

    move/from16 v24, v7

    move-object/from16 v7, v17

    .end local v0    # "idIndex":I
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v7, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16    # "checkTimeIndex":I
    .local v24, "psiMaxIndex":I
    .restart local v25    # "idIndex":I
    goto :goto_16e

    .line 715
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12    # "processNameIndex":I
    .end local v15    # "pssIndex":I
    .end local v16    # "checkTimeIndex":I
    .end local v24    # "psiMaxIndex":I
    .end local v25    # "idIndex":I
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_12e
    move-exception v0

    goto :goto_147

    :catch_130
    move-exception v0

    goto :goto_145

    .line 718
    :catchall_132
    move-exception v0

    move-object/from16 v12, p1

    move-object v14, v1

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v19, v11

    move-object/from16 v30, v17

    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto/16 :goto_425

    .line 715
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_142
    move-exception v0

    move-object/from16 v22, v7

    :goto_145
    move-object/from16 v23, v15

    :goto_147
    move-object/from16 v7, v17

    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_194

    .line 718
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "statement":Ljava/lang/String;
    .local v12, "statement":Ljava/lang/String;
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_14a
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v12, p1

    move-object v14, v1

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v19, v11

    move-object/from16 v30, v17

    .end local v12    # "statement":Ljava/lang/String;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    goto/16 :goto_425

    .line 715
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "statement":Ljava/lang/String;
    .restart local v12    # "statement":Ljava/lang/String;
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_15c
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object/from16 v7, v17

    .end local v12    # "statement":Ljava/lang/String;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    goto :goto_194

    .line 700
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "statement":Ljava/lang/String;
    .restart local v12    # "statement":Ljava/lang/String;
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_166
    move-object/from16 v22, v7

    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object/from16 v7, v17

    .line 718
    .end local v12    # "statement":Ljava/lang/String;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    :goto_16e
    if-eqz v1, :cond_173

    .line 719
    :goto_170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_173
    move-object/from16 v16, v1

    goto :goto_19a

    .line 718
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "statement":Ljava/lang/String;
    .restart local v12    # "statement":Ljava/lang/String;
    .local v16, "cursor":Landroid/database/Cursor;
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_176
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v12, p1

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v19, v11

    move-object/from16 v14, v16

    move-object/from16 v30, v17

    .end local v12    # "statement":Ljava/lang/String;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    goto/16 :goto_425

    .line 715
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "statement":Ljava/lang/String;
    .restart local v12    # "statement":Ljava/lang/String;
    .restart local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_189
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v21, v12

    move-object/from16 v23, v15

    move-object/from16 v7, v17

    move-object/from16 v1, v16

    .line 716
    .end local v12    # "statement":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    :goto_194
    :try_start_194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_197
    .catchall {:try_start_194 .. :try_end_197} :catchall_417

    .line 718
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_173

    .line 719
    goto :goto_170

    .line 723
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :goto_19a
    move-object/from16 v12, p0

    invoke-virtual {v12, v2, v3, v4, v5}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getEntryInfo(JJ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 724
    .local v0, "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    if-nez v0, :cond_1ab

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    goto :goto_1ac

    :cond_1ab
    move-object v1, v0

    .line 725
    .end local v0    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .local v1, "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    :goto_1ac
    const/4 v0, 0x0

    .line 727
    .local v0, "j":I
    const/4 v15, 0x0

    move/from16 v33, v15

    move v15, v0

    move/from16 v0, v33

    .local v0, "i":I
    .local v15, "j":I
    :goto_1b3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_2b9

    .line 728
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    .end local v15    # "j":I
    .local v17, "j":I
    const-string v15, "ID : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "ProcessName : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v8

    .end local v8    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v25, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v8, v24

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", psiMax : "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", pss : "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v9

    .end local v9    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", checkTime"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v10

    .end local v10    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v26, "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, p1

    move-object/from16 v33, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v33

    .end local v11    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v19, "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v6

    move/from16 v6, v17

    .line 730
    .end local v17    # "j":I
    .local v6, "j":I
    .local v10, "entryInfoItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    :goto_21e
    move-object/from16 v28, v14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_249

    .line 731
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/ipm/AppEntryInfo;

    .line 732
    .local v14, "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    if-nez v14, :cond_22f

    goto :goto_249

    .line 734
    :cond_22f
    invoke-virtual {v14}, Lcom/samsung/android/ipm/AppEntryInfo;->getCheckTime()J

    move-result-wide v29

    .line 735
    .local v29, "curItemCheckTime":J
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 736
    .local v31, "lastItemCheckTime":J
    cmp-long v17, v29, v31

    if-gtz v17, :cond_249

    .line 737
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    .end local v14    # "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    .end local v29    # "curItemCheckTime":J
    .end local v31    # "lastItemCheckTime":J
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, v28

    goto :goto_21e

    .line 743
    :cond_249
    :goto_249
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_24a
    move/from16 v17, v6

    .end local v6    # "j":I
    .restart local v17    # "j":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v14, v6, :cond_29d

    .line 744
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/ipm/AppEntryInfo;

    .line 745
    .local v6, "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    move-object/from16 v29, v1

    .end local v1    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .local v29, "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v7

    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v30, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Lcom/samsung/android/ipm/AppEntryInfo;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v31, v8

    invoke-virtual {v6}, Lcom/samsung/android/ipm/AppEntryInfo;->getPss()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/ipm/AppEntryInfo;->getUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/ipm/AppEntryInfo;->getCheckTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .end local v6    # "curAppEntryInfo":Lcom/samsung/android/ipm/AppEntryInfo;
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    move-object/from16 v1, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    goto :goto_24a

    .end local v29    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_29d
    move-object/from16 v29, v1

    move-object/from16 v30, v7

    .line 727
    .end local v1    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v10    # "entryInfoItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v14    # "k":I
    .restart local v29    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .restart local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, p0

    move/from16 v15, v17

    move-object/from16 v9, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move-object/from16 v6, v27

    move-object/from16 v14, v28

    move-object/from16 v33, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v33

    goto/16 :goto_1b3

    .end local v17    # "j":I
    .end local v19    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v29    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v1    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .restart local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v8    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v11    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v15    # "j":I
    :cond_2b9
    move-object/from16 v12, p1

    move-object/from16 v29, v1

    move-object/from16 v27, v6

    move-object/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v14

    move/from16 v17, v15

    move-object/from16 v33, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v33

    .line 749
    .end local v0    # "i":I
    .end local v1    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v11    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "j":I
    .restart local v17    # "j":I
    .restart local v19    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v29    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .restart local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 750
    .end local v25    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v1, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 751
    .local v6, "availMemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 752
    .local v7, "runningList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 753
    .local v8, "cachedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 755
    .end local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v9, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v14, 0x0

    cmp-long v0, v2, v14

    const-string v10, "SELECT id,availMem,running,cached,checkTime FROM "

    if-nez v0, :cond_312

    cmp-long v0, v4, v14

    if-eqz v0, :cond_2fc

    goto :goto_312

    .line 768
    :cond_2fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .end local v21    # "statement":Ljava/lang/String;
    .local v0, "statement":Ljava/lang/String;
    goto :goto_337

    .line 757
    .end local v0    # "statement":Ljava/lang/String;
    .restart local v21    # "statement":Ljava/lang/String;
    :cond_312
    :goto_312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v13, Lcom/android/server/ipm/psitracker/PSIDBManager;->mAvailMemTable:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v10, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 778
    .end local v21    # "statement":Ljava/lang/String;
    .local v10, "statement":Ljava/lang/String;
    :goto_337
    const/4 v11, 0x0

    :try_start_338
    invoke-virtual {v13, v10, v11}, Lcom/android/server/ipm/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_33c
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_33c} :catch_3b3
    .catchall {:try_start_338 .. :try_end_33c} :catchall_3b1

    move-object v11, v0

    .line 780
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_3ab

    .line 781
    move-object/from16 v14, v22

    :try_start_341
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 782
    .local v0, "idIndex":I
    const-string v14, "availMem"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 783
    .local v14, "availMemIndex":I
    const-string/jumbo v15, "running"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 784
    .local v15, "runningIndex":I
    const-string v2, "cached"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 785
    .local v2, "cachedIndex":I
    move-object/from16 v3, v27

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 787
    .local v3, "checkTimeIndex":I
    :goto_35e
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_3a0

    .line 788
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v18, v0

    .end local v0    # "idIndex":I
    .local v18, "idIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39d
    .catch Ljava/lang/Exception; {:try_start_341 .. :try_end_39d} :catch_3a7
    .catchall {:try_start_341 .. :try_end_39d} :catchall_3a3

    move/from16 v0, v18

    goto :goto_35e

    .line 787
    .end local v18    # "idIndex":I
    .restart local v0    # "idIndex":I
    :cond_3a0
    move/from16 v18, v0

    .end local v0    # "idIndex":I
    .restart local v18    # "idIndex":I
    goto :goto_3ab

    .line 798
    .end local v2    # "cachedIndex":I
    .end local v3    # "checkTimeIndex":I
    .end local v14    # "availMemIndex":I
    .end local v15    # "runningIndex":I
    .end local v18    # "idIndex":I
    :catchall_3a3
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_411

    .line 795
    :catch_3a7
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_3b4

    .line 798
    :cond_3ab
    :goto_3ab
    if-eqz v11, :cond_3be

    .line 799
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3be

    .line 798
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_3b1
    move-exception v0

    goto :goto_411

    .line 795
    :catch_3b3
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    :goto_3b4
    :try_start_3b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b7
    .catchall {:try_start_3b4 .. :try_end_3b7} :catchall_3b1

    .line 798
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v16, :cond_3bc

    .line 799
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 802
    :cond_3bc
    move-object/from16 v11, v16

    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_3be
    :goto_3be
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3bf
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_410

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AvailMem ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Availmem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", running : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cached : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", checkTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_3bf

    .line 810
    .end local v0    # "i":I
    :cond_410
    return-void

    .line 798
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :goto_411
    if-eqz v16, :cond_416

    .line 799
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_416
    throw v0

    .line 718
    .end local v6    # "availMemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "j":I
    .end local v19    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v29    # "entryInfo":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/ipm/AppEntryInfo;>;"
    .local v1, "cursor":Landroid/database/Cursor;
    .local v7, "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v8, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v11, "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "statement":Ljava/lang/String;
    :catchall_417
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v26, v10

    move-object/from16 v19, v11

    move-object v14, v1

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v7    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v8    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v11    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v14, "cursor":Landroid/database/Cursor;
    .restart local v19    # "pssList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "processNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "psiMaxList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v30    # "checkTimeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_425
    if-eqz v14, :cond_42a

    .line 719
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_42a
    throw v0
.end method

.method public isSupportPSI()Z
    .registers 2

    .line 411
    sget-boolean v0, Lcom/android/server/ipm/psitracker/PSITrackerService;->PSIONOFFSWITCH:Z

    return v0
.end method
