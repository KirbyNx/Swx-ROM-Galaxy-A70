.class public Lcom/android/server/wm/SluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;,
        Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;
    }
.end annotation


# static fields
.field private static ALWAYS:Z = false

.field private static final A_CHANGE:S = 0x1s

.field private static final A_END:S = 0x2s

.field private static final A_START:S = 0x0s

.field private static CurrentLocale:Ljava/util/Locale; = null

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static DEBUG:Z = false

.field private static final DEFAULT_COMPONENT_NAME:Ljava/lang/String;

.field private static final DEFAULT_MAXIMUM_LOG_COUNT:I = 0x3e8

.field private static DateFormat:Ljava/text/SimpleDateFormat; = null

.field public static ENABLE:Z = false

.field private static FLAG_DHA:Z = false

.field private static FLAG_MEMINFO:Z = false

.field private static FLAG_VMSTAT:Z = false

.field private static LaunchingComponentName:Ljava/lang/String; = null

.field private static volatile LogList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MAXIMUM_LOG_COUNT:I = 0x0

.field private static final MSG_ADD_CHANGE_ACTIVITY_LOG:I = 0x3

.field private static final MSG_ADD_END_LAUNCHING_LOG:I = 0x2

.field private static final MSG_ADD_START_LAUNCHING_LOG:I = 0x1

.field private static final PROC_KPERF_OLOG:Ljava/lang/String; = "/proc/kperfmon"

.field private static final PROC_SEND_TAR:Ljava/lang/String; = "/sys/block/sda/iomon"

.field private static final TAG:Ljava/lang/String;

.field private static final TINYM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.tinym"

