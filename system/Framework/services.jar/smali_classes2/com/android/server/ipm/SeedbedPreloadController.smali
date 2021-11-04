.class public Lcom/android/server/ipm/SeedbedPreloadController;
.super Ljava/lang/Object;
.source "SeedbedPreloadController.java"

# interfaces
.implements Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_SEEDBED_SIZE:Ljava/lang/String; = "com.samsung.SEEDBED_SIZE"

.field private static final ACTION_H_APP_LIST_IN:I = 0x1

.field private static final ACTION_H_APP_LIST_OUT:I = 0x2

.field private static final ACTION_H_APP_LIST_OUT_DELAY:I = 0x8

.field private static final ACTION_H_FOREGROUND_ACTIVITY_CHANGED:I = 0x5

.field private static final ACTION_H_KPM_LEVEL_CHANGED:I = 0x6

.field private static final ACTION_H_PERIOD_UPDATELIST:I = 0x3

.field private static final ACTION_H_SEEDBED_SHUTDOWN:I = 0x7

.field private static final ACTION_H_USER_REMOVE:I = 0x4

.field public static final ACTION_LISTOUT_NORMAL_BUB:I = 0x3

.field public static final ACTION_LISTOUT_NORMAL_LAUNCH:I = 0x1

.field public static final ACTION_LISTOUT_SYSTEM_RECYCLE:I = 0x2

.field public static final ACTION_PRELOAD_REPLY:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH_REPLY"

.field public static final ACTION_PRELOAD_SEEDBED_SEND:Ljava/lang/String; = "com.samsung.DO_SEEDBED_LAUNCH"

.field public static final ACTION_PRELOAD_SEND:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH"

.field private static final CRITICAL:I = 0x4

.field private static DAY_MILLIS:J = 0x0L

.field public static DEBUG:Z = false

.field private static DELAY_PRELOAD_MILLIS:J = 0x0L

.field private static final HEAVY:I = 0x3

.field private static final INSERT_TIME:Ljava/lang/String; = "insert_time"

.field private static INTERVAL_MILLIS:J = 0x0L

.field private static KPM_LEVEL:I = 0x0

.field private static final LIGHT:I = 0x1

.field private static final LISTOUT_TYPE:Ljava/lang/String; = "listout_type"

.field private static final NORMAL:I = 0x2

.field private static final PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final PKG_UID:Ljava/lang/String; = "pkg_uid"

.field private static final PRELOAD_BOOSTER_PKG:Ljava/lang/String; = "booster_pkgs"

.field private static final PRELOAD_PKGS:Ljava/lang/String; = "preload_pkgs"

.field private static final PRELOAD_SEEDBED_PKG:Ljava/lang/String; = "seedbed_pkgs"

.field private static final PRELOAD_TYPE:Ljava/lang/String; = "preload_type"

.field private static final PRELOAD_USERID:Ljava/lang/String; = "preload_userid"

.field public static final SEEDBED_ON:Z = true

.field private static STATIC_SEEDBED_ENABLE:Z = false

.field private static final SYSTEM_PROPERTY_SEEDBED_ONOFF:Ljava/lang/String; = "persist.sys.seedbed_onoff"

.field private static final TAG:Ljava/lang/String; = "seedbed-SeedbedPreloadController"

.field private static iDelay:I

.field private static mFirstInit:Z

.field private static mInitAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;"
        }
    .end annotation
.end field

.field private static mSeedBedListOwnerHandler:Landroid/os/Handler;

.field private static mSeedbedOsLimit:I


# instance fields
.field public final SCHEDULE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMLReplyReceiver:Landroid/content/BroadcastReceiver;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

.field private mSeedbedSCPMUtil:Lcom/android/server/ipm/SeedbedSCPMUtil;

