.class public final Lcom/android/server/am/Pageboost;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Pageboost$VramdiskLogger;,
        Lcom/android/server/am/Pageboost$PageboostFileDBHelper;,
        Lcom/android/server/am/Pageboost$PageboostAppDBHelper;,
        Lcom/android/server/am/Pageboost$BigDataProxy;,
        Lcom/android/server/am/Pageboost$DaemonConnector;,
        Lcom/android/server/am/Pageboost$PageboostdProxy;,
        Lcom/android/server/am/Pageboost$HeimdalldProxy;,
        Lcom/android/server/am/Pageboost$HeimdalldPkgManager;,
        Lcom/android/server/am/Pageboost$HeimdalldBigdataManager;,
        Lcom/android/server/am/Pageboost$HeimdalldManager;,
        Lcom/android/server/am/Pageboost$PageboostHandler;,
        Lcom/android/server/am/Pageboost$MemReclaimer;,
        Lcom/android/server/am/Pageboost$MemUsageCollector;,
        Lcom/android/server/am/Pageboost$MemUsage;,
        Lcom/android/server/am/Pageboost$PageboostAppCapture;,
        Lcom/android/server/am/Pageboost$IoRecord;,
        Lcom/android/server/am/Pageboost$FileMapInfo;,
        Lcom/android/server/am/Pageboost$FileMapList;,
        Lcom/android/server/am/Pageboost$NoPreDo;,
        Lcom/android/server/am/Pageboost$IoPrefetch;,
        Lcom/android/server/am/Pageboost$PreDo;,
        Lcom/android/server/am/Pageboost$PageboostAppInfo;,
        Lcom/android/server/am/Pageboost$PageboostPredictor;,
        Lcom/android/server/am/Pageboost$LRUPolicy;,
        Lcom/android/server/am/Pageboost$PageboostAppSelectionPolicy;,
        Lcom/android/server/am/Pageboost$Vramdisk;,
        Lcom/android/server/am/Pageboost$VramdiskMlockManager;,
        Lcom/android/server/am/Pageboost$VramdiskXMLParser;,
        Lcom/android/server/am/Pageboost$PageboostAppList;
    }
.end annotation


# static fields
.field private static final ACTION_BIGDATA:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final ACTION_PAGEBOOST:Ljava/lang/String; = "com.android.server.am.ACTION_PAGEBOOST"

.field private static final ACTION_PAGEBOOST_LEGACY:Ljava/lang/String; = "com.sec.android.launcher.action.RUN_APP"

.field private static final ACTION_PREFETCH:Ljava/lang/String; = "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

.field private static final APP_ENTRY_TRIGGER_DELAY:I = 0xbb8

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final BOOTFILE_ENABLED:Z

.field private static final BOOT_FILE_MUNLOCK_DELAY:I = 0x927c0

.field private static final CAPTURE_TRIGGER_DELAY:I = 0x7d0

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final DELAYED_INIT_DELAY:I = 0xbb8

.field private static final DISABLED:Z = true

.field private static final HEIMDALL_DISABLE_PROP:Ljava/lang/String; = "persist.sys.heimdalld.disable"

.field private static final HEIMDALL_SCPM_BROADCAST_MESSAGE:Ljava/lang/String; = "sec.app.policy.UPDATE.heimdall"

.field private static final HEIMDALL_SCPM_POLICY_NAME:Ljava/lang/String; = "heimdall"

.field private static final MAX_LAUNCH_TIME:I = 0x2710

.field private static final MSG_APP_CAPTURE:I = 0x5

.field private static final MSG_APP_ENTRY:I = 0x9

.field private static final MSG_APP_ENTRY_DELAYED:I = 0xb

.field private static final MSG_APP_MEMCOLLECT_END:I = 0x12

.field private static final MSG_APP_MEMCOLLECT_START:I = 0x11

.field private static final MSG_APP_RECORD_END:I = 0xf

.field private static final MSG_APP_RECORD_START:I = 0xe

.field private static final MSG_APP_REENTRY:I = 0xa

.field private static final MSG_APP_REENTRY_DELAYED:I = 0xc

.field private static final MSG_BOOT_FILE_MLOCK:I = 0x17

.field private static final MSG_BOOT_FILE_MUNLOCK:I = 0x18

.field private static final MSG_DELAYED_INIT:I = 0x1

