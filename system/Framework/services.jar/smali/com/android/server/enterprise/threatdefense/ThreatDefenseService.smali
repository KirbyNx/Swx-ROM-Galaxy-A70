.class public final Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
.super Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;
.source "ThreatDefenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_PACKAGE_RULES_REMOVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

.field private static final ALL_GROUPS:Ljava/lang/String; = "all"

.field static final BRAKET_END_STRING:Ljava/lang/String; = "\\)"

.field static final BRAKET_START_STRING:Ljava/lang/String; = "\\("

.field static final DEBUG:Z

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field static final ERROR_CAST_CLASS:I = -0x68

.field static final ERROR_INIT_JSON_OBJECT:I = -0x6b

.field static final ERROR_INVALID_ARGUMENT:I = -0x6a

.field static final ERROR_INVALID_PKG:I = -0x65

.field static final ERROR_INVALID_PROC:I = -0x69

.field static final ERROR_NO_PACKAGE_RULES:I = -0x66

.field static final ERROR_POLICY_VERSION:I = -0x64

.field static final ERROR_RESTRICT_CHAR:I = -0x67

.field static final ERROR_SECURITY_EXCEPTION:I = -0x6d

.field static final ERROR_SIGNATURE:I = -0x6c

.field private static final ERROR_STRING_IOEXCEPTION:Ljava/lang/String; = "IOException"

.field private static final ERROR_STRING_NULL_CONTEXT:Ljava/lang/String; = "ContextInfo is null"

.field private static final KNOX_MOBILE_THREAT_DEFENSE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PROCFS_STRING:Ljava/lang/String; = "/proc/"

