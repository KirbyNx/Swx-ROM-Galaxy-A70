.class Lcom/android/server/AlarmManagerServiceExt;
.super Lcom/android/server/AppSyncWrapper;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$PackageList;,
        Lcom/android/server/AlarmManagerServiceExt$Sales;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;,
        Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    }
.end annotation


# static fields
.field private static ABOVE_ANDROID_M:Z = false

.field private static ANDROID_P_OR_LATER:Z = false

.field private static final APPSYNC_DEBUG_IF_PATH:Ljava/lang/String; = "/data/system/app_sync_log_enable"

.field private static APP_SYNC_LOG:Z = false

.field private static final BLACKLIST:Ljava/lang/String; = "BlackList"

.field private static final BLACKLIST3P:Ljava/lang/String; = "BlackList3P"

.field private static final CONFIG_SECTION:Ljava/lang/String; = "APPSYNC_INIT"

.field static final COUNTRY_CODE_CHN:Z

.field private static DEBUG_MID:Z = false

.field private static final DELTA_FROM_TRIGGERS:Ljava/lang/String; = "deltaFromTriggers"

.field private static final ENABLE_CHN_DEACT_IN_SCR_ON:Ljava/lang/String; = "DeactivateInScreenOn"

.field private static final ENABLE_CHN_DEACT_IN_USB_ON:Ljava/lang/String; = "DeactivateInUSB"

.field private static final ENABLE_CHN_SOLUTION:Ljava/lang/String; = "enableChnSolution"

.field private static final EXTRA_WHITE_LIST:Ljava/lang/String; = "ExtraWhiteList"

.field private static NEW_ALARM_MANAGER:Z = false

.field private static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field private static final TAG:Ljava/lang/String; = "AlarmManagerEXT"

.field static final sCountryCode:Ljava/lang/String;

.field static final sIsGalaxyView:Z

.field static final sProductModel:Ljava/lang/String;


# instance fields
.field mAms:Lcom/android/server/AlarmManagerService;