.field private static final MSG_LAUNCHER_SCROLL:I = 0x3

.field private static final MSG_LAUNCHER_SCROLL_CLEAR:I = 0x2

.field private static final MSG_PACKAGE_UPDATE:I = 0x4

.field private static final MSG_PKG_ADD:I = 0x7

.field private static final MSG_PKG_DEL:I = 0x8

.field private static final MSG_PROC_STATUS_CHANGE:I = 0x10

.field private static final MSG_SEND_BIGDATA:I = 0xd

.field private static final MSG_START_ACTIVE_LAUNCH:I = 0x13

.field private static final MSG_STOP_ACTIVE_LAUNCH:I = 0x14

.field private static final MSG_TERMINATE:I = 0x6

.field private static final MSG_TIMEOUT_ACTIVE_LAUNCH:I = 0x15

.field private static final MSG_TOP_ACT_CHANGE:I = 0x16

.field private static final PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

.field private static final PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

.field private static final PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

.field private static final PAGEBOOST_IO_PREFETCH_ENABLED:Z

.field private static final PAGEBOOST_MINIMIZE:Z

.field private static final PAGEBOOST_VRAMDISK_ENABLED:Z

.field private static final PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

.field private static final PAGE_SIZE:J = 0x1000L

.field private static final POLICY_ITEM_URI:Landroid/net/Uri;

.field private static final PREFETCH_TRIGGER_DELAY:I = 0x190

.field public static final PROC_DIED:I = 0x2

.field public static final PROC_START:I = 0x1

.field private static final PRODUCT_DEVICE_PROP:Ljava/lang/String; = "ro.product.device"

.field private static final RECORD_END_DELAY_LONG:I = 0x88b8

.field private static final RECORD_END_DELAY_SHORT:I = 0x1388

.field private static final RECORD_START_DELAY:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private static mAppDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

.field private static mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

.field private static mContext:Landroid/content/Context;

.field private static mFileDB:Landroid/database/sqlite/SQLiteDatabase;

.field private static mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

.field private static mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

.field private static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

.field private static mReceiver:Landroid/content/BroadcastReceiver;

.field private static mSCPMBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field private static mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

.field private static mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field private static mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

.field private static sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;

.field private static user_unlock_done:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 120
    const-class v0, Lcom/android/server/am/Pageboost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    .line 123
    nop

    .line 124
    const-string/jumbo v0, "ro.config.pageboost.io_prefetch.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 125
    nop

    .line 126
    const-string/jumbo v0, "ro.config.pageboost.vramdisk.fixedapp.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    .line 127
    nop

    .line 128
    const-string/jumbo v0, "ro.config.pageboost.ignore_dram_spec"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    .line 129
    nop

    .line 130
    const-string/jumbo v0, "ro.config.pageboost.active_launch.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 131
    nop

    .line 132
    const-string/jumbo v0, "ro.config.pageboost.active_launch.timeout"

    const/16 v3, 0x64

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_TIMEOUT:I

    .line 133
    nop

    .line 134
    const-string/jumbo v0, "ro.config.pageboost.vramdisk.minimize"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_MINIMIZE:Z

    .line 135
    nop

    .line 136
    const-string/jumbo v0, "ro.config.pageboost.vramdisk.without_predict"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    .line 137
    nop

    .line 138
    const-string/jumbo v0, "ro.config.pageboost.vramdisk.bootfile.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->BOOTFILE_ENABLED:Z

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    .line 142
    sput-object v0, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 143
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandlerThread:Lcom/android/server/ServiceThread;

    .line 144
    sput-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 145
    sput-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    .line 146
    sput-object v0, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    .line 147
    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 148
    sput-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    sput-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 151
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    .line 152
    sput-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    sput-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    sput-object v0, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 156
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 157
    sput-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 159
    sput-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    .line 219
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->AUTHORITY_URI:Landroid/net/Uri;

    .line 220
    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->CONTENT_URI:Landroid/net/Uri;

    .line 221
    const-string/jumbo v1, "heimdall"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Pageboost;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 223
    new-instance v0, Lcom/android/server/am/Pageboost$1;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$1;-><init>()V

    sput-object v0, Lcom/android/server/am/Pageboost;->mSCPMBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    invoke-static {}, Lcom/android/server/am/Pageboost;->staticInitialize()V

    .line 267
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->POLICY_ITEM_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    return v0
.end method