.field static final RESTRICTED_CHAR_LIST:[Ljava/lang/String;

.field static final SENSITIVE_PROCESS_PROC_LEN_LIST:[I

.field static final SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

.field static final SENSTIVE_PROCESS_PROC_POSITION:[I

.field private static final SPACE_STRING:Ljava/lang/String; = " "

.field static final SYSPROP_KA_INTERVAL:Ljava/lang/String; = "sys.mtdl.interval"

.field static final SYSPROP_PACKAGE_START:Ljava/lang/String; = "sys.mtdl.start"

.field static final SYSPROP_SKIP_PACKAGE_SIGNATURE:Ljava/lang/String; = "sys.mtdl.sign"

.field static final SYSPROP_SKIP_RUFS_ENCODE:Ljava/lang/String; = "sys.mtdl.encode"

.field private static final SYSTEM_UID:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final TIMER_NAME:Ljava/lang/String; = "MTDL_Timer"

.field private static final UPDATE_INTERVAL:J = 0x5265c00L

.field private static final sAllowedProcRules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sAllowedProcessProcRules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sProcessIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const-class v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    .line 79
    const-string/jumbo v0, "stat"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    .line 100
    const-string v0, ";"

    const-string v1, "*"

    const-string v2, "."

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    .line 131
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    return-void

    nop

    :array_54
    .array-data 4
        0x1c
        0x1d
        0x1e
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 175
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$1;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    .line 683
    new-instance v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService$2;-><init>(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Start ThreatDefenseService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initIntervalTasks()V

    .line 147
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->initReceiver()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;)Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;
    .param p1, "x1"    # Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;

    .line 49
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->resetPackageRules()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Hashtable;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    return-object v0
.end method

.method private enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 4
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 195
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 197
    return-void
.end method

.method private getEnterpriseDeviceManagerService()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initIntervalTasks()V
    .registers 9

    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_d

    .line 159
    new-instance v0, Ljava/util/Timer;

    const-string v1, "MTDL_Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    .line 161
    :cond_d
    const-wide/32 v0, 0x5265c00

    .line 162
    .local v0, "interval":J
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v2, :cond_33

    .line 163
    const-string/jumbo v2, "sys.mtdl.interval"

    const-wide/32 v3, 0x5265c00

    invoke-static {v2, v3, v4}, Landroid/os/SemSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    cmp-long v2, v0, v3

    if-eqz v2, :cond_33

    .line 165
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v3, "Custom interval applied"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_33

    .line 167
    const-wide/32 v0, 0xea60

    .line 171
    :cond_33
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 172
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer Scheduled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 153
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method private isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "process"    # Z

    .line 437
    const/16 v0, -0x66

    .line 438
    .local v0, "ret":I
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 441
    .local v1, "allowedRules":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_f

    .line 442
    :try_start_9
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto :goto_14

    .line 444
    :cond_f
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 447
    :goto_14
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 448
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please set package rules first : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v2, -0x66

    return v2

    .line 451
    :cond_33
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 453
    .local v2, "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_73

    .line 454
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 455
    .local v4, "rule":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 456
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 457
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not allowed proc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v3, -0x67

    return v3

    .line 460
    :cond_70
    const/4 v3, 0x0

    return v3

    .line 463
    .end local v4    # "rule":Ljava/lang/String;
    :cond_72
    goto :goto_3f

    .line 465
    :cond_73
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No rules : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_92} :catch_9b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_92} :catch_94

    .line 472
    nop

    .end local v2    # "rules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_a2

    .line 469
    :catch_94
    move-exception v2

    .line 470
    .local v2, "cce":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 471
    const/16 v0, -0x68

    goto :goto_a2

    .line 466
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    :catch_9b
    move-exception v2

    .line 467
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 468
    const/16 v0, -0x65

    .line 472
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    nop

    .line 474
    :goto_a2
    return v0
.end method

.method private notifyToPackages()V
    .registers 3

    .line 678
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.MTDL_PACKAGE_RULES_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 681
    return-void
.end method

.method private resetPackageRules()V
    .registers 4

    .line 664
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    .local v0, "size":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1c

    .line 666
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 667
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v2, "Skip!! No rules"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1b
    return-void

    .line 672
    :cond_1c
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 673
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 674
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->notifyToPackages()V

    .line 675
    return-void
.end method

.method private updateProcessIds()V
    .registers 17

    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 587
    .local v1, "start":J
    new-instance v0, Ljava/io/File;

    const-string v3, "/proc/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 588
    .local v3, "procDir":Ljava/io/File;
    const/4 v4, 0x0

    .line 593
    .local v4, "owner":Ljava/nio/file/attribute/UserPrincipal;
    sget-object v5, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 594
    :try_start_10
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 595
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 596
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_22
    if-ge v9, v7, :cond_99

    aget-object v0, v6, v9

    move-object v10, v0

    .line 597
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 598
    .local v11, "name":Ljava/lang/String;
    const-string v0, "^[0-9]+"

    invoke-virtual {v11, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_bc

    if-eqz v0, :cond_96

    .line 599
    const/4 v12, 0x0

    .line 601
    .local v12, "pid":I
    :try_start_35
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v13, v8, [Ljava/lang/String;

    invoke-static {v0, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 603
    .local v0, "path":Ljava/nio/file/Path;
    new-array v13, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v13}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v13
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_57} :catch_71
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_57} :catch_59
    .catchall {:try_start_35 .. :try_end_57} :catchall_bc

    move-object v4, v13

    .line 608
    goto :goto_89

    .line 606
    .end local v0    # "path":Ljava/nio/file/Path;
    :catch_59
    move-exception v0

    .line 607
    .local v0, "e":Ljava/io/IOException;
    :try_start_5a
    sget-object v13, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 604
    .end local v0    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NumberFormatException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    nop

    .line 609
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_89
    if-lez v12, :cond_96

    if-eqz v4, :cond_96

    .line 610
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-interface {v4}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "pid":I
    :cond_96
    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    .line 615
    .end local v11    # "name":Ljava/lang/String;
    :cond_99
    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_5a .. :try_end_9a} :catchall_bc

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 617
    .local v5, "total":J
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update PIDs took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void

    .line 615
    .end local v5    # "total":J
    :catchall_bc
    move-exception v0

    :try_start_bd
    monitor-exit v5
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v0
.end method


# virtual methods
.method public getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
    .registers 7
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "group"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 239
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v2, "ContextInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v0

    .line 243
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 244
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 247
    if-eqz p2, :cond_9b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto/16 :goto_9b

    .line 251
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 252
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 253
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->updateProcessIds()V

    .line 255
    const-string v0, "all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 257
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .end local v0    # "i":I
    :cond_57
    goto :goto_7d

    .line 261
    :cond_58
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_59
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_7d

    .line 262
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 263
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sProcessIds:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 268
    .end local v0    # "i":I
    :cond_7d
    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_33 .. :try_end_7e} :catchall_98

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 271
    .local v0, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_85
    array-length v3, v0

    if-ge v2, v3, :cond_97

    .line 272
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 275
    .end local v2    # "i":I
    :cond_97
    return-object v0

    .line 268
    .end local v0    # "ret":[I
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v0

    .line 248
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9b
    :goto_9b
    return-object v0