.field private mSeedbedSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private seedbedEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    .line 80
    const-wide/32 v1, 0x5265c00

    sput-wide v1, Lcom/android/server/ipm/SeedbedPreloadController;->DAY_MILLIS:J

    .line 81
    const-wide/16 v1, 0x3e8

    sput-wide v1, Lcom/android/server/ipm/SeedbedPreloadController;->INTERVAL_MILLIS:J

    .line 82
    const-wide/16 v1, 0x7d0

    sput-wide v1, Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J

    .line 85
    sput-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    .line 87
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/SeedbedPreloadController;->mFirstInit:Z

    .line 93
    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->KPM_LEVEL:I

    .line 94
    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 95
    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->iDelay:I

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/ipm/SeedbedPreloadController;->mInitAppList:Ljava/util/List;

    .line 107
    const-string/jumbo v2, "persist.sys.seedbed_onoff"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 108
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    sput-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "ht"    # Landroid/os/HandlerThread;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    .line 100
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->SCHEDULE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    .line 151
    new-instance v1, Lcom/android/server/ipm/SeedbedPreloadController$1;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/SeedbedPreloadController$1;-><init>(Lcom/android/server/ipm/SeedbedPreloadController;)V

    iput-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v1, Lcom/android/server/ipm/SeedbedPreloadController$2;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/SeedbedPreloadController$2;-><init>(Lcom/android/server/ipm/SeedbedPreloadController;)V

    iput-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v1, Lcom/android/server/ipm/SeedbedPreloadController$3;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/SeedbedPreloadController$3;-><init>(Lcom/android/server/ipm/SeedbedPreloadController;)V

    iput-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 726
    new-instance v1, Lcom/android/server/ipm/SeedbedPreloadController$4;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/SeedbedPreloadController$4;-><init>(Lcom/android/server/ipm/SeedbedPreloadController;)V

    iput-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mMLReplyReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const-string/jumbo v1, "ro.boot.debug_level"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "state":Ljava/lang/String;
    const-string v2, "0x494d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "0x4948"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 115
    :cond_45
    sput-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    .line 118
    :cond_47
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mPM:Landroid/content/pm/PackageManager;

    .line 122
    if-eqz p3, :cond_66

    .line 123
    new-instance v0, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/ipm/SeedbedPreloadController$ListHandler;-><init>(Lcom/android/server/ipm/SeedbedPreloadController;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/server/ipm/SeedbedSCPMUtil;

    invoke-direct {v0, p1, p3}, Lcom/android/server/ipm/SeedbedSCPMUtil;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedSCPMUtil:Lcom/android/server/ipm/SeedbedSCPMUtil;

    goto :goto_6e

    .line 126
    :cond_66
    const-string/jumbo v0, "seedbed-SeedbedPreloadController"

    const-string v2, "error: handlerThread == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_6e
    new-instance v0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-direct {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, "KPMChangedFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/ipm/MultiUserPkgManager;->registerPackageObserver(Lcom/android/server/ipm/MultiUserPkgManager$PackageChangedObserver;)V

    .line 136
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mMLReplyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v3, "switchFilter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.SEEDBED_SIZE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 146
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/ipm/SeedbedPreloadController;->setKPMLevel(I)V

    .line 147
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedPreloadController;->calcSeedbedLimitByKPMLevel()V

    .line 148
    return-void
.end method

.method private SeedBedListIn(Ljava/lang/String;II)V
    .registers 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 473
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct {v7, v10}, Lcom/android/server/ipm/SeedbedPreloadController;->isUserRunningAndUnlocked(I)Z

    move-result v0

    const-string/jumbo v1, "seedbed-SeedbedPreloadController"

    if-nez v0, :cond_34

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is blocked could not preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as seedbed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 477
    :cond_34
    const/4 v0, 0x0

    .line 478
    .local v0, "appName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 479
    .local v2, "typeString":Ljava/lang/String;
    const-string v3, "&"

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, "app":[Ljava/lang/String;
    array-length v3, v11

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v12, 0x0

    if-ne v3, v4, :cond_49

    .line 481
    aget-object v0, v11, v12

    .line 482
    aget-object v2, v11, v5

    move-object v13, v0

    move-object v14, v2

    goto :goto_4d

    .line 484
    :cond_49
    aget-object v0, v11, v12

    move-object v13, v0

    move-object v14, v2

    .line 487
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "typeString":Ljava/lang/String;
    .local v13, "appName":Ljava/lang/String;
    .local v14, "typeString":Ljava/lang/String;
    :goto_4d
    if-nez v13, :cond_64

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeedBedListIn pkg is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 492
    :cond_64
    invoke-direct {v7, v13, v9}, Lcom/android/server/ipm/SeedbedPreloadController;->isProcessExist(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " this pakcag is running name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_87
    invoke-direct {v7, v13, v10}, Lcom/android/server/ipm/SeedbedPreloadController;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " this pakcag do not have icon name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void

    .line 502
    :cond_aa
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, v13}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isBlackListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this package exist in black list name:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void

    .line 506
    :cond_c8
    if-nez v14, :cond_f3

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 507
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v13, v10}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " this package is auto off "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 511
    :cond_f3
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, v13, v9}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isAppInfoListsExist(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13f

    .line 512
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isFull()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 513
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, v12}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getAppInfoByIndex(I)Lcom/android/server/ipm/SeedbedAppInfo;

    move-result-object v15

    .line 514
    .local v15, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    if-eqz v15, :cond_129

    .line 515
    const/16 v1, 0x8

    invoke-virtual {v15}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v15}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    sget-wide v5, Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V

    .line 516
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v9, v13, v1, v2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->updateAppInfoToLists(ILjava/lang/String;J)V

    .line 517
    invoke-direct {v7, v12}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V

    .line 519
    .end local v15    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    :cond_129
    goto :goto_158

    .line 520
    :cond_12a
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v9, v13, v1, v2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->insertAppInfoToLists(ILjava/lang/String;J)V

    .line 521
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getSize()I

    move-result v0

    if-ne v0, v5, :cond_158

    .line 522
    invoke-direct {v7, v12}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V

    goto :goto_158

    .line 526
    :cond_13f
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, v9, v13}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAppInfoFromLists(ILjava/lang/String;)I

    .line 527
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v9, v13, v1, v2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->insertAppInfoToLists(ILjava/lang/String;J)V

    .line 528
    iget-object v0, v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getSize()I

    move-result v0

    if-ne v0, v5, :cond_158

    .line 529
    invoke-direct {v7, v12}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V

    .line 532
    :cond_158
    :goto_158
    const-string v0, "com.samsung.DO_SEEDBED_LAUNCH"

    const-string/jumbo v1, "seedbed"

    invoke-direct {v7, v0, v13, v1, v10}, Lcom/android/server/ipm/SeedbedPreloadController;->sendPreloadIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    return-void