.field mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    .line 138
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x16

    if-le v1, v3, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v0

    :goto_1a
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v0

    :goto_25
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    .line 484
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    .line 486
    const-string v3, "CHINA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    .line 487
    const-string v3, "TAIWAN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    sget-object v1, Lcom/android/server/AlarmManagerServiceExt;->sCountryCode:Ljava/lang/String;

    .line 488
    const-string v3, "HONG KONG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    move v1, v0

    goto :goto_50

    :cond_4f
    :goto_4f
    move v1, v2

    :goto_50
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->COUNTRY_CODE_CHN:Z

    .line 490
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/AlarmManagerServiceExt;->sProductModel:Ljava/lang/String;

    .line 492
    if-eqz v1, :cond_66

    const-string v3, "SM-T67"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_66

    move v0, v2

    :cond_66
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->sIsGalaxyView:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 178
    invoke-direct {p0}, Lcom/android/server/AppSyncWrapper;-><init>()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt;->initSystemProperties()V

    .line 180
    iput-object p2, p0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    .line 181
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;-><init>(Lcom/android/server/AlarmManagerServiceExt;Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 135
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 135
    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerServiceExt;Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService;
    .param p2, "x2"    # Landroid/app/PendingIntent;

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt;->getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/app/PendingIntent;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/PendingIntent;

    .line 135
    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->getUidFromPendingIntent(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 135
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    return v0
.end method

.method public static createAppSync(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)Lcom/android/server/AppSyncWrapper;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 162
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getInfoFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 7
    .param p1, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p2, "p"    # Landroid/app/PendingIntent;

    .line 267
    const/4 v0, 0x0

    if-eqz p1, :cond_21

    if-nez p2, :cond_6

    goto :goto_21

    .line 269
    :cond_6
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 270
    .local v1, "localService":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return-object v0

    .line 271
    .end local v1    # "localService":Landroid/app/ActivityManagerInternal;
    :catch_17
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getInfoFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    return-object v0

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return-object v0
.end method

.method private static getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I
    .registers 6
    .param p0, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p1, "p"    # Landroid/app/PendingIntent;

    .line 279
    const/4 v0, -0x1

    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    .line 281
    :cond_6
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 282
    .local v1, "localService":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 283
    .end local v1    # "localService":Landroid/app/ActivityManagerInternal;
    :catch_17
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getKidFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    return v0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    return v0
.end method

.method private static getUidFromPendingIntent(Landroid/app/PendingIntent;)I
    .registers 5
    .param p0, "p"    # Landroid/app/PendingIntent;

    .line 291
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 293
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    .line 294
    :catch_11
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "getUidFromPendingIntent : "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return v0
.end method

.method static hasSmartManager(Landroid/content/Context;)Z
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .line 4503
    sget-object v0, Lcom/samsung/android/rune/CoreRune;->APPSYNC_SM_PKG:Ljava/lang/String;

    .line 4505
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4507
    .local v1, "tPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 4508
    return v2

    .line 4511
    :cond_a
    const/16 v3, 0x80

    :try_start_c
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_10} :catch_14

    if-eqz v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    .line 4512
    :catch_14
    move-exception v3

    .line 4513
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private initSystemProperties()V
    .registers 5

    .line 167
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    .line 168
    const-string/jumbo v0, "ro.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0x494d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string/jumbo v0, "ro.boot.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_3d

    :cond_3b
    move v0, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v0, v1

    :goto_3e
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v0, v3, :cond_48

    move v0, v1

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_53

    move v0, v1

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    sput-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    sput-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemProperties initialized : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->DEBUG_MID:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->ABOVE_ANDROID_M:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManagerEXT"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private static isActiveAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 11
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 303
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt;->ANDROID_P_OR_LATER:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 304
    return v1

    .line 306
    :cond_6
    const/4 v0, 0x0

    if-eqz p0, :cond_60

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    if-nez v2, :cond_e

    goto :goto_60

    .line 310
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 311
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 312
    .local v3, "sourceUserId":I
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    .line 314
    .local v4, "localService":Landroid/app/usage/UsageStatsManagerInternal;
    nop

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 314
    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 317
    .local v5, "standbyBucket":I
    sget-boolean v6, Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z

    const/16 v7, 0xa

    if-eqz v6, :cond_59

    .line 318
    const-string v6, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isActiveAlarm : SBBucket ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] <= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gt v5, v7, :cond_4e

    move v9, v1

    goto :goto_4f

    :cond_4e
    move v9, v0

    :goto_4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_5e

    .line 323
    :cond_59
    if-gt v5, v7, :cond_5c

    goto :goto_5d

    :cond_5c
    move v1, v0

    :goto_5d
    return v1

    .line 324
    .end local v2    # "sourcePackage":Ljava/lang/String;
    .end local v3    # "sourceUserId":I
    .end local v4    # "localService":Landroid/app/usage/UsageStatsManagerInternal;
    .end local v5    # "standbyBucket":I
    :catch_5e
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_60
    :goto_60
    return v0
.end method