.method static synthetic access$1500()Lcom/android/server/am/Pageboost$PageboostHandler;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1700(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Lcom/android/server/am/Pageboost$FileMapList;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/server/am/Pageboost$FileMapList;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()V
    .registers 0

    .line 119
    invoke-static {}, Lcom/android/server/am/Pageboost;->delayedInitPageboost()V

    return-void
.end method

.method static synthetic access$2400()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_WITHOUT_PREDICT:Z

    return v0
.end method

.method static synthetic access$2600()Lcom/android/server/am/Pageboost$PageboostPredictor;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/database/sqlite/SQLiteDatabase;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$2900(ILandroid/os/Bundle;I)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # I

    .line 119
    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithBundle(ILandroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 119
    sget-boolean v0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return v0
.end method

.method static synthetic access$3000()V
    .registers 0

    .line 119
    invoke-static {}, Lcom/android/server/am/Pageboost;->realupdatePackages()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 119
    sput-boolean p0, Lcom/android/server/am/Pageboost;->user_unlock_done:Z

    return p0
.end method

.method static synthetic access$3100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lcom/android/server/am/Pageboost;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300()Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    .line 119
    sput-object p0, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    return-object p0
.end method

.method static synthetic access$3800()Landroid/content/Context;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(ILjava/lang/String;IIII)V
    .registers 6
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 119
    invoke-static/range {p0 .. p5}, Lcom/android/server/am/Pageboost;->sendMessage(ILjava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$500()Lcom/android/server/am/Pageboost$PageboostAppList;
    .registers 1

    .line 119
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    return-object v0
.end method

.method static synthetic access$600(ILjava/lang/Object;I)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 119
    invoke-static {p0, p1, p2}, Lcom/android/server/am/Pageboost;->sendMessageWithObject(ILjava/lang/Object;I)V

    return-void
.end method

.method private static addPackage(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3235
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_5

    .line 3236
    return-void

    .line 3238
    :cond_5
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    .line 3239
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 3241
    const/4 v1, 0x0

    :try_start_e
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_25

    .line 3242
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3243
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 3244
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    .line 3249
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_25
    goto :goto_2a

    .line 3247
    :catch_26
    move-exception v2

    .line 3248
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3250
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    sget-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3251
    sget-object v1, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add app to global @ runtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v1, :cond_58

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 3254
    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    if-eqz v1, :cond_58

    .line 3255
    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->applyFixedApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 3258
    :cond_58
    return-void
.end method

.method private static delayedInitPageboost()V
    .registers 5

    .line 441
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isRecordingCapture()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 442
    invoke-static {}, Lcom/android/server/am/Pageboost$IoRecord;->emergencyReset()V

    .line 443
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "emergency reset during bootup"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_10
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d6

    sget-object v0, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d6

    sget-object v0, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_d6

    .line 448
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.launcher.action.RUN_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "com.android.server.am.ACTION_PAGEBOOST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "com.android.server.am.ACTION_VRAMDISK_PREFETCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    sget-object v1, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/Pageboost;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 458
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 459
    .local v1, "pkgfilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 462
    sget-object v2, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/Pageboost;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 466
    .local v2, "scpmfilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "sec.app.policy.UPDATE.heimdall"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    sget-object v3, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/Pageboost;->mSCPMBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    new-instance v3, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    sget-object v4, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDBHelper:Lcom/android/server/am/Pageboost$PageboostAppDBHelper;

    .line 471
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 472
    new-instance v3, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    sget-object v4, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDBHelper:Lcom/android/server/am/Pageboost$PageboostFileDBHelper;

    .line 473
    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 474
    if-eqz v3, :cond_9c

    .line 475
    invoke-static {v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->initFileDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    :cond_9c
    const-string/jumbo v3, "zygote64"

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 480
    const-string/jumbo v3, "zygote"

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 481
    const-string/jumbo v3, "system_server"

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/Pageboost;->mSystemServerFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 484
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->initBigDataProxy()V

    .line 486
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostdProxy;->initPageboostdProxy()V

    .line 487
    # invokes: Lcom/android/server/am/Pageboost$HeimdalldManager;->init()V
    invoke-static {}, Lcom/android/server/am/Pageboost$HeimdalldManager;->access$900()V

    .line 489
    sget-boolean v3, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v3, :cond_d5

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 491
    sget-object v3, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    const-string v4, "fixed_app"

    invoke-static {v4}, Lcom/android/server/am/Pageboost$VramdiskXMLParser;->getString(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/Pageboost$Vramdisk;->gatherFixedApps(Ljava/util/LinkedList;)V

    .line 493
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    .end local v1    # "pkgfilter":Landroid/content/IntentFilter;
    .end local v2    # "scpmfilter":Landroid/content/IntentFilter;
    :cond_d5
    goto :goto_dd

    .line 494
    :cond_d6
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Pageboost Delayed Init Failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_dd
    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 3474
    return-void
.end method

.method public static gatherLaunchTime(Ljava/lang/String;II)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "launchtime"    # I
    .param p2, "pid"    # I

    .line 3363
    return-void
.end method

.method private static getFileMapFromCmd(Ljava/lang/String;)Lcom/android/server/am/Pageboost$FileMapList;
    .registers 5
    .param p0, "cmd"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 435
    .local v0, "arr":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 437
    .local v2, "Pids":[I
    if-eqz v2, :cond_17

    array-length v3, v2

    if-lez v3, :cond_17

    new-instance v3, Lcom/android/server/am/Pageboost$FileMapList;

    aget v1, v2, v1

    invoke-direct {v3, v1}, Lcom/android/server/am/Pageboost$FileMapList;-><init>(I)V

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    return-object v3
.end method

.method private static getPidFromPackageName(Ljava/lang/String;)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "ret":I
    sget-object v1, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 395
    sget-object v2, Lcom/android/server/am/Pageboost;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 396
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 397
    .local v3, "smap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v3, :cond_3e

    .line 398
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1f
    if-ltz v4, :cond_3e

    .line 399
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 404
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_3b

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_3b

    const-string v6, "cch-empty"

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 406
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move v0, v6

    .line 407
    goto :goto_3e

    .line 398
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    .line 411
    .end local v2    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    .end local v3    # "smap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "j":I
    :cond_3e
    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 412
    return v0

    .line 411
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static initPageboost(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mService"    # Lcom/android/server/am/ActivityManagerService;

    .line 417
    return-void
.end method

.method public static moveTaskToFront(Ljava/lang/String;)V
    .registers 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3390
    return-void
.end method

.method public static notifyResumedActivity(Ljava/lang/String;)V
    .registers 1
    .param p0, "pkg"    # Ljava/lang/String;

    .line 3355
    return-void
.end method

.method public static onProcStatusChange(ILjava/lang/String;I)V
    .registers 3
    .param p0, "status"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 3404
    return-void
.end method

.method public static prefetchPackage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 3528
    const/4 v0, -0x1

    return v0
.end method

.method private static realupdatePackages()V
    .registers 13

    .line 3276
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_fc

    sget-object v0, Lcom/android/server/am/Pageboost;->mPredictor:Lcom/android/server/am/Pageboost$PageboostPredictor;

    if-nez v0, :cond_a

    goto/16 :goto_fc

    .line 3282
    :cond_a
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 3283
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reinit global list"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v0, :cond_44

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3285
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3286
    .local v0, "tmplist":Lcom/android/server/am/Pageboost$PageboostAppList;
    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    monitor-enter v2

    .line 3287
    :try_start_26
    invoke-virtual {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 3288
    .local v4, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    sget-object v5, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    const-string/jumbo v6, "reinit_global_list"

    invoke-virtual {v5, v4, v6, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->removeApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    .line 3289
    .end local v4    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    goto :goto_2a

    .line 3290
    :cond_3f
    monitor-exit v2

    goto :goto_44

    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_41

    throw v1

    .line 3292
    .end local v0    # "tmplist":Lcom/android/server/am/Pageboost$PageboostAppList;
    :cond_44
    :goto_44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3295
    :cond_47
    sget-object v0, Lcom/android/server/am/Pageboost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3296
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/android/server/am/Pageboost;->mAppDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->restoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    .line 3298
    .local v2, "list":Lcom/android/server/am/Pageboost$PageboostAppList;
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 3299
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 3300
    .local v5, "packageInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 3301
    .local v6, "needAddApp":Z
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 3303
    .local v7, "intent":Landroid/content/Intent;
    sget-boolean v8, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v8, :cond_85

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 3304
    sget-object v8, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/am/Pageboost$Vramdisk;->inFixedAppList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 3305
    const/4 v6, 0x1

    .line 3309
    :cond_85
    if-nez v7, :cond_89

    if-eqz v6, :cond_e5

    .line 3310
    :cond_89
    sget-object v8, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v8

    .line 3312
    .local v8, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    const/4 v9, 0x1

    if-nez v8, :cond_da

    .line 3313
    new-instance v10, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v11}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 3314
    invoke-virtual {v2, v8, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 3315
    sget-object v10, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add app to global : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v10, :cond_e5

    .line 3317
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3318
    iput v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    goto :goto_e5

    .line 3321
    :cond_da
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v10, :cond_e5

    .line 3322
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setApkPath(Ljava/lang/String;)V

    .line 3323
    iput v9, v8, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 3327
    .end local v5    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "needAddApp":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_e5
    :goto_e5
    goto/16 :goto_5d

    .line 3329
    :cond_e7
    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeNotInstalled()V

    .line 3330
    sput-object v2, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3332
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v1, :cond_fb

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 3333
    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$Vramdisk;->applyFixedAppList()V

    .line 3335
    :cond_fb
    return-void

    .line 3277
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "list":Lcom/android/server/am/Pageboost$PageboostAppList;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_fc
    :goto_fc
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mContext or mPredictor is not initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    return-void
.end method

.method private static removePackage(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3261
    sget-object v0, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    if-nez v0, :cond_5

    .line 3262
    return-void

    .line 3264
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->removeFromName(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v0

    .line 3265
    .local v0, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    if-eqz v0, :cond_27

    .line 3266
    sget-object v1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 3267
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_VRAMDISK_ENABLED:Z

    if-eqz v1, :cond_27

    # getter for: Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z
    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$100()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3268
    sget-object v1, Lcom/android/server/am/Pageboost;->mVramdisk:Lcom/android/server/am/Pageboost$Vramdisk;

    if-eqz v1, :cond_27

    .line 3269
    const/4 v2, 0x1

    const-string/jumbo v3, "uninstalled"

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/server/am/Pageboost$Vramdisk;->removeApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V

    .line 3273
    :cond_27
    return-void
.end method

.method private static sendMessage(ILjava/lang/String;IIII)V
    .registers 11
    .param p0, "what"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launchtime"    # I
    .param p3, "pid"    # I
    .param p4, "status"    # I
    .param p5, "delay"    # I

    .line 2253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2254
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_d

    .line 2255
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    :cond_d
    if-ltz p2, :cond_15

    .line 2258
    const-string/jumbo v1, "launchtime"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2260
    :cond_15
    if-ltz p3, :cond_1d

    .line 2261
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2263
    :cond_1d
    if-ltz p4, :cond_25

    .line 2264
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2266
    :cond_25
    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v1, p0}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2267
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2268
    if-lez p5, :cond_37

    .line 2269
    sget-object v2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v3, p5

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3c

    .line 2271
    :cond_37
    sget-object v2, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2273
    :goto_3c
    return-void
.end method

.method private static sendMessageWithBundle(ILandroid/os/Bundle;I)V
    .registers 7
    .param p0, "what"    # I
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "delay"    # I

    .line 2234
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2235
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2236
    if-lez p2, :cond_12

    .line 2237
    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17

    .line 2239
    :cond_12
    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2241
    :goto_17
    return-void
.end method

.method private static sendMessageWithObject(ILjava/lang/Object;I)V
    .registers 7
    .param p0, "what"    # I
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # I

    .line 2244
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2245
    .local v0, "msg":Landroid/os/Message;
    if-lez p2, :cond_f

    .line 2246
    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 2248
    :cond_f
    sget-object v1, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2250
    :goto_14
    return-void
.end method

.method public static startActiveLaunch(Ljava/lang/String;)V
    .registers 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3413
    return-void
.end method

.method public static startActiveLaunchTimeout()V
    .registers 0

    .line 3435
    return-void
.end method

.method private static staticInitialize()V
    .registers 2

    .line 271
    sget-object v0, Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;

    const-string v1, "Pageboost is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public static stopActiveLaunch()V
    .registers 0

    .line 3426
    return-void
.end method

.method public static updatePackages()V
    .registers 0

    .line 3339
    return-void
.end method