.end method

.method private SeedBedListOut(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .line 536
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isAppInfoListsExist(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 537
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAppInfoFromLists(ILjava/lang/String;)I

    move-result v0

    .line 538
    .local v0, "index":I
    if-nez v0, :cond_14

    .line 539
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V

    .line 541
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ipm/SeedbedPreloadController;->changePackageADJ(Ljava/lang/String;II)V

    .line 543
    .end local v0    # "index":I
    :cond_17
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .line 39
    sget v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ipm/SeedbedPreloadController;->changePackageADJ(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 39
    sput p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/ipm/SeedbedPreloadController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedListScheduler(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ipm/SeedbedPreloadController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/SeedbedPreloadController;->processForegroundChanged(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/ipm/SeedbedPreloadController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/ipm/SeedbedPreloadController;->setKPMLevel(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedPreloadController;->calcSeedbedLimitByKPMLevel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ipm/SeedbedPreloadController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/ipm/SeedbedPreloadController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 39
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedPreloadController;->setSeedBedOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ipm/SeedbedPreloadController;)Lcom/android/server/ipm/SeedbedAppInfoWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 39
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ipm/SeedbedPreloadController;->SeedBedListIn(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700()J
    .registers 2

    .line 39
    sget-wide v0, Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;J)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # J

    .line 39
    invoke-direct/range {p0 .. p6}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ipm/SeedbedPreloadController;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/SeedbedPreloadController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ipm/SeedbedPreloadController;->SeedBedListOut(Ljava/lang/String;II)V

    return-void
.end method

.method private calcSeedbedLimitByKPMLevel()V
    .registers 11

    .line 297
    sget v0, Lcom/android/server/ipm/SeedbedPreloadController;->KPM_LEVEL:I

    const/16 v1, 0xa

    const/16 v2, 0xc

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v0, v6, :cond_ad

    if-eq v0, v9, :cond_80

    if-eq v0, v3, :cond_4c

    if-eq v0, v8, :cond_18

    goto/16 :goto_de

    .line 350
    :cond_18
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v5, :cond_20

    .line 351
    sput v8, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 352
    :cond_20
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v4, :cond_28

    .line 353
    sput v3, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 354
    :cond_28
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v8, :cond_30

    .line 355
    sput v9, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 356
    :cond_30
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v3, :cond_38

    .line 357
    sput v6, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 358
    :cond_38
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v9, :cond_40

    .line 359
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 360
    :cond_40
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v6, :cond_48

    .line 361
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 363
    :cond_48
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 365
    goto/16 :goto_de

    .line 333
    :cond_4c
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v5, :cond_54

    .line 334
    sput v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 335
    :cond_54
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v4, :cond_5c

    .line 336
    sput v4, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 337
    :cond_5c
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v8, :cond_64

    .line 338
    sput v8, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 339
    :cond_64
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v3, :cond_6c

    .line 340
    sput v9, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 341
    :cond_6c
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v9, :cond_74

    .line 342
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 343
    :cond_74
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v6, :cond_7c

    .line 344
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto/16 :goto_de

    .line 346
    :cond_7c
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 348
    goto/16 :goto_de

    .line 316
    :cond_80
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v5, :cond_87

    .line 317
    sput v2, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 318
    :cond_87
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v4, :cond_8e

    .line 319
    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 320
    :cond_8e
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v8, :cond_95

    .line 321
    sput v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 322
    :cond_95
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v3, :cond_9c

    .line 323
    sput v4, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 324
    :cond_9c
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v9, :cond_a3

    .line 325
    sput v8, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 326
    :cond_a3
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v6, :cond_aa

    .line 327
    sput v9, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 329
    :cond_aa
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 331
    goto :goto_de

    .line 299
    :cond_ad
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v5, :cond_b6

    .line 300
    const/16 v0, 0x10

    sput v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 301
    :cond_b6
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v4, :cond_bf

    .line 302
    const/16 v0, 0xe

    sput v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 303
    :cond_bf
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v8, :cond_c6

    .line 304
    sput v2, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 305
    :cond_c6
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v3, :cond_cd

    .line 306
    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 307
    :cond_cd
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v9, :cond_d4

    .line 308
    sput v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 309
    :cond_d4
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v0, v6, :cond_db

    .line 310
    sput v4, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    goto :goto_de

    .line 312
    :cond_db
    sput v7, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 314
    nop

    .line 370
    :goto_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KPM LEVEL change to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->KPM_LEVEL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current seedbed list size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    .line 371
    invoke-virtual {v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KPM limit size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "seedbed-SeedbedPreloadController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getSize()I

    move-result v0

    .line 373
    .local v0, "listSize":I
    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    if-le v0, v1, :cond_122

    .line 374
    sub-int v1, v0, v1

    .line 375
    .local v1, "listOutCnt":I
    add-int/lit8 v2, v0, -0x1

    sub-int v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/ipm/SeedbedPreloadController;->updateSeedbedList(II)V

    .line 377
    .end local v1    # "listOutCnt":I
    :cond_122
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    sget v2, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    invoke-virtual {v1, v2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->setSeedbedListSize(I)V

    .line 378
    return-void
.end method

.method private changePackageADJ(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ListOutType"    # I

    .line 599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 600
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.DO_SEEDBED_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string/jumbo v1, "preload_type"

    const-string/jumbo v2, "listout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "preload_userid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string/jumbo v1, "listout_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changePackageADJ type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "seedbed-SeedbedPreloadController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method private getPackageNameFromUid(II)Ljava/lang/String;
    .registers 13
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "foregroundApp":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 252
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown app go to foreground... uid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "seedbed-SeedbedPreloadController"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v3, 0x0

    return-object v3

    .line 256
    :cond_36
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a5

    .line 258
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a5

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "pkgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 262
    .local v6, "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, p1, :cond_82

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p2, :cond_82

    .line 263
    iget-object v4, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 264
    goto :goto_83

    .line 266
    .end local v6    # "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_82
    goto :goto_6b

    .line 267
    :cond_83
    :goto_83
    if-eqz v4, :cond_a5

    .line 268
    array-length v5, v4

    move v6, v3

    :goto_87
    if-ge v6, v5, :cond_a5

    aget-object v7, v4, v6

    .line 269
    .local v7, "pkg":Ljava/lang/String;
    new-instance v8, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    invoke-direct {v8, v2, p1, v7, v3}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;-><init>(IILjava/lang/String;Z)V

    .line 270
    .local v8, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 271
    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 272
    goto :goto_a5

    .line 268
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_87

    .line 279
    .end local v4    # "pkgs":[Ljava/lang/String;
    :cond_a5
    :goto_a5
    iget-object v3, v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method public static getSeedBedOsLimit()I
    .registers 1

    .line 685
    sget v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    return v0
.end method

.method private isProcessExist(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 547
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_27

    .line 548
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 549
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 550
    .local v2, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, p2, :cond_26

    .line 551
    const/4 v1, 0x1

    return v1

    .line 553
    .end local v2    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_26
    goto :goto_c

    .line 555
    .end local v0    # "lists":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method private isShowIconPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 285
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 290
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 291
    const/4 v2, 0x1

    return v2

    .line 293
    :cond_25
    return v2
.end method

.method private isUserRunningAndUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 815
    if-nez p1, :cond_4

    .line 816
    const/4 v0, 0x1

    return v0

    .line 818
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private processForegroundChanged(II)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 588
    invoke-direct {p0, p2, p1}, Lcom/android/server/ipm/SeedbedPreloadController;->getPackageNameFromUid(II)Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 590
    return-void

    .line 592
    :cond_7
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isAppInfoListsExist(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processForegroundChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "seedbed-SeedbedPreloadController"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v2, v0}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V

    .line 596
    :cond_2c
    return-void
.end method

.method private sendPreloadIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "Action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 610
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 611
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "preload_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string/jumbo v1, "preload_userid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v1, "seedbedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    const-string/jumbo v2, "seedbed_pkgs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 618
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent Action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seedbed-SeedbedPreloadController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private sendSeedBedMessage(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 689
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 690
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 691
    const/4 v1, -0x1

    if-eq p2, v1, :cond_c

    .line 692
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 694
    :cond_c
    if-eq p3, v1, :cond_10

    .line 695
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 697
    :cond_10
    if-eqz p4, :cond_14

    .line 698
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    :cond_14
    sget-object v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    return-void
.end method

.method private sendSeedBedMessageDelay(IIILjava/lang/Object;J)V
    .registers 13
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "time"    # J

    .line 704
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 705
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 706
    const/4 v1, -0x1

    if-eq p2, v1, :cond_c

    .line 707
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 709
    :cond_c
    if-eq p3, v1, :cond_10

    .line 710
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 712
    :cond_10
    if-eqz p4, :cond_14

    .line 713
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 716
    :cond_14
    sget-object v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_27

    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->iDelay:I

    sget v2, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    if-ge v1, v2, :cond_27

    .line 717
    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->iDelay:I

    goto :goto_2a

    .line 720
    :cond_27
    const/4 v1, 0x0

    sput v1, Lcom/android/server/ipm/SeedbedPreloadController;->iDelay:I

    .line 723
    :goto_2a
    sget-object v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/ipm/SeedbedPreloadController;->INTERVAL_MILLIS:J

    sget v4, Lcom/android/server/ipm/SeedbedPreloadController;->iDelay:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v2, p5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 724
    return-void
.end method

.method private setKPMLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 469
    sput p1, Lcom/android/server/ipm/SeedbedPreloadController;->KPM_LEVEL:I

    .line 470
    return-void
.end method

.method private setSeedBedOff()V
    .registers 9

    .line 643
    const-string/jumbo v0, "seedbed-SeedbedPreloadController"

    const-string v1, " seedbed is off, clear all seedbed process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getAppInfoList()Ljava/util/List;

    move-result-object v1

    .line 645
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/SeedbedAppInfo;>;"
    if-eqz v1, :cond_5c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_5c

    .line 647
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 648
    .local v3, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v5

    .line 650
    .local v5, "uid":I
    const/4 v6, 0x2

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/ipm/SeedbedPreloadController;->changePackageADJ(Ljava/lang/String;II)V

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear all Sent uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " type: listout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v3    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "uid":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 654
    .end local v2    # "i":I
    :cond_5c
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAllAppInfoFromList()V

    .line 655
    return-void
.end method

.method public static switchStaticOnoffSeedBedModule(Z)V
    .registers 3
    .param p0, "onoff"    # Z

    .line 623
    const-string/jumbo v0, "persist.sys.seedbed_onoff"

    if-eqz p0, :cond_f

    .line 624
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    .line 625
    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 627
    :cond_f
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    .line 628
    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 631
    :goto_1d
    return-void
.end method

.method private updateSeedbedList(II)V
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getAppInfoList()Ljava/util/List;

    move-result-object v0

    .line 385
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/SeedbedAppInfo;>;"
    if-eqz v0, :cond_46

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seedbed list out from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "seedbed-SeedbedPreloadController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move v1, p1

    .local v1, "i":I
    :goto_2f
    if-lt v1, p2, :cond_46

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 389
    .local v2, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v4

    .line 391
    .local v4, "uid":I
    const/4 v5, 0x2

    invoke-direct {p0, v5, v4, v5, v3}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V

    .line 387
    .end local v2    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 394
    .end local v1    # "i":I
    :cond_46
    return-void
.end method

.method private updateSeedbedListScheduler(Z)V
    .registers 11
    .param p1, "state"    # Z

    .line 564
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getAppInfoByIndex(I)Lcom/android/server/ipm/SeedbedAppInfo;

    move-result-object v0

    .line 565
    .local v0, "sdInfo":Lcom/android/server/ipm/SeedbedAppInfo;
    if-nez v0, :cond_a

    .line 566
    return-void

    .line 568
    :cond_a
    if-eqz p1, :cond_26

    .line 569
    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ipm/SeedbedPreloadController;->changePackageADJ(Ljava/lang/String;II)V

    .line 570
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAppInfoFromListsByIndex(I)V

    .line 571
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v2, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->getAppInfoByIndex(I)Lcom/android/server/ipm/SeedbedAppInfo;

    move-result-object v0

    .line 572
    if-nez v0, :cond_26

    .line 573
    return-void

    .line 576
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 577
    .local v1, "currentTime":J
    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfo;->getInsertTime()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/ipm/SeedbedPreloadController;->DAY_MILLIS:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    .line 578
    .local v3, "trigerTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " insert time is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ipm/SeedbedPreloadController;->SCHEDULE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/android/server/ipm/SeedbedAppInfo;->getInsertTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " alarm will be triggered at time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ipm/SeedbedPreloadController;->SCHEDULE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    sget-wide v7, Lcom/android/server/ipm/SeedbedPreloadController;->DAY_MILLIS:J

    add-long/2addr v7, v1

    .line 579
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 578
    const-string/jumbo v6, "seedbed-SeedbedPreloadController"

    invoke-virtual {p0, v6, v5}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    sget-object v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 582
    sget-object v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    :cond_81
    sget-object v5, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 585
    return-void
.end method


# virtual methods
.method public LogEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 824
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_7
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "app"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 828
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    if-nez v0, :cond_15

    .line 829
    const-string/jumbo v0, "seedbed is shutdow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :cond_15
    const-string v0, "debug"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "on"

    if-eqz v0, :cond_37

    .line 832
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 833
    sput-boolean v1, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    goto/16 :goto_2bb

    .line 834
    :cond_2d
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 835
    sput-boolean v2, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    goto/16 :goto_2bb

    .line 837
    :cond_37
    const-string/jumbo v0, "timer"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 838
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/ipm/SeedbedPreloadController;->DAY_MILLIS:J

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seedbed schedule time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/ipm/SeedbedPreloadController;->DAY_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2bb

    .line 841
    :cond_73
    const-string/jumbo v0, "size"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 842
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    .line 843
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->setSeedbedListSize(I)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seedbed limit size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bb

    .line 846
    :cond_a4
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "enable seedbed module:"

    const-string v7, "enable"

    if-eqz v5, :cond_cb

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 847
    invoke-static {v1}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bb

    .line 849
    :cond_cb
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 850
    invoke-static {v2}, Lcom/android/server/ipm/SeedbedPreloadController;->switchStaticOnoffSeedBedModule(Z)V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bb

    .line 852
    :cond_ee
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "switch"

    if-eqz v3, :cond_117

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 853
    invoke-virtual {p0, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->switchOnoffSeedBedModule(Z)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pause seedbed module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bb

    .line 855
    :cond_117
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 856
    invoke-virtual {p0, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->switchOnoffSeedBedModule(Z)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restart seedbed module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2bb

    .line 858
    :cond_13d
    const-string/jumbo v3, "seedbed"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seedbed preload user:0  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v0

    .line 861
    invoke-virtual {v0, v2}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledAppsByUseId(I)Ljava/util/List;

    move-result-object v0

    .line 862
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_167
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_186

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 863
    .local v2, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 864
    iget-object v1, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    iget v4, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/ipm/SeedbedPreloadController;->SeedBedListIn(Ljava/lang/String;II)V

    .line 865
    goto :goto_186

    .line 867
    .end local v2    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_185
    goto :goto_167

    .line 868
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_186
    :goto_186
    goto/16 :goto_2bb

    :cond_188
    const-string v3, "continue"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continue preload seedbed process "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to the bub status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v0

    .line 871
    invoke-virtual {v0, v2}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledAppsByUseId(I)Ljava/util/List;

    move-result-object v0

    .line 872
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_214

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 873
    .local v4, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v5, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_213

    .line 874
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 875
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.DO_ML_LAUNCH"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string/jumbo v5, "package_name"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string/jumbo v5, "preload_type"

    const-string v6, "booster"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string/jumbo v5, "use_pageboost"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    const-string/jumbo v1, "preload_uid"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v1, "boosterPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .local v5, "boosterPkgsUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    const-string v2, "booster_pkgs"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 885
    const-string v2, "booster_pkgs_uid"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 886
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 887
    goto :goto_214

    .line 889
    .end local v1    # "boosterPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    .end local v5    # "boosterPkgsUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_213
    goto :goto_1b5

    .line 890
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_214
    :goto_214
    goto/16 :goto_2bb

    :cond_216
    const-string/jumbo v1, "list"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 891
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedAppInfoWrapper:Lcom/android/server/ipm/SeedbedAppInfoWrapper;

    if-eqz v0, :cond_2bb

    .line 892
    invoke-virtual {v0, p1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->dumpList(Ljava/io/PrintWriter;)V

    goto/16 :goto_2bb

    .line 893
    :cond_228
    const-string/jumbo v1, "sqe"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f

    .line 894
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 895
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.SEEDBED_SIZE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 897
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seedbed preload size:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_2bb

    :cond_25f
    const-string/jumbo v0, "get_size"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seedbed size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedbedOsLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2bb

    .line 901
    :cond_280
    const-string/jumbo v0, "kpm"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 902
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 903
    .local v0, "kpm":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 904
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedPreloadController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "kpm:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    .end local v0    # "kpm":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2bb
    :goto_2bb
    return-void
.end method

.method public getSeedbedStatus()Z
    .registers 3

    .line 912
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    iget-boolean v1, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public initSeedBedList(Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/AppRanking;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/AppRanking;>;"
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->STATIC_SEEDBED_ENABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_ac

    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->mFirstInit:Z

    if-eqz v0, :cond_14

    goto/16 :goto_ac

    .line 202
    :cond_14
    sput-boolean v1, Lcom/android/server/ipm/SeedbedPreloadController;->mFirstInit:Z

    .line 204
    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 205
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mInitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/AppRanking;

    .line 207
    .local v1, "appRanking":Lcom/android/server/ipm/AppRanking;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AUF init app user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/ipm/AppRanking;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  pkgname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seedbed-SeedbedPreloadController"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1    # "appRanking":Lcom/android/server/ipm/AppRanking;
    goto :goto_27

    .line 209
    :cond_57
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mInitAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_5c
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mInitAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/AppRanking;

    .line 213
    .local v1, "app":Lcom/android/server/ipm/AppRanking;
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v2

    iget v3, v1, Lcom/android/server/ipm/AppRanking;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledAppsByUseId(I)Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 215
    .local v4, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v5, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/ipm/AppRanking;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget v5, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    iget v6, v1, Lcom/android/server/ipm/AppRanking;->userId:I

    if-ne v5, v6, :cond_a9

    .line 217
    const/4 v8, 0x1

    iget v9, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    iget v10, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    iget-object v11, v4, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x4

    sget-wide v12, Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J

    mul-long/2addr v12, v5

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V

    .line 218
    goto :goto_aa

    .line 220
    .end local v4    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_a9
    goto :goto_7c

    .line 221
    .end local v1    # "app":Lcom/android/server/ipm/AppRanking;
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    :cond_aa
    :goto_aa
    goto :goto_62

    .line 222
    :cond_ab
    return-void

    .line 201
    :cond_ac
    :goto_ac
    return-void
.end method

.method public packageAdd(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " package add :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "seedbed-SeedbedPreloadController"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public packageRemove(Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " package remove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "seedbed-SeedbedPreloadController"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget v0, p1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    iget-object v1, p1, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public switchOnoffSeedBedModule(Z)V
    .registers 4
    .param p1, "onoff"    # Z

    .line 634
    if-eqz p1, :cond_6

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    goto :goto_f

    .line 637
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/SeedbedPreloadController;->seedbedEnable:Z

    .line 638
    sget-object v0, Lcom/android/server/ipm/SeedbedPreloadController;->mSeedBedListOwnerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    :goto_f
    return-void
.end method

.method public userAdd(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 659
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledAppsByUseId(I)Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 661
    .local v2, "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v3, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/ipm/SeedbedPreloadController;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 662
    goto :goto_c

    .line 663
    :cond_23
    const/4 v5, 0x1

    iget v6, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    iget v7, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->user:I

    iget-object v8, v2, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x4

    sget-wide v9, Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J

    mul-long/2addr v9, v3

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V

    .line 664
    .end local v2    # "app":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    goto :goto_c

    .line 665
    :cond_34
    return-void
.end method

.method public userRemove(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 669
    const/4 v0, 0x4

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V

    .line 670
    return-void
.end method