.method static isAppSync3PlusTarget(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 4491
    sget-boolean v0, Lcom/android/server/AlarmManagerServiceExt$Sales;->VZW:Z

    if-nez v0, :cond_c

    .line 4493
    invoke-static {p0}, Lcom/android/server/AlarmManagerServiceExt;->hasSmartManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4495
    .local v0, "enable":Z
    :goto_d
    if-eqz v0, :cond_13

    const-string/jumbo v1, "true"

    goto :goto_15

    :cond_13
    const-string v1, "false"

    :goto_15
    const-string v2, "dev.ssrm.appsync3p"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSync3+ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManagerEXT"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    return v0
.end method

.method public static maxRepeatInterval(JJ)J
    .registers 14
    .param p0, "interval"    # J
    .param p2, "window"    # J

    .line 459
    move-wide v0, p0

    .line 460
    .local v0, "ret":J
    add-long v2, p0, p2

    .line 461
    .local v2, "maxInterval":J
    const-wide/16 v4, 0x2

    div-long v4, p0, v4

    .line 462
    .local v4, "halfInterval":J
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_e

    return-wide v0

    .line 466
    :cond_e
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1f

    .line 467
    long-to-double v6, v2

    long-to-double v8, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v6, v4

    .end local v0    # "ret":J
    .local v6, "ret":J
    goto :goto_47

    .line 472
    .end local v6    # "ret":J
    .restart local v0    # "ret":J
    :cond_1f
    const-wide/32 v6, 0x1b7740

    cmp-long v6, v2, v6

    if-ltz v6, :cond_37

    .line 473
    long-to-double v6, v2

    const-wide v8, 0x41224f8000000000L    # 600000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x927c0

    mul-long/2addr v6, v8

    .end local v0    # "ret":J
    .restart local v6    # "ret":J
    goto :goto_47

    .line 479
    .end local v6    # "ret":J
    .restart local v0    # "ret":J
    :cond_37
    long-to-double v6, v2

    const-wide v8, 0x41124f8000000000L    # 300000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x493e0

    mul-long/2addr v6, v8

    .line 481
    .end local v0    # "ret":J
    .restart local v6    # "ret":J
    :goto_47
    return-wide v6
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 263
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->disableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public doGC(J)V
    .registers 4
    .param p1, "millis"    # J

    .line 229
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->doGarbageCollection(J)V

    .line 230
    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 257
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->enableSuspiciousPackageControlAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method

.method public log(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 13
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "exact"    # Z

    .line 235
    sget-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    if-nez v0, :cond_5

    .line 236
    return-void

    .line 238
    :cond_5
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 239
    .local v0, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 240
    .local v1, "TIME_SKEW":J
    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1d

    const-wide/16 v5, 0x0

    goto :goto_1e

    :cond_1d
    move-wide v5, v1

    :goto_1e
    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 241
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "timeStr":Ljava/lang/String;
    if-eqz p2, :cond_2c

    const-string/jumbo v4, "setExact"

    goto :goto_2f

    :cond_2c
    const-string/jumbo v4, "setWindow/setInexact"

    .line 244
    .local v4, "callStr":Ljava/lang/String;
    :goto_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (T:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_89

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->hashCode()I

    move-result v7

    goto :goto_93

    :cond_89
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_93
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v7, :cond_aa

    .line 248
    iget-object v7, p0, Lcom/android/server/AlarmManagerServiceExt;->mAms:Lcom/android/server/AlarmManagerService;

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v7, v8}, Lcom/android/server/AlarmManagerServiceExt;->getKidFromPendingIntent(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)I

    move-result v7

    goto :goto_b4

    .line 249
    :cond_aa
    iget-object v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v7}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 247
    :goto_b4
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    const-string v6, "AlarmManagerEXT"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 6
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;
    .param p3, "triggerAtTime"    # J

    .line 185
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z

    move-result v0

    return v0
.end method

.method public removeRepeatingAlarm(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(I)V

    .line 214
    return-void
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "dummy"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(IZ)V

    .line 211
    return-void
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 203
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    goto :goto_d

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/IAlarmListener;)V

    .line 205
    :goto_d
    return-void
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public removeRepeatingAlarms(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p1, "operations":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_3

    return-void

    .line 221
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 222
    .local v1, "operation":Landroid/app/PendingIntent;
    if-nez v1, :cond_16

    goto :goto_7

    .line 223
    :cond_16
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeRepeatingAlarm(Landroid/app/PendingIntent;)V

    .line 224
    .end local v1    # "operation":Landroid/app/PendingIntent;
    goto :goto_7

    .line 225
    :cond_1c
    return-void
.end method

.method public rescheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 191
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 192
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const-string v1, "AlarmManagerEXT"

    if-nez v0, :cond_14

    .line 193
    const-string v0, "AppSync scheduleAlarms: changed --- alarm operation null"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 195
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSync scheduleAlarms: changed --- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2a
    :goto_2a
    return-void
.end method

.method public scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 188
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .line 200
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V

    .line 201
    return-void
.end method