.end method

.method public hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 420
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v3, "Get package error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v1

    .line 425
    :cond_1a
    :try_start_1a
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 426
    return v3

    .line 427
    :cond_24
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_2a} :catch_2e

    if-eqz v2, :cond_2d

    .line 428
    return v3

    .line 431
    :cond_2d
    goto :goto_32

    .line 429
    :catch_2e
    move-exception v2

    .line 430
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 433
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_32
    return v1
.end method

.method hasRestrictCharacter(Ljava/lang/String;)Z
    .registers 8
    .param p1, "procFilePath"    # Ljava/lang/String;

    .line 577
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->RESTRICTED_CHAR_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 578
    .local v4, "notAllowList":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 579
    const/4 v0, 0x1

    return v0

    .line 577
    .end local v4    # "notAllowList":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 582
    :cond_14
    return v2
.end method

.method hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signedSignature"    # Ljava/lang/String;

    .line 624
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_64

    .line 635
    .local v1, "pkgSignInfo":Landroid/content/pm/SigningInfo;
    nop

    .line 637
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 638
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hasMultipleSigners"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_32
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 642
    .local v2, "sig":[Landroid/content/pm/Signature;
    if-nez v2, :cond_41

    .line 643
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getApkContentsSigners() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v0

    .line 646
    :cond_41
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "callingPackageSignature":Ljava/lang/String;
    if-eqz v3, :cond_5c

    if-nez p2, :cond_4c

    goto :goto_5c

    .line 651
    :cond_4c
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 657
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v5, "Signature check failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v0

    .line 660
    :cond_5a
    const/4 v0, 0x1

    return v0

    .line 648
    :cond_5c
    :goto_5c
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v5, "Get package signature failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return v0

    .line 626
    .end local v1    # "pkgSignInfo":Landroid/content/pm/SigningInfo;
    .end local v2    # "sig":[Landroid/content/pm/Signature;
    .end local v3    # "callingPackageSignature":Ljava/lang/String;
    :catch_64
    move-exception v1

    .line 632
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 634
    return v0
.end method

.method isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "procFilePath"    # Ljava/lang/String;
    .param p3, "process"    # Z

    .line 545
    if-nez p1, :cond_c

    .line 546
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v1, "Get package name failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v0, -0x65

    return v0

    .line 550
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasRestrictCharacter(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Denied proc = "

    if-eqz v0, :cond_30

    .line 551
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason : Restrict Character"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v0, -0x67

    return v0

    .line 555
    :cond_30
    if-eqz p3, :cond_7c

    .line 557
    const/4 v0, 0x0

    const/16 v2, -0x69

    :try_start_35
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 558
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason : Symbolic Link"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/nio/file/InvalidPathException; {:try_start_35 .. :try_end_5a} :catch_5c

    .line 559
    return v2

    .line 564
    :cond_5b
    goto :goto_7c

    .line 561
    :catch_5c
    move-exception v0

    .line 562
    .local v0, "e":Ljava/nio/file/InvalidPathException;
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid path p = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v2

    .line 567
    .end local v0    # "e":Ljava/nio/file/InvalidPathException;
    :cond_7c
    :goto_7c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProcRules(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 568
    .local v0, "ret":I
    if-gez v0, :cond_a0

    .line 569
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Denied proc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errno="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_a0
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 737
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 722
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 732
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 727
    return-void
.end method

.method public procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "procFilePath"    # Ljava/lang/String;

    .line 200
    const-string v0, "IOException"

    const/4 v1, 0x0

    if-nez p1, :cond_d

    .line 201
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v2, "ContextInfo is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v1

    .line 205
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 206
    iget-object v2, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {p0, v2, p2, v4}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-gez v3, :cond_29

    .line 209
    return-object v1

    .line 212
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 214
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 217
    .local v5, "ins":Ljava/io/InputStream;
    :try_start_3d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 218
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 219
    invoke-virtual {v4}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_62} :catch_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_62} :catch_75
    .catchall {:try_start_3d .. :try_end_62} :catchall_73

    move-object v3, v6

    .line 226
    nop

    .line 227
    :try_start_64
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 228
    nop

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6b} :catch_6c

    .line 232
    :cond_6b
    :goto_6b
    goto :goto_ae

    .line 230
    :catch_6c
    move-exception v6

    .line 231
    .local v6, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {v7, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_ae

    .line 225
    :catchall_73
    move-exception v6

    goto :goto_af

    .line 222
    :catch_75
    move-exception v6

    .line 223
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_76
    sget-object v7, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_73

    .line 226
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_95

    .line 227
    :try_start_92
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 228
    :cond_95
    if-eqz v5, :cond_6b

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_6c

    goto :goto_6b

    .line 220
    :catch_9b
    move-exception v6

    .line 221
    .local v6, "e":Ljava/lang/SecurityException;
    :try_start_9c
    sget-object v7, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v8, "SecurityException"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_73

    .line 226
    .end local v6    # "e":Ljava/lang/SecurityException;
    if-eqz v4, :cond_a8

    .line 227
    :try_start_a5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 228
    :cond_a8
    if-eqz v5, :cond_6b

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ad} :catch_6c

    goto :goto_6b

    .line 234
    :goto_ae
    return-object v3

    .line 226
    :goto_af
    if-eqz v4, :cond_b7

    .line 227
    :try_start_b1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_b7

    .line 230
    :catch_b5
    move-exception v7

    goto :goto_bd

    .line 228
    :cond_b7
    :goto_b7
    if-eqz v5, :cond_c3

    .line 229
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_bc} :catch_b5

    goto :goto_c3

    .line 231
    .local v7, "e":Ljava/io/IOException;
    :goto_bd
    sget-object v8, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {v8, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    .line 232
    .end local v7    # "e":Ljava/io/IOException;
    :cond_c3
    :goto_c3
    nop

    .line 233
    :goto_c4
    throw v6
.end method

.method public processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 20
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "procFilePath"    # Ljava/lang/String;
    .param p3, "processId"    # I

    .line 279
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "IOException"

    const/4 v0, 0x0

    if-nez v2, :cond_13

    .line 280
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v5, "ContextInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v0

    .line 283
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 284
    iget-object v5, v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mKnoxAnalytics:Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->countApiCall(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v1, v5, v3, v7}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->isAllowedProc(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    if-gez v6, :cond_2f

    .line 287
    return-object v0

    .line 290
    :cond_2f
    const/4 v6, 0x0

    .line 291
    .local v6, "sensitive":Z
    const/4 v8, 0x0

    .line 292
    .local v8, "position":I
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_35
    if-ge v11, v10, :cond_47

    aget-object v12, v9, v11

    .line 293
    .local v12, "p":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 294
    const/4 v6, 0x1

    .line 295
    goto :goto_47

    .line 297
    :cond_41
    nop

    .end local v12    # "p":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 292
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 299
    :cond_47
    :goto_47
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LIST:[Ljava/lang/String;

    array-length v9, v9

    if-le v8, v9, :cond_63

    .line 300
    sget-object v4, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get sensitive proc failed : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v0

    .line 305
    :cond_63
    move/from16 v9, p3

    if-ge v9, v7, :cond_68

    .line 306
    return-object v0

    .line 309
    :cond_68
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/proc/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 312
    .local v11, "result":Ljava/lang/String;
    const/4 v12, 0x0

    .line 313
    .local v12, "br":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 315
    .local v13, "ins":Ljava/io/InputStream;
    :try_start_88
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 316
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v14, v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 317
    invoke-virtual {v12}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 319
    if-eqz v6, :cond_b5

    .line 320
    invoke-virtual {v1, v11, v8}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_b4
    .catch Ljava/lang/SecurityException; {:try_start_88 .. :try_end_b4} :catch_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_b4} :catch_c8
    .catchall {:try_start_88 .. :try_end_b4} :catchall_c5

    move-object v11, v0

    .line 328
    :cond_b5
    nop

    .line 329
    :try_start_b6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 330
    nop

    .line 331
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bd} :catch_be

    .line 334
    :cond_bd
    :goto_bd
    goto :goto_10a

    .line 332
    :catch_be
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c4
    goto :goto_10a

    .line 327
    :catchall_c5
    move-exception v0

    move-object v1, v0

    goto :goto_10b

    .line 324
    :catch_c8
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c9
    sget-object v14, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileNotFoundException : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_c9 .. :try_end_e3} :catchall_c5

    .line 328
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v12, :cond_eb

    .line 329
    :try_start_e5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    goto :goto_eb

    .line 332
    :catch_e9
    move-exception v0

    goto :goto_f1

    .line 330
    :cond_eb
    :goto_eb
    if-eqz v13, :cond_bd

    .line 331
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f0} :catch_e9

    goto :goto_bd

    .line 333
    .local v0, "e":Ljava/io/IOException;
    :goto_f1
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    :catch_f7
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_f8
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v14, "SecurityException"

    invoke-static {v1, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_c5

    .line 328
    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v12, :cond_104

    .line 329
    :try_start_101
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 330
    :cond_104
    if-eqz v13, :cond_bd

    .line 331
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_109} :catch_e9

    goto :goto_bd

    .line 336
    :goto_10a
    return-object v11

    .line 328
    :goto_10b
    if-eqz v12, :cond_113

    .line 329
    :try_start_10d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    goto :goto_113

    .line 332
    :catch_111
    move-exception v0

    goto :goto_119

    .line 330
    :cond_113
    :goto_113
    if-eqz v13, :cond_11f

    .line 331
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_118} :catch_111

    goto :goto_11f

    .line 333
    .local v0, "e":Ljava/io/IOException;
    :goto_119
    sget-object v14, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_120

    .line 334
    .end local v0    # "e":Ljava/io/IOException;
    :cond_11f
    :goto_11f
    nop

    .line 335
    :goto_120
    throw v1