.field private static final TypeDHA:[Ljava/lang/String;

.field private static final TypeMeminfo:[Ljava/lang/String;

.field private static final TypeSimpleDHA:[Ljava/lang/String;

.field private static final TypeVmstat:[Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1

.field private static volatile instance:Lcom/android/server/wm/SluggishInfo;

.field private static numCached:I

.field private static numCachedHiddenProcs:I

.field private static numEmpty:I

.field private static numNonCachedProcs:I


# instance fields
.field private mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 39
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_AAAA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    .line 46
    sput-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    .line 47
    sput-boolean v0, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    .line 51
    sput-object v0, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    .line 54
    const/16 v1, 0x3e8

    sput v1, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    .line 56
    sput-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    .line 58
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    .line 59
    sput-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    .line 60
    sput-boolean v1, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    .line 70
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v2, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/kperfmon"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "lk_proc":Ljava/io/File;
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_4c

    .line 82
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, " [SI] Start SI "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_4c
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 86
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, " [SI] Start SI kperfmon exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sput-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    goto :goto_63

    .line 90
    :cond_5c
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, " [SI] kperfmon nonexist"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_63
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_7b

    .line 94
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_72

    .line 95
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, "SluggishInfo static initialize"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_72
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 98
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initDateFormat()V

    .line 99
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initSluggishInfo()V

    .line 103
    .end local v2    # "lk_proc":Ljava/io/File;
    :cond_7b
    sput-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    .line 470
    const-string v0, "MemFree"

    const-string v1, "Cached"

    const-string v2, "SwapFree"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    .line 512
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/SluggishInfo;->numCached:I

    .line 513
    sput v0, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    .line 514
    sput v0, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    .line 515
    sput v0, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    .line 534
    const-string/jumbo v0, "numCached"

    const-string/jumbo v1, "numEmpty"

    const-string/jumbo v2, "numCachedHiddenProcs"

    const-string/jumbo v3, "numNonCachedProcs"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    .line 540
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeSimpleDHA:[Ljava/lang/String;

    .line 570
    const-string/jumbo v1, "pgpgin"

    const-string/jumbo v2, "pgmajfault"

    const-string/jumbo v3, "pgsteal_kswapd_dma"

    const-string/jumbo v4, "pgsteal_kswapd_normal"

    const-string/jumbo v5, "pgsteal_kswapd_movable"

    const-string/jumbo v6, "pgsteal_direct_dma"

    const-string/jumbo v7, "pgsteal_direct_normal"

    const-string/jumbo v8, "pgsteal_direct_movable"

    const-string v9, "allocstall"

    const-string v10, "compact_stall"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 105
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    .line 109
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_33

    .line 111
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 112
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_17
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 116
    new-instance v0, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    iget-object v1, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;-><init>(Landroid/os/Looper;Lcom/android/server/wm/SluggishInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    .line 118
    :cond_33
    return-void
.end method

.method private static Clear()V
    .registers 2

    .line 230
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 231
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "Clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_b
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_12

    .line 234
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 236
    :cond_12
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 237
    return-void
.end method

.method private static Clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 241
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->Clear()V

    .line 242
    const-string v0, "CLEAR SLUGGISH INFO LOG"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/wm/SluggishInfo;
    .registers 1

    .line 37
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()[J
    .registers 1

    .line 37
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[I
    .registers 1

    .line 37
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentSimpleDHAStat()[I

    move-result-object v0

    return-object v0
.end method

.method public static addChangeActivityLog(Ljava/lang/String;)V
    .registers 5
    .param p0, "componentName"    # Ljava/lang/String;

    .line 984
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2e

    .line 986
    if-nez p0, :cond_7

    .line 987
    return-void

    .line 989
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addChangeActivityLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 992
    :cond_23
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 994
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 995
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 997
    :cond_2e
    return-void
.end method

.method static addEndLaunchLog(Ljava/lang/String;J)V
    .registers 8
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "launchTime"    # J

    .line 967
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_47

    .line 969
    if-nez p0, :cond_7

    .line 970
    return-void

    .line 972
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addEndLaunchLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 975
    :cond_23
    const/4 v0, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 977
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_47

    .line 978
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 980
    :cond_47
    return-void
.end method

.method private static declared-synchronized addInnerChangeActivityLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "componentName"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 287
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_61

    if-nez p0, :cond_a

    goto :goto_61

    .line 290
    :cond_a
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    if-nez v1, :cond_37

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 291
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_35

    .line 292
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addInnerChangeActivityLog() - LaunchingComponentName == componentName ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_63

    .line 294
    :cond_35
    monitor-exit v0

    return-void

    .line 297
    :cond_37
    :try_start_37
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_53

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerChangeActivityLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 300
    :cond_53
    const/4 v1, 0x4

    const/4 v4, 0x1

    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 302
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_5f

    .line 303
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_63

    .line 304
    :cond_5f
    monitor-exit v0

    return-void

    .line 288
    :cond_61
    :goto_61
    monitor-exit v0

    return-void

    .line 286
    .end local p0    # "componentName":Ljava/lang/String;
    :catchall_63
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addInnerEndLaunchingLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "componentName"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 308
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_38

    if-nez p0, :cond_a

    goto :goto_38

    .line 311
    :cond_a
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 313
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_2a

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerEndLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 317
    :cond_2a
    const/4 v1, 0x4

    const/4 v4, 0x2

    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 319
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_36

    .line 320
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 321
    :cond_36
    monitor-exit v0

    return-void

    .line 309
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    .line 307
    .end local p0    # "componentName":Ljava/lang/String;
    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addInnerStartLaunchingLog(Ljava/lang/String;)V
    .registers 6
    .param p0, "componentName"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 271
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_36

    if-nez p0, :cond_a

    goto :goto_36

    .line 274
    :cond_a
    sput-object p0, Lcom/android/server/wm/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    .line 276
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_28

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_addInnerStartLaunchingLog()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 279
    :cond_28
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v4, p0}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 281
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 282
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_38

    .line 283
    :cond_34
    monitor-exit v0

    return-void

    .line 272
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    .line 270
    .end local p0    # "componentName":Ljava/lang/String;
    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addLog(Ljava/lang/String;)V
    .registers 10
    .param p0, "log"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 325
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f7

    if-eqz v1, :cond_f5

    if-nez p0, :cond_b

    goto/16 :goto_f5

    .line 329
    :cond_b
    const/4 v1, 0x4

    :try_start_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.tinym"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 330
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 331
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, "addLog() - current log is tinym, return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_25
    .catchall {:try_start_c .. :try_end_23} :catchall_f7

    .line 333
    :cond_23
    monitor-exit v0

    return-void

    .line 335
    :catch_25
    move-exception v2

    :cond_26
    nop

    .line 337
    :try_start_27
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v3, 0x40

    if-eqz v2, :cond_59

    .line 338
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLog() - log : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_addLog()"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_f7

    .line 344
    :cond_59
    :try_start_59
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v2, :cond_60

    .line 345
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 347
    :cond_60
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sget v5, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    if-ne v2, v5, :cond_6f

    .line 348
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 350
    :cond_6f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 351
    .local v2, "locale":Ljava/util/Locale;
    sget-object v5, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_81

    if-eqz v2, :cond_84

    sget-object v5, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 352
    :cond_81
    invoke-static {v2}, Lcom/android/server/wm/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    .line 354
    :cond_84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "data":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 357
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_ca

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v5    # "data":Ljava/lang/String;
    .local v1, "data":Ljava/lang/String;
    goto :goto_db

    .line 360
    .end local v1    # "data":Ljava/lang/String;
    .restart local v5    # "data":Ljava/lang/String;
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00-00 00:00:00.000 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .end local v5    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    :goto_db
    sget-object v5, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_e0} :catch_e1
    .catchall {:try_start_59 .. :try_end_e0} :catchall_f7

    .line 367
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_ec

    .line 364
    :catch_e1
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    :try_start_e2
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v5, "addLog() - ERROR"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_ec
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_f3

    .line 370
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_f3
    .catchall {:try_start_e2 .. :try_end_f3} :catchall_f7

    .line 371
    :cond_f3
    monitor-exit v0

    return-void

    .line 326
    :cond_f5
    :goto_f5
    monitor-exit v0

    return-void

    .line 324
    .end local p0    # "log":Ljava/lang/String;
    :catchall_f7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static addStartLaunchLog(Ljava/lang/String;)V
    .registers 5
    .param p0, "componentName"    # Ljava/lang/String;

    .line 950
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2e

    .line 952
    if-nez p0, :cond_7

    .line 953
    return-void

    .line 955
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_addStartLaunchLog()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 958
    :cond_23
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/wm/SluggishInfo;->sendLogToHandler(ILjava/lang/String;)V

    .line 960
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 961
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 963
    :cond_2e
    return-void
.end method

.method private static convertIntArrToString([I)Ljava/lang/String;
    .registers 8
    .param p0, "values"    # [I

    .line 639
    if-nez p0, :cond_5

    .line 640
    const-string v0, ""

    return-object v0

    .line 642
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 645
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_37

    aget v5, p0, v4

    .line 647
    .local v5, "value":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .end local v5    # "value":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 651
    :cond_37
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 652
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 654
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static convertLongArrToString([J)Ljava/lang/String;
    .registers 9
    .param p0, "values"    # [J

    .line 659
    if-nez p0, :cond_5

    .line 660
    const-string v0, ""

    return-object v0

    .line 662
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_convertIntArrToString()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 665
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v3, :cond_37

    aget-wide v5, p0, v4

    .line 667
    .local v5, "value":J
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 668
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .end local v5    # "value":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 671
    :cond_37
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 672
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 674
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 886
    const-string v0, "==================================================="

    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_14d

    .line 888
    if-nez p0, :cond_9

    .line 889
    return-void

    .line 891
    :cond_9
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 892
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v2, "dump()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_14
    const/4 v1, 0x0

    .line 898
    .local v1, "traceFlag":Z
    const-wide/16 v2, 0x40

    :try_start_17
    const-string v4, "SLUGGISH INFO (dumpsys activity slginfo)"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ENABLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " DEBUG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ALWAYS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " MAXIMUM_LOG_COUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_MEMINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_DHA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " FLAG_VMSTAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 908
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-nez v4, :cond_c4

    .line 911
    return-void

    .line 913
    :cond_c4
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_df

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_dump()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 915
    const/4 v1, 0x1

    .line 918
    :cond_df
    const-string v4, " DataFormat : "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    if-eqz v4, :cond_f1

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    :cond_f1
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-eqz v4, :cond_fe

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    :cond_fe
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v4, :cond_10b

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    :cond_10b
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 925
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 928
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v4, :cond_11b

    .line 929
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initLogList()V

    .line 931
    :cond_11b
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_121
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_131

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 932
    .local v5, "log":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v5    # "log":Ljava/lang/String;
    goto :goto_121

    .line 934
    :cond_131
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 935
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    const-string v0, "END OF SLUGGISH INFO"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_13c} :catch_13d

    .line 941
    goto :goto_148

    .line 938
    :catch_13d
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v5, "dump() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 943
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_148
    if-eqz v1, :cond_14d

    .line 944
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 946
    .end local v1    # "traceFlag":Z
    :cond_14d
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 795
    const-string/jumbo v0, "slginfo_"

    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v1, :cond_27c

    .line 797
    if-eqz p0, :cond_27b

    if-nez p1, :cond_d

    goto/16 :goto_27b

    .line 800
    :cond_d
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_3f

    .line 801
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeCommand() - cmd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_executeCommand()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 805
    :cond_3f
    const-string/jumbo v1, "slginfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_270

    .line 808
    :try_start_48
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_265

    const-string v4, "executeCommand() - "

    const-string/jumbo v5, "unknown command : "

    if-eqz v1, :cond_23e

    .line 809
    :try_start_53
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "command":Ljava/lang/String;
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "tokens":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_77

    .line 813
    aget-object v4, v1, v7

    const-string v5, "CLEAR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23d

    .line 814
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_23d

    .line 816
    :cond_77
    array-length v6, v1

    const/4 v9, 0x2

    if-ne v6, v9, :cond_217

    .line 817
    aget-object v6, v1, v7

    const/4 v10, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_27e

    :cond_85
    goto :goto_cb

    :sswitch_86
    const-string v9, "ENABLE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    goto :goto_cc

    :sswitch_8f
    const-string v7, "ALWAYS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    move v7, v9

    goto :goto_cc

    :sswitch_99
    const-string v7, "FLAG_MEMINFO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v7, 0x4

    goto :goto_cc

    :sswitch_a3
    const-string v7, "DEBUG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    move v7, v8

    goto :goto_cc

    :sswitch_ad
    const-string v7, "MAXIMUM_LOG_COUNT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v7, 0x3

    goto :goto_cc

    :sswitch_b7
    const-string v7, "FLAG_VMSTAT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v7, 0x6

    goto :goto_cc

    :sswitch_c1
    const-string v7, "FLAG_DHA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_c7} :catch_265

    if-eqz v6, :cond_85

    const/4 v7, 0x5

    goto :goto_cc

    :goto_cb
    move v7, v10

    :goto_cc
    const-string v6, "change FLAG_MEMINFO:"

    const-string/jumbo v9, "true"

    packed-switch v7, :pswitch_data_29c

    .line 857
    :try_start_d4
    new-instance v6, Ljava/lang/StringBuilder;

    goto/16 :goto_1f2

    .line 852
    :pswitch_d8
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change FLAG_VMSTAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    .line 855
    goto/16 :goto_216

    .line 847
    :pswitch_fb
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    .line 848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    .line 850
    goto/16 :goto_216

    .line 842
    :pswitch_11c
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_13b} :catch_265

    .line 845
    goto/16 :goto_216

    .line 834
    :pswitch_13d
    :try_start_13d
    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change MAXIMUM_LOG_COUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_15b} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_15b} :catch_265

    .line 839
    goto/16 :goto_216

    .line 836
    :catch_15d
    move-exception v4

    .line 837
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_15e
    sget-object v5, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeCommand() - ERROR parseInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_216

    .line 828
    :pswitch_18f
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    .line 829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change ALWAYS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ALWAYS:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    .line 831
    goto :goto_216

    .line 823
    :pswitch_1b1
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change DEBUG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    .line 826
    goto :goto_216

    .line 819
    :pswitch_1d3
    aget-object v4, v1, v8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change ENABLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    goto :goto_216

    .line 857
    :goto_1f2
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 858
    .local v5, "suffix":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v5    # "suffix":Ljava/lang/String;
    :goto_216
    goto :goto_23d

    .line 862
    :cond_217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 863
    .restart local v5    # "suffix":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "tokens":[Ljava/lang/String;
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_23d
    :goto_23d
    goto :goto_264

    .line 867
    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "suffix":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_264} :catch_265

    .line 874
    .end local v0    # "suffix":Ljava/lang/String;
    :goto_264
    goto :goto_270

    .line 871
    :catch_265
    move-exception v0

    .line 872
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, "executeCommand() - ERROR"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 877
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_270
    :goto_270
    invoke-static {p0}, Lcom/android/server/wm/SluggishInfo;->dump(Ljava/io/PrintWriter;)V

    .line 879
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_27c

    .line 880
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_27c

    .line 798
    :cond_27b
    :goto_27b
    return-void

    .line 882
    :cond_27c
    :goto_27c
    return-void

    nop

    :sswitch_data_27e
    .sparse-switch
        -0x71146716 -> :sswitch_c1
        -0x16411642 -> :sswitch_b7
        -0xb2a4b6b -> :sswitch_ad
        0x3de9e33 -> :sswitch_a3
        0x64061610 -> :sswitch_99
        0x7342860f -> :sswitch_8f
        0x7a281983 -> :sswitch_86
    .end sparse-switch

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_1d3
        :pswitch_1b1
        :pswitch_18f
        :pswitch_13d
        :pswitch_11c
        :pswitch_fb
        :pswitch_d8
    .end packed-switch
.end method

.method private static getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p0, "Types"    # [Ljava/lang/String;
    .param p1, "Lines"    # [Ljava/lang/String;

    .line 679
    if-eqz p0, :cond_54

    if-nez p1, :cond_5

    goto :goto_54

    .line 682
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCommonLines()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 685
    :cond_21
    array-length v0, p0

    .line 686
    .local v0, "Count":I
    array-length v3, p0

    new-array v3, v3, [Ljava/lang/String;

    .line 688
    .local v3, "Result":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    array-length v5, p1

    if-ge v4, v5, :cond_4c

    if-lez v0, :cond_4c

    .line 689
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2c
    array-length v6, p0

    if-ge v5, v6, :cond_49

    if-lez v0, :cond_49

    .line 690
    aget-object v6, v3, v5

    if-eqz v6, :cond_36

    .line 691
    goto :goto_46

    .line 693
    :cond_36
    aget-object v6, p1, v4

    aget-object v7, p0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 694
    aget-object v6, p1, v4

    aput-object v6, v3, v5

    .line 695
    add-int/lit8 v0, v0, -0x1

    .line 689
    :cond_46
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 688
    .end local v5    # "j":I
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 700
    .end local v4    # "i":I
    :cond_4c
    sget-boolean v4, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_53

    .line 701
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    :cond_53
    return-object v3

    .line 680
    .end local v0    # "Count":I
    .end local v3    # "Result":[Ljava/lang/String;
    :cond_54
    :goto_54
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentDHAStat()[I
    .registers 5

    .line 546
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 549
    :cond_1c
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v3, 0x0

    sget v4, Lcom/android/server/wm/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    const/4 v3, 0x2

    sget v4, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    aput v4, v0, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    aput v4, v0, v3

    .line 551
    .local v0, "Values":[I
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_3a

    .line 552
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 554
    :cond_3a
    return-object v0
.end method

.method private static getCurrentMeminfo()[J
    .registers 11

    .line 477
    const-string v0, ""

    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_1e

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_getCurrentMeminfo()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 480
    :cond_1e
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v1

    .line 482
    .local v1, "Values":[J
    if-eqz v1, :cond_8a

    .line 483
    const-string v4, "/proc/meminfo"

    invoke-static {v4}, Lcom/android/server/wm/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "Lines":[Ljava/lang/String;
    if-eqz v4, :cond_8a

    .line 485
    sget-object v5, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/wm/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 486
    if-eqz v4, :cond_8a

    .line 487
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    array-length v6, v4

    if-ge v5, v6, :cond_8a

    .line 489
    const-wide/16 v6, -0x1

    :try_start_3c
    aget-object v8, v4, v5

    if-eqz v8, :cond_86

    .line 490
    aget-object v8, v4, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/wm/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 491
    aget-object v8, v4, v5

    const-string/jumbo v9, "kB"

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 492
    aget-object v8, v4, v5

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v1, v5
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_74} :catch_83
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_74} :catch_75

    goto :goto_86

    .line 496
    :catch_75
    move-exception v8

    .line 497
    .local v8, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v10, "getCurrentMeminfo() - ERROR"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 499
    aput-wide v6, v1, v5

    goto :goto_87

    .line 494
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_83
    move-exception v8

    .line 495
    .local v8, "e":Ljava/lang/NumberFormatException;
    aput-wide v6, v1, v5

    .line 500
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_86
    :goto_86
    nop

    .line 487
    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 506
    .end local v4    # "Lines":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_8a
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_91

    .line 507
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 509
    :cond_91
    return-object v1
.end method

.method private static getCurrentSimpleDHAStat()[I
    .registers 5

    .line 559
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleDHAStat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 562
    :cond_1c
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    sget v4, Lcom/android/server/wm/SluggishInfo;->numCached:I

    aput v4, v0, v3

    const/4 v3, 0x1

    sget v4, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    aput v4, v0, v3

    .line 564
    .local v0, "Values":[I
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_30

    .line 565
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 567
    :cond_30
    return-object v0
.end method

.method static getCurrentSimpleSluggishInfo()Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .registers 4

    .line 1058
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1059
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentSimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_27

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentSimpleSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1064
    :cond_27
    new-instance v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    invoke-direct {v0}, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;-><init>()V

    .line 1066
    .local v0, "result":Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_33

    .line 1067
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1069
    :cond_33
    return-object v0
.end method

.method private static getCurrentStat()Ljava/lang/String;
    .registers 17

    .line 375
    const-wide/16 v0, 0x0

    .local v0, "all_start":J
    const-wide/16 v2, 0x0

    .local v2, "all_end":J
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 376
    .local v6, "end":J
    const-wide/16 v8, 0x0

    .line 377
    .local v8, "ms_delta":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v10, "sb":Ljava/lang/StringBuilder;
    sget-boolean v11, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_17

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 382
    :cond_17
    sget-boolean v11, Lcom/android/server/wm/SluggishInfo;->FLAG_MEMINFO:Z

    const-string v12, " ms) "

    const-wide v13, 0x412e848000000000L    # 1000000.0

    if-eqz v11, :cond_5d

    .line 384
    sget-boolean v11, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v11, :cond_2a

    .line 385
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 387
    :cond_2a
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v11

    .line 388
    .local v11, "meminfo":[J
    invoke-static {v11}, Lcom/android/server/wm/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    sget-boolean v15, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v15, :cond_5b

    .line 391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 392
    move-wide v15, v2

    .end local v2    # "all_end":J
    .local v15, "all_end":J
    sub-long v2, v6, v4

    long-to-double v2, v2

    div-double v8, v2, v13

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(meminfo_Took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5e

    .line 390
    .end local v15    # "all_end":J
    .restart local v2    # "all_end":J
    :cond_5b
    move-wide v15, v2

    .end local v2    # "all_end":J
    .restart local v15    # "all_end":J
    goto :goto_5e

    .line 382
    .end local v11    # "meminfo":[J
    .end local v15    # "all_end":J
    .restart local v2    # "all_end":J
    :cond_5d
    move-wide v15, v2

    .line 397
    .end local v2    # "all_end":J
    .restart local v15    # "all_end":J
    :goto_5e
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-eqz v2, :cond_9c

    .line 399
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_6a

    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 402
    :cond_6a
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentDHAStat()[I

    move-result-object v2

    .line 403
    .local v2, "dha":[I
    invoke-static {v2}, Lcom/android/server/wm/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_9b

    .line 406
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 407
    move-object v11, v2

    .end local v2    # "dha":[I
    .local v11, "dha":[I
    sub-long v2, v6, v4

    long-to-double v2, v2

    div-double v8, v2, v13

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(dha_Took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 405
    .end local v11    # "dha":[I
    .restart local v2    # "dha":[I
    :cond_9b
    move-object v11, v2

    .line 412
    .end local v2    # "dha":[I
    :cond_9c
    :goto_9c
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v2, :cond_da

    .line 414
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_a8

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 417
    :cond_a8
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->getCurrentVmstat()[J

    move-result-object v2

    .line 418
    .local v2, "vmstat":[J
    invoke-static {v2}, Lcom/android/server/wm/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_d9

    .line 421
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 422
    move-object v11, v2

    .end local v2    # "vmstat":[J
    .local v11, "vmstat":[J
    sub-long v2, v6, v4

    long-to-double v2, v2

    div-double v8, v2, v13

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(vmstat_Took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    .line 420
    .end local v11    # "vmstat":[J
    .restart local v2    # "vmstat":[J
    :cond_d9
    move-object v11, v2

    .line 427
    .end local v2    # "vmstat":[J
    :cond_da
    :goto_da
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_104

    .line 429
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 430
    .end local v15    # "all_end":J
    .local v2, "all_end":J
    sub-long v11, v2, v0

    long-to-double v11, v11

    div-double/2addr v11, v13

    .line 432
    .end local v8    # "ms_delta":D
    .local v11, "ms_delta":D
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(total_Took: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 435
    .end local v2    # "all_end":J
    .end local v11    # "ms_delta":D
    .restart local v8    # "ms_delta":D
    .restart local v15    # "all_end":J
    :cond_104
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCurrentVmstat()[J
    .registers 10

    .line 584
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getCurrentVmstat()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 587
    :cond_1c
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v0

    .line 589
    .local v0, "Values":[J
    if-eqz v0, :cond_6e

    .line 590
    const-string v3, "/proc/vmstat"

    invoke-static {v3}, Lcom/android/server/wm/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "Lines":[Ljava/lang/String;
    if-eqz v3, :cond_6e

    .line 592
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/wm/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 593
    if-eqz v3, :cond_6e

    .line 594
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    array-length v5, v3

    if-ge v4, v5, :cond_6e

    .line 596
    const-wide/16 v5, -0x1

    :try_start_3a
    aget-object v7, v3, v4

    if-eqz v7, :cond_6a

    .line 597
    aget-object v7, v3, v4

    sget-object v8, Lcom/android/server/wm/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    aget-object v8, v8, v4

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 598
    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v0, v4
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_58} :catch_67
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_58} :catch_59

    goto :goto_6a

    .line 602
    :catch_59
    move-exception v7

    .line 603
    .local v7, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v9, "getCurrentVmstat() - ERROR"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    aput-wide v5, v0, v4

    goto :goto_6b

    .line 600
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_67
    move-exception v7

    .line 601
    .local v7, "e":Ljava/lang/NumberFormatException;
    aput-wide v5, v0, v4

    .line 606
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_6a
    :goto_6a
    nop

    .line 594
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 612
    .end local v3    # "Lines":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6e
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_75

    .line 613
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 615
    :cond_75
    return-object v0
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 8
    .param p0, "br"    # Ljava/io/BufferedReader;

    .line 744
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 745
    return-object v0

    .line 747
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_20

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_getLinesFromFile()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 751
    :cond_20
    :try_start_20
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 754
    .local v1, "Lines":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_25
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_30

    .line 755
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 757
    :cond_30
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 759
    .local v4, "result":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_43

    .line 760
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_43} :catch_50
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_44

    .line 762
    :cond_43
    return-object v4

    .line 767
    .end local v1    # "Lines":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v4    # "result":[Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :catch_44
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v5, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c

    .line 764
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_50
    move-exception v1

    .line 765
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v5, "getLinesFromBufferedReader() - ERROR readLine "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 770
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 772
    :goto_5c
    sget-boolean v1, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_63

    .line 773
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    :cond_63
    return-object v0
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 708
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_1c

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getLinesFromFile()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 712
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 715
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-static {v3}, Lcom/android/server/wm/SluggishInfo;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "Lines":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 718
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 720
    sget-boolean v5, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_37

    .line 721
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_37} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_37} :catch_44
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_37} :catch_38

    .line 723
    :cond_37
    return-object v4

    .line 731
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "Lines":[Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v4, "getLinesFromFile() - ERROR"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    .line 728
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_44
    move-exception v0

    .line 729
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLinesFromFile() - ERROR IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_79

    .line 725
    :catch_5f
    move-exception v0

    .line 726
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLinesFromFile() - ERROR FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 734
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_79
    nop

    .line 736
    :goto_7a
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_81

    .line 737
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 739
    :cond_81
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTypeString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "types"    # [Ljava/lang/String;

    .line 780
    if-nez p0, :cond_6

    .line 781
    const-string/jumbo v0, "null"

    return-object v0

    .line 783
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1c

    aget-object v3, p0, v2

    .line 785
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .end local v3    # "type":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 789
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUnknownValueArray([Ljava/lang/String;)[J
    .registers 7
    .param p0, "types"    # [Ljava/lang/String;

    .line 621
    if-nez p0, :cond_4

    .line 622
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_20

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_getUnknownValueArray()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 627
    :cond_20
    array-length v0, p0

    new-array v0, v0, [J

    .line 628
    .local v0, "Values":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    array-length v4, v0

    if-ge v3, v4, :cond_2e

    .line 629
    const-wide/16 v4, -0x1

    aput-wide v4, v0, v3

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 631
    .end local v3    # "i":I
    :cond_2e
    sget-boolean v3, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v3, :cond_35

    .line 632
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 634
    :cond_35
    return-object v0
.end method

.method private static initDateFormat()V
    .registers 1

    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    .line 212
    return-void
.end method

.method private static initDateFormat(Ljava/util/Locale;)V
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 192
    if-nez p0, :cond_3

    .line 193
    return-void

    .line 195
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 196
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDateFormat()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_f
    sput-object p0, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    .line 201
    :try_start_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Lcom/android/server/wm/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 206
    goto :goto_2c

    .line 202
    :catch_1d
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initDateFormat() - ERROR"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method private static initLogList()V
    .registers 2

    .line 178
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 179
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initLogList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_c
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_23

    .line 182
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 183
    :try_start_13
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v1, :cond_1e

    .line 184
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->LogList:Ljava/util/LinkedList;

    .line 186
    :cond_1e
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v1

    .line 188
    :cond_23
    :goto_23
    return-void
.end method

.method private static initSluggishInfo()V
    .registers 2

    .line 216
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 217
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_c
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_37

    .line 220
    :cond_1c
    const-class v0, Lcom/android/server/wm/SluggishInfo;

    monitor-enter v0

    .line 221
    :try_start_1f
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v1, :cond_36

    .line 222
    :cond_2f
    new-instance v1, Lcom/android/server/wm/SluggishInfo;

    invoke-direct {v1}, Lcom/android/server/wm/SluggishInfo;-><init>()V

    sput-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    .line 224
    :cond_36
    monitor-exit v0

    .line 226
    :cond_37
    return-void

    .line 224
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static refreshDHAStatForSluggishInfo(IIII)V
    .registers 8
    .param p0, "numCached"    # I
    .param p1, "numEmpty"    # I
    .param p2, "numCachedHiddenProcs"    # I
    .param p3, "numNonCachedProcs"    # I

    .line 519
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->FLAG_DHA:Z

    if-nez v0, :cond_5

    .line 520
    return-void

    .line 522
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_21

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_refreshDHAStatForSluggishInfo()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 525
    :cond_21
    sput p0, Lcom/android/server/wm/SluggishInfo;->numCached:I

    .line 526
    sput p1, Lcom/android/server/wm/SluggishInfo;->numEmpty:I

    .line 527
    sput p2, Lcom/android/server/wm/SluggishInfo;->numCachedHiddenProcs:I

    .line 528
    sput p3, Lcom/android/server/wm/SluggishInfo;->numNonCachedProcs:I

    .line 530
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 531
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    :cond_30
    return-void
.end method

.method private static sendLogToHandler(ILjava/lang/String;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "log"    # Ljava/lang/String;

    .line 247
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_54

    .line 249
    if-nez p1, :cond_7

    .line 250
    return-void

    .line 252
    :cond_7
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 253
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendLogToHandler() - log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_22
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_32

    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_35

    .line 256
    :cond_32
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->initSluggishInfo()V

    .line 258
    :cond_35
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/wm/SluggishInfo;->instance:Lcom/android/server/wm/SluggishInfo;

    iget-object v1, v1, Lcom/android/server/wm/SluggishInfo;->mHandler:Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SluggishInfo$SluggishInfoHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 261
    .local v1, "success":Z
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_53

    if-nez v1, :cond_53

    .line 262
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendLogToHandler() - failed to send Message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "success":Z
    :cond_53
    goto :goto_5c

    .line 265
    :cond_54
    sget-object v0, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendLogToHandler() - SEC_PRODUCT_FEATURE_COMMON_CONFIG_SLUGGISH_INFO=false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_5c
    return-void
.end method

.method private static sendMessage(Ljava/lang/String;)V
    .registers 7
    .param p0, "msg"    # Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/block/sda/iomon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "lk_send":Ljava/io/File;
    const/4 v1, 0x0

    .line 444
    .local v1, "fw":Ljava/io/FileWriter;
    sget-boolean v2, Lcom/android/server/wm/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_22

    .line 445
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [OLOG] sendMessage msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_22
    :try_start_22
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 450
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 451
    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 452
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, " [OLOG] sendMessage write msg "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 454
    :cond_39
    sget-object v2, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    const-string v3, " [OLOG] sendMessage lk_send is NOT file~"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_40} :catch_41

    .line 458
    :goto_40
    goto :goto_58

    .line 456
    :catch_41
    move-exception v2

    .line 457
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [OLOG] sendMessage - write Exception error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_58
    if-eqz v1, :cond_75

    .line 462
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 465
    goto :goto_75

    .line 463
    :catch_5e
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/wm/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [OLOG] sendMessage - close Exception error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    sget-boolean v0, Lcom/android/server/wm/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v0, :cond_b

    .line 126
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 128
    :cond_b
    return-void
.end method