.end method

.method removeSensitiveProc(Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 479
    const/4 v0, 0x0

    if-eqz p1, :cond_136

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 480
    const-string v2, "("

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_136

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_136

    .line 484
    :cond_1d
    move-object v2, p1

    .line 485
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    aget v3, v3, p2

    new-array v3, v3, [Ljava/lang/String;

    .line 486
    .local v3, "resultArray":[Ljava/lang/String;
    const-string v4, "\\("

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "tmp":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 489
    .local v5, "others":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11f

    .line 491
    const/4 v6, 0x0

    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    .line 492
    const/4 v8, 0x1

    aget-object v9, v4, v8

    const-string v10, "\\)"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 495
    .local v9, "remains":[Ljava/lang/String;
    array-length v10, v9

    if-ne v10, v7, :cond_56

    .line 496
    aget-object v10, v9, v6

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 497
    aget-object v10, v9, v8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 501
    :cond_56
    if-eqz v5, :cond_c9

    array-length v10, v5

    sget-object v11, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSITIVE_PROCESS_PROC_LEN_LIST:[I

    aget v11, v11, p2

    sub-int/2addr v11, v7

    if-ne v10, v11, :cond_c9

    .line 502
    const/4 v0, 0x2

    .line 503
    .local v0, "i":I
    array-length v7, v5

    move v8, v6

    :goto_63
    if-ge v8, v7, :cond_6f

    aget-object v10, v5, v8

    .line 504
    .local v10, "s":Ljava/lang/String;
    add-int/lit8 v11, v0, 0x1

    .end local v0    # "i":I
    .local v11, "i":I
    aput-object v10, v3, v0

    .line 503
    .end local v10    # "s":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move v0, v11

    goto :goto_63

    .line 506
    .end local v11    # "i":I
    :cond_6f
    nop

    .line 516
    .end local v9    # "remains":[Ljava/lang/String;
    nop

    .line 521
    sget-object v0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->SENSTIVE_PROCESS_PROC_POSITION:[I

    array-length v7, v0

    move v8, v6

    :goto_75
    const-string v9, ""

    if-ge v8, v7, :cond_a6

    aget v10, v0, v8

    .line 524
    .local v10, "i":I
    add-int/lit8 v10, v10, -0x1

    .line 525
    array-length v11, v3

    if-ne v10, v11, :cond_a1

    .line 526
    sget-object v9, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    goto :goto_a3

    .line 529
    :cond_a1
    aput-object v9, v3, v10

    .line 521
    .end local v10    # "i":I
    :goto_a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    .line 531
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v0, "buf":Ljava/lang/StringBuilder;
    array-length v7, v3

    :goto_ac
    if-ge v6, v7, :cond_c0

    aget-object v8, v3, v6

    .line 533
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 534
    goto :goto_bd

    .line 535
    :cond_b7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .end local v8    # "s":Ljava/lang/String;
    :goto_bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    .line 538
    :cond_c0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 540
    .end local v2    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 507
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v9    # "remains":[Ljava/lang/String;
    :cond_c9
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remove sensitive data failed, pid="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", name="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v8

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-boolean v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz v1, :cond_105

    .line 510
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sensitive data result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_105
    if-eqz v5, :cond_11e

    .line 513
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remained len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_11e
    return-object v0

    .line 517
    .end local v9    # "remains":[Ljava/lang/String;
    :cond_11f
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid format line="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v0

    .line 481
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "resultArray":[Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    .end local v5    # "others":[Ljava/lang/String;
    :cond_136
    :goto_136
    sget-object v1, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-object v0
.end method

.method public setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 16
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "encodeData"    # Ljava/lang/String;

    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "ret":I
    if-eqz p2, :cond_155

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_155

    .line 345
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->enforceThreatDefensePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "pkgName":Ljava/lang/String;
    const/16 v2, -0x65

    if-nez v1, :cond_1f

    .line 348
    return v2

    .line 351
    :cond_1f
    const-string/jumbo v3, "sys.mtdl.start"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 352
    .local v5, "prop":Z
    if-nez v5, :cond_3d

    .line 353
    const-string/jumbo v6, "true"

    invoke-static {v3, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 355
    if-nez v5, :cond_3d

    .line 356
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "set system property failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3d
    :try_start_3d
    new-instance v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, "signature":Lcom/android/server/enterprise/threatdefense/MTDSignature;
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "decodedData":Ljava/lang/String;
    const/16 v6, -0x6c

    if-nez v4, :cond_52

    .line 365
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    const-string v7, "Signature verification failed"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v6

    .line 369
    :cond_52
    new-instance v7, Lcom/android/server/enterprise/threatdefense/RuleParser;

    invoke-direct {v7, v4}, Lcom/android/server/enterprise/threatdefense/RuleParser;-><init>(Ljava/lang/String;)V

    .line 370
    .local v7, "parser":Lcom/android/server/enterprise/threatdefense/RuleParser;
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackagePublicSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->hasValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 371
    return v6

    .line 374
    :cond_62
    new-instance v6, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;

    invoke-direct {v6, v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;-><init>(Ljava/lang/String;)V

    .line 375
    .local v6, "rufsPolicy":Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 376
    .local v8, "signedVersion":I
    invoke-virtual {v6}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->getPolicyVersion()I

    move-result v9

    .line 378
    .local v9, "rufsVersion":I
    sget-object v10, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "app/rufs version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-ge v8, v9, :cond_96

    .line 380
    const/16 v2, -0x64

    return v2

    .line 383
    :cond_96
    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c4

    .line 384
    sget-object v10, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid package rules. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v2

    .line 388
    :cond_c4
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 389
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Replace proc rules : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_e7
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 393
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Replace process proc rules : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_10a
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcRules:Ljava/util/Hashtable;

    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->sAllowedProcessProcRules:Ljava/util/Hashtable;

    invoke-virtual {v7}, Lcom/android/server/enterprise/threatdefense/RuleParser;->getProcessProcList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_11c} :catch_14e
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_11c} :catch_146
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_11c} :catch_125
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_11c} :catch_11e

    .line 411
    nop

    .end local v3    # "signature":Lcom/android/server/enterprise/threatdefense/MTDSignature;
    .end local v4    # "decodedData":Ljava/lang/String;
    .end local v6    # "rufsPolicy":Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
    .end local v8    # "signedVersion":I
    .end local v9    # "rufsVersion":I
    goto :goto_14d

    .line 408
    .end local v7    # "parser":Lcom/android/server/enterprise/threatdefense/RuleParser;
    :catch_11e
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 410
    const/16 v0, -0x6c

    goto :goto_14d

    .line 404
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_125
    move-exception v2

    .line 405
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initialize json object failed : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 407
    const/16 v0, -0x6b

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_14c

    .line 401
    :catch_146
    move-exception v2

    .line 402
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 403
    const/16 v0, -0x65

    .line 411
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_14c
    nop

    .line 413
    :goto_14d
    return v0

    .line 398
    :catch_14e
    move-exception v2

    .line 399
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 400
    const/16 v3, -0x68

    return v3

    .line 342
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "prop":Z
    :cond_155
    :goto_155
    const/16 v1, -0x6a

    return v1
.end method

.method public systemReady()V
    .registers 1

    .line 717
    return-void
.end method
