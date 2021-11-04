.class public Lcom/android/server/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats;,
        Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;,
        Lcom/android/server/GmsAlarmManager$GmsHandler;,
        Lcom/android/server/GmsAlarmManager$SCPMReceiver;,
        Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;,
        Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;,
        Lcom/android/server/GmsAlarmManager$ScreenReceiver;,
        Lcom/android/server/GmsAlarmManager$NetworkReceiver;,
        Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_check_gms_network"

.field private static final ACTION_ALARM_INSERT_LOG_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_insert_log"

.field private static final ACTION_GOOGLE_NET_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_google_net_state"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.gmsnet"

.field private static final ACTION_SETUPWIZARD_COMPLETE_BROADCAST:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final ALARM_RESTRICTION_ENABLE:I = 0x1

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHECKINSERVER_URL:Ljava/lang/String; = "checkin.gstatic.com"

.field private static final CHINA_MODE:Ljava/lang/String; = "CHINA"

.field private static final CONFIGUPDATER_PKG:Ljava/lang/String; = "com.google.android.configupdater"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final GMSALARMMANAGERLOGGING_APP_ID:Ljava/lang/String; = "com.android.server.gmsalarmmanager"

.field public static final GMSALARMMANAGERLOGGING_FEATURE_GNET:Ljava/lang/String; = "GNET"

.field private static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field private static final GNET_ALARM_RESTRICTION_ITEM:Ljava/lang/String; = "alarm_restriction"

.field private static final GNET_CHECKIN_ITEM:Ljava/lang/String; = "checkin_addr"

.field private static final GNET_NETWORK_RESTRICTION_ITEM:Ljava/lang/String; = "network_restriction"

.field private static final GNET_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field private static final GNET_WAKELOCK_RESTRICTION_ITEM:Ljava/lang/String; = "wakelock_restriction"

.field private static final GNET_WHITELIST_CATEGORY:Ljava/lang/String; = "whitelist"

.field private static final HONG_KONG_MODE:Ljava/lang/String; = "HONG KONG"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final MASK:I = 0x7

.field private static final MSG_CHECK_MULTIUSERID:I = 0xa

.field private static final MSG_CHECK_NETWORK:I = 0x1

.field private static final MSG_CHECK_SPCM_PARAMETERES:I = 0x7

.field private static final MSG_DISABLE_GMS_NETWORK:I = 0x2

.field private static final MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING:I = 0x5

.field private static final MSG_ENABLE_GMS_NETWORK:I = 0x3

.field private static final MSG_ENABLE_GMS_NETWORK_BY_CHARGING:I = 0x4

.field private static final MSG_FORCE_RESET_GMS_NETWORK:I = 0xc

.field private static final MSG_INSERT_LOG:I = 0x6

.field private static final MSG_SETTINGS_CHANGE:I = 0xb

.field private static final MSG_USER_ADDED:I = 0x9

.field private static final MSG_USER_REMOVED:I = 0x8

.field private static final NETWORK_RESTRICTION_ENABLE:I = 0x2

.field private static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field private static final POLICY_ENABLE:Ljava/lang/String; = "true"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "gmsnet"

.field private static final SCREEN_ON_ALARM_DELAY:J = 0x36ee80L

.field private static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "GmsAlarmManager"

.field private static final TIME_DELAY:J = 0x2710L

.field private static final TIME_DELAY_AFTER_SETUPWIZARD_COMPLETE:J = 0x3e8L

.field private static final TIME_DELAY_INSERT_LOG:J = 0x5265c00L

.field private static final TIME_OUT_DELAY:J = 0x1d4c0L

.field private static final WAKELOCK_RESTRICTION_ENABLE:I = 0x4

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field static sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private cm:Landroid/net/ConnectivityManager;

.field private isCharging:Z

.field private isChinaMode:Z

.field private isGmsNetWorkLimt:Z

.field private isHongKongMode:Z

.field private isSetupWizardCompleteOrBootComplete:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmService:Lcom/android/server/AlarmManagerService;

.field private mBatteryCharingReceiver:Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;

.field private mBigdataEnable:Z

.field mCheckinServerUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigupdaterUid:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGmsPkgAppid:I

.field private mGmsPkgUid:I

.field private mGmsUidOfMultiUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleNetWork:Z

.field private mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

.field private mInsertLogIntent:Landroid/content/Intent;

.field private mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPolicyControlSwitch:I

.field private mSCPMReceiver:Lcom/android/server/GmsAlarmManager$SCPMReceiver;

.field private mScreenOffChange:Z

.field private mScreenOn:Z

.field private mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

.field private mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

.field private mTimeoutcount:I

.field private mUserAddRemoveReceiver:Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

.field private mUserEnable:Z

.field private mVendingUid:I

.field private mWaitCheckNetWork:Z

.field private noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 80
    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    const-string v0, "GmsAlarmManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    .line 91
    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    .line 92
    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    .line 93
    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 105
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    .line 107
    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    .line 122
    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 123
    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 124
    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 125
    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 135
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    .line 144
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 163
    const-string v1, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    .line 164
    const-string v1, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 252
    new-instance v1, Lcom/android/server/GmsAlarmManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/GmsAlarmManager$1;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 799
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    .line 1411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    .line 179
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    .line 180
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    .line 181
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isHongkong()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 183
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    .line 185
    :try_start_7e
    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    .line 186
    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    .line 187
    const-string v3, "com.google.android.configupdater"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    .line 188
    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMS_PACKAGE_UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_b4} :catch_b5

    .line 190
    goto :goto_ca

    :catch_b5
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_ca
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/GmsAlarmManager;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSimOrNoSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/GmsAlarmManager;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/GmsAlarmManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/GmsAlarmManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/GmsAlarmManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/GmsAlarmManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/GmsAlarmManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/GmsAlarmManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->sendIntentToIBS(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/GmsAlarmManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->bigData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->updateSCPMParametersFromDB()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/GmsAlarmManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/GmsAlarmManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkOnceMultiUserid()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkForceReset()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 70
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->forceWakeLockBlackListReset()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/GmsAlarmManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSettingsValueFromDB()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/GmsAlarmManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;

    .line 70
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/GmsAlarmManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GmsAlarmManager;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return p1
.end method

.method private bigData(J)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # J

    .line 1278
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1279
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1280
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"GMST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"GMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4500(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1284
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMST\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"NGMSC\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4500(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    .line 1287
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"VPNT\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J
    invoke-static {v3}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"VPNC\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    # getter for: Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J
    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4500(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAlarm()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 250
    :cond_b
    return-void
.end method

.method private checkActiveNet()Z
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 1020
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 1023
    :cond_10
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_39

    .line 1024
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1025
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "networkInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsAlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1027
    const/4 v1, 0x1

    return v1

    .line 1030
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method private checkGoogleNetwork(Ljava/lang/String;)I
    .registers 8
    .param p1, "addr"    # Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkGoogleNetwork :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 946
    .local v1, "vpnNetwork":Landroid/net/Network;
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isVPNConnected()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 948
    const/4 v2, -0x1

    .line 949
    .local v2, "responseCode":I
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 950
    .local v4, "guid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetworkForUid(Ljava/lang/String;I)I

    move-result v2

    .line 951
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_4b

    const/16 v5, 0x12e

    if-ne v2, v5, :cond_4a

    goto :goto_4b

    .line 954
    .end local v4    # "guid":Ljava/lang/Integer;
    :cond_4a
    goto :goto_2d

    .line 952
    .restart local v4    # "guid":Ljava/lang/Integer;
    :cond_4b
    :goto_4b
    return v2

    .line 957
    .end local v2    # "responseCode":I
    .end local v4    # "guid":Ljava/lang/Integer;
    :cond_4c
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetworkForUid(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private checkGoogleNetworkForUid(Ljava/lang/String;I)I
    .registers 14
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 961
    const-string v0, "checkGoogleNetworkForUid("

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGoogleNetworkForUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsAlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v1, -0x1

    .line 963
    .local v1, "responseCode":I
    const/4 v3, 0x0

    .line 964
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 966
    .local v4, "network":Landroid/net/Network;
    const/4 v5, 0x0

    :try_start_1c
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 967
    .local v6, "url":Ljava/net/URL;
    if-lez p2, :cond_9a

    .line 969
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v7, :cond_33

    .line 970
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    .line 972
    :cond_33
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_9a

    .line 973
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, p2}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v7

    move-object v4, v7

    .line 974
    if-eqz v4, :cond_86

    .line 975
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 976
    .local v7, "nInfo":Landroid/net/NetworkInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", connected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", exInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-virtual {v4, v6}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v3, v8

    .line 978
    .end local v7    # "nInfo":Landroid/net/NetworkInfo;
    goto :goto_9a

    .line 979
    :cond_86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NO ACTIVE NETWORK FOR uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_9a
    :goto_9a
    if-nez v3, :cond_a3

    .line 985
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v3, v7

    .line 987
    :cond_a3
    const/16 v7, 0xbb8

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 988
    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 989
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 990
    const-string v7, "HEAD"

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 992
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    move v1, v7

    .line 993
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const v7, 0x9d0b

    invoke-static {v7, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 995
    iput v5, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_dd} :catch_e6
    .catchall {:try_start_1c .. :try_end_dd} :catchall_e4

    .line 996
    nop

    .line 1011
    if-eqz v3, :cond_e3

    .line 1012
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 996
    :cond_e3
    return v1

    .line 1011
    .end local v6    # "url":Ljava/net/URL;
    :catchall_e4
    move-exception v0

    goto :goto_12c

    .line 997
    :catch_e6
    move-exception v6

    .line 998
    .local v6, "e":Ljava/io/IOException;
    :try_start_e7
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 999
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isVPNConnected()Z

    move-result v7

    if-eqz v7, :cond_123

    .line 1000
    iget v7, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    .line 1001
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") timeout count:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_120

    .line 1003
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const-wide/32 v9, 0x1d4c0

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_125

    .line 1005
    :cond_120
    iput v5, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    goto :goto_125

    .line 1008
    :cond_123
    iput v5, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_125
    .catchall {:try_start_e7 .. :try_end_125} :catchall_e4

    .line 1011
    .end local v6    # "e":Ljava/io/IOException;
    :goto_125
    if-eqz v3, :cond_12a

    .line 1012
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1015
    :cond_12a
    const/4 v0, -0x1

    return v0

    .line 1011
    :goto_12c
    if-eqz v3, :cond_131

    .line 1012
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1014
    :cond_131
    throw v0
.end method

.method private checkOnceMultiUserid()V
    .registers 8

    .line 732
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 733
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 734
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ui":I
    :goto_15
    if-ltz v2, :cond_50

    .line 735
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 736
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 737
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GmsAlarmManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v5, -0x1

    if-le v4, v5, :cond_4d

    if-eqz v4, :cond_4d

    .line 739
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 740
    .local v5, "msg":Landroid/os/Message;
    const/16 v6, 0x9

    iput v6, v5, Landroid/os/Message;->what:I

    .line 741
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 742
    iget-object v6, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 745
    .end local v2    # "ui":I
    :cond_50
    return-void
.end method

.method private disableMultiUserGmsRestriction(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 822
    const-string v0, "GmsAlarmManager"

    const-string v1, "disableMultiUserGmsRestriction "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 824
    .local v1, "temparray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 825
    .local v3, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 826
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 832
    .end local v3    # "i":Ljava/lang/Integer;
    goto :goto_f

    .line 830
    .restart local v3    # "i":Ljava/lang/Integer;
    :cond_29
    return-void

    .line 833
    .end local v3    # "i":Ljava/lang/Integer;
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_96

    iget-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v2, :cond_35

    goto :goto_96

    .line 836
    :cond_35
    const/4 v2, 0x1

    .line 837
    .local v2, "allow":Z
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v3, :cond_46

    .line 838
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    if-nez v3, :cond_46

    .line 839
    const-string v3, "failed to get NetworkManagementService instance"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void

    .line 844
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 845
    .local v4, "i":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 846
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_68} :catch_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_68} :catch_69

    .line 847
    .end local v4    # "i":Ljava/lang/Integer;
    goto :goto_4a

    .line 850
    :catch_69
    move-exception v3

    .line 851
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 848
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_7f
    move-exception v3

    .line 849
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_94
    nop

    .line 853
    :goto_95
    return-void

    .line 834
    .end local v2    # "allow":Z
    :cond_96
    :goto_96
    return-void
.end method

.method private dumpNetStats(J)Ljava/lang/String;
    .registers 7
    .param p1, "time"    # J

    .line 1268
    const-string v0, "Since last 24 hours\n"

    .line 1269
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total time and # of event Google access is available   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Total time and # of event Google access is not possible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total time and # of event VPN is connected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    return-object v0
.end method

.method private enableMultiUserGmsRestriction(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 856
    const-string v0, "GmsAlarmManager"

    const-string v1, "enableMultiUserGmsRestriction "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 858
    .local v1, "temparray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 859
    .local v3, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 860
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v3    # "i":Ljava/lang/Integer;
    :cond_28
    goto :goto_f

    .line 863
    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_95

    iget-boolean v2, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v2, :cond_34

    goto :goto_95

    .line 866
    :cond_34
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_44

    .line 867
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_44

    .line 868
    const-string v2, "failed to get NetworkManagementService instance"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 872
    :cond_44
    const/4 v2, 0x0

    .line 874
    .local v2, "allow":Z
    :try_start_45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 875
    .local v4, "i":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 876
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_67} :catch_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_67} :catch_68

    .line 877
    .end local v4    # "i":Ljava/lang/Integer;
    goto :goto_49

    .line 880
    :catch_68
    move-exception v3

    .line 881
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 878
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_7e
    move-exception v3

    .line 879
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_93
    nop

    .line 883
    :goto_94
    return-void

    .line 864
    .end local v2    # "allow":Z
    :cond_95
    :goto_95
    return-void
.end method

.method private forceWakeLockBlackListReset()V
    .registers 4

    .line 709
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_e

    .line 710
    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_e

    .line 711
    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    .line 714
    :cond_e
    return-void
.end method

.method private getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 7
    .param p1, "p"    # Landroid/app/PendingIntent;

    .line 1066
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1067
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1069
    .local v1, "callingId":J
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1a
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    .line 1075
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    return-object v0

    .line 1075
    :catchall_18
    move-exception v0

    goto :goto_23

    .line 1070
    :catch_1a
    move-exception v3

    .line 1072
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 1073
    nop

    .line 1075
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    return-object v0

    .line 1075
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    throw v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    .line 887
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 888
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 889
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 892
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 14

    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1451
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1452
    .local v1, "scpmurl":Ljava/lang/String;
    const-string v2, "GmsAlarmManager"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :try_start_15
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    move-object v0, v3

    .line 1458
    goto :goto_42

    .line 1455
    :catch_26
    move-exception v3

    .line 1456
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1460
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_42
    if-eqz v0, :cond_146

    .line 1461
    :cond_44
    :goto_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_142

    .line 1462
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1463
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1464
    .local v4, "item":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1465
    .local v7, "category":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1466
    .local v9, "data1":Ljava/lang/String;
    const-string v10, "checkin_addr"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, " ,scpm url: data1 = "

    if-eqz v10, :cond_99

    const-string/jumbo v10, "whitelist"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 1467
    move-object v1, v9

    .line 1468
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    sget-boolean v3, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v3, :cond_140

    .line 1470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_140

    .line 1471
    :cond_99
    const-string/jumbo v10, "switch"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_140

    .line 1472
    sget-boolean v10, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v10, :cond_c8

    .line 1473
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " item = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " switch category = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_c8
    const/4 v10, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, 0xe15f73b

    if-eq v11, v12, :cond_f1

    const v12, 0x3cdd985c

    if-eq v11, v12, :cond_e6

    const v12, 0x6677fade

    if-eq v11, v12, :cond_dd

    :cond_dc
    goto :goto_fc

    :cond_dd
    const-string v11, "alarm_restriction"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_dc

    goto :goto_fd

    :cond_e6
    const-string/jumbo v3, "wakelock_restriction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    move v3, v8

    goto :goto_fd

    :cond_f1
    const-string/jumbo v3, "network_restriction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    move v3, v5

    goto :goto_fd

    :goto_fc
    move v3, v10

    :goto_fd
    const-string/jumbo v10, "true"

    if-eqz v3, :cond_12e

    if-eq v3, v5, :cond_11b

    if-eq v3, v8, :cond_107

    goto :goto_140

    .line 1490
    :cond_107
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1491
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_140

    .line 1493
    :cond_114
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 1495
    goto :goto_140

    .line 1483
    :cond_11b
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 1484
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v3, v8

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_140

    .line 1486
    :cond_127
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 1488
    goto :goto_140

    .line 1476
    :cond_12e
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 1477
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_140

    .line 1479
    :cond_13a
    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    .line 1499
    .end local v4    # "item":Ljava/lang/String;
    .end local v7    # "category":Ljava/lang/String;
    .end local v9    # "data1":Ljava/lang/String;
    :cond_140
    :goto_140
    goto/16 :goto_44

    .line 1501
    :cond_142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_14c

    .line 1503
    :cond_146
    const-string/jumbo v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :goto_14c
    return-void
.end method

.method private getSettingsValueFromDB()V
    .registers 12

    .line 1113
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "key"

    .line 1114
    .local v1, "SETTING_KEY":Ljava/lang/String;
    const-string/jumbo v2, "value"

    .line 1115
    .local v2, "SETTING_VALUE":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1118
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_9
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v4, "key"

    const-string/jumbo v7, "value"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_24

    move-object v3, v4

    .line 1123
    goto :goto_40

    .line 1120
    :catch_24
    move-exception v4

    .line 1121
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1125
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_40
    if-eqz v3, :cond_a3

    .line 1126
    :goto_42
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 1127
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1130
    .local v5, "key":Ljava/lang/String;
    :try_start_4d
    const-string/jumbo v6, "spcm_switch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1131
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_63

    move v4, v6

    .line 1132
    .local v4, "tmp":Z
    :cond_63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get from smartmanager DB, spcm_switch : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-boolean v6, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    if-eq v6, v4, :cond_85

    .line 1137
    iput-boolean v4, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    .line 1138
    iget-object v6, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_85} :catch_86

    .line 1143
    .end local v4    # "tmp":Z
    :cond_85
    goto :goto_9f

    .line 1141
    :catch_86
    move-exception v4

    .line 1142
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with parseInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "key":Ljava/lang/String;
    :goto_9f
    goto :goto_42

    .line 1146
    :cond_a0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1148
    :cond_a3
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 11

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1417
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1418
    .local v1, "scpmurl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1419
    .local v2, "hasValidItem":Z
    const-string v3, "GmsAlarmManager"

    const-string/jumbo v4, "hasValidItemFromDB!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :try_start_16
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_27

    move-object v0, v4

    .line 1425
    goto :goto_43

    .line 1422
    :catch_27
    move-exception v4

    .line 1423
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_43
    if-eqz v0, :cond_7d

    .line 1428
    :cond_45
    :goto_45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1429
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 1430
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1431
    .local v3, "item":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1432
    .local v4, "category":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1433
    .local v5, "data1":Ljava/lang/String;
    const-string v7, "checkin_addr"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const-string/jumbo v7, "whitelist"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1434
    const/4 v2, 0x1

    .line 1435
    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1436
    goto :goto_79

    .line 1438
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "data1":Ljava/lang/String;
    :cond_78
    goto :goto_45

    .line 1440
    :cond_79
    :goto_79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_83

    .line 1442
    :cond_7d
    const-string/jumbo v4, "hasValidItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :goto_83
    return v2
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .line 1152
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v0, :cond_33

    .line 1153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    .local v0, "row":Landroid/content/ContentValues;
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    if-eqz p3, :cond_1a

    .line 1157
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1161
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1164
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1167
    .end local v0    # "row":Landroid/content/ContentValues;
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    return-void
.end method

.method private isChn()Z
    .registers 3

    .line 896
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "sCountryCode":Ljava/lang/String;
    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 898
    const/4 v1, 0x1

    return v1

    .line 900
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private isChnSim()Z
    .registers 6

    .line 927
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 928
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 929
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "mIccid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccid ---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GmsAlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-nez v2, :cond_2c

    .line 932
    return v1

    .line 934
    :cond_2c
    const-string v3, "8986"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "8985"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 935
    :cond_3c
    const/4 v1, 0x1

    return v1

    .line 938
    .end local v2    # "mIccid":Ljava/lang/String;
    :cond_3e
    return v1
.end method

.method private isChnSimOrNoSim()Z
    .registers 5

    .line 912
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 913
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_3d

    .line 914
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "mIccid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIccid ---- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GmsAlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v2, 0x1

    if-nez v1, :cond_2c

    .line 917
    return v2

    .line 919
    :cond_2c
    const-string v3, "8986"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "8985"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 920
    :cond_3c
    return v2

    .line 923
    .end local v1    # "mIccid":Ljava/lang/String;
    :cond_3d
    const/4 v1, 0x0

    return v1
.end method

.method private isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 286
    if-eqz p1, :cond_2e

    .line 287
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, "tIntent":Landroid/content/Intent;
    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "strAction":Ljava/lang/String;
    :goto_1a
    if-eqz v1, :cond_2e

    .line 291
    const-string v2, "com.google.android.gms.gcm."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 292
    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 293
    :cond_2c
    const/4 v2, 0x1

    return v2

    .line 297
    .end local v0    # "tIntent":Landroid/content/Intent;
    .end local v1    # "strAction":Ljava/lang/String;
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z
    .registers 8
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 301
    if-eqz p1, :cond_5d

    .line 302
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, "tIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_17

    move-object v2, v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "strAction":Ljava/lang/String;
    :goto_1b
    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 306
    const-string v4, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 307
    const-string v4, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 308
    const-string v4, "com.google.android.gms.matchstick.register_intent_action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 309
    const-string v4, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 310
    const-string v4, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 311
    :cond_46
    return v3

    .line 313
    :cond_47
    if-nez v0, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 314
    .local v1, "comp":Landroid/content/ComponentName;
    :goto_4e
    if-eqz v1, :cond_5d

    .line 315
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 316
    return v3

    .line 321
    .end local v0    # "tIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "strAction":Ljava/lang/String;
    :cond_5d
    const/4 v0, 0x0

    return v0
.end method

.method private isHongkong()Z
    .registers 3

    .line 904
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "sCountryCode":Ljava/lang/String;
    const-string v1, "HONG KONG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 906
    const/4 v1, 0x1

    return v1

    .line 908
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 11

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "cursorPolicy":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1387
    .local v1, "isNeedUpdate":Z
    sget-boolean v2, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v3, "GmsAlarmManager"

    if-eqz v2, :cond_e

    .line 1388
    const-string/jumbo v2, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 1394
    goto :goto_27

    .line 1392
    :catch_20
    move-exception v2

    .line 1393
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    if-eqz v0, :cond_71

    .line 1396
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1397
    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1398
    .local v2, "policyName":Ljava/lang/String;
    const-string/jumbo v4, "policyVersion"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1399
    .local v4, "policyVersion":Ljava/lang/String;
    const-string/jumbo v5, "gmsnet"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 1400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v1, 0x1

    .line 1402
    goto :goto_6e

    .line 1404
    .end local v2    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_6d
    goto :goto_29

    .line 1405
    :cond_6e
    :goto_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1407
    :cond_71
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    .line 1377
    sget-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    .line 1378
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_c
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method private isVPNConnected()Z
    .registers 4

    .line 1045
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1046
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1047
    .local v1, "VPNNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1048
    const/4 v2, 0x1

    return v2

    .line 1050
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method private isWifiConnected()Z
    .registers 5

    .line 1035
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1036
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1037
    .local v2, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1038
    return v1

    .line 1040
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private restoreGcmAlarm()V
    .registers 10

    .line 717
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v0

    .line 718
    .local v0, "gcmAlarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v0, :cond_d

    return-void

    .line 719
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 720
    .local v1, "nowElapsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 721
    .local v3, "currentTime":J
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    const-wide/16 v7, 0x2710

    if-gt v5, v6, :cond_23

    .line 722
    add-long v5, v3, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_29

    .line 724
    :cond_23
    add-long v5, v1, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 726
    :goto_29
    add-long/2addr v7, v1

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreGcmAlarm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GmsAlarmManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService;->addAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 729
    return-void
.end method

.method private sendCheckNetWorkDelay(J)V
    .registers 8
    .param p1, "delayTime"    # J

    .line 228
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 229
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 231
    :cond_10
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_26

    .line 232
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 235
    :cond_26
    return-void
.end method

.method private sendInsertLogDelay(J)V
    .registers 8
    .param p1, "delayTime"    # J

    .line 238
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 239
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 241
    :cond_10
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_23

    .line 242
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 244
    :cond_23
    return-void
.end method

.method private sendIntentToIBS(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.server.action_google_net_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method private setGMSLocationProviderChangeReceiverState(I)V
    .registers 7
    .param p1, "state"    # I

    .line 1054
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_5

    return-void

    .line 1056
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1057
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .local v1, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1059
    const-string v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGMSLocationProviderChangeReceiverState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_31

    .line 1062
    nop

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_35

    .line 1060
    :catch_31
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1063
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method private setGmsMultiUserWorkAllow(Z)V
    .registers 7
    .param p1, "allow"    # Z

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGmsMultiUserWorkAllow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_27

    .line 804
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_27

    .line 805
    const-string v0, "failed to get NetworkManagementService instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 810
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 811
    .local v2, "i":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 812
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_4b} :catch_62
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_4b} :catch_4c

    .line 813
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_2d

    .line 816
    :catch_4c
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 814
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_62
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_77
    nop

    .line 819
    :goto_78
    return-void
.end method

.method private setGmsNetWorkAllow(Z)V
    .registers 6
    .param p1, "allow"    # Z

    .line 775
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 776
    return-void

    .line 777
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGmsNetworkAllow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_2e

    .line 779
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 780
    const-string v0, "failed to get NetworkManagementService instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return-void

    .line 785
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v0, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 786
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v0, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 789
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v0, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 790
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v0, v2, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 791
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_64
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_4d} :catch_4e

    goto :goto_79

    .line 794
    :catch_4e
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 792
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_64
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_79
    nop

    .line 797
    :goto_7a
    return-void
.end method

.method private setGmsNetWorkForceReset()V
    .registers 5

    .line 749
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "setGmsNetWorkForceReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_18

    .line 751
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_18

    .line 752
    const-string v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void

    .line 757
    :cond_18
    :try_start_18
    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v1, :cond_68

    .line 758
    const/4 v1, 0x1

    .line 759
    .local v1, "allow":Z
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 760
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 763
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    .line 764
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    .line 765
    invoke-direct {p0, v1}, Lcom/android/server/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3c} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_3c} :catch_3d

    goto :goto_68

    .line 769
    .end local v1    # "allow":Z
    :catch_3d
    move-exception v1

    .line 770
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 767
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_53
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_68
    :goto_68
    nop

    .line 772
    :goto_69
    return-void
.end method

.method private setWakeLockBlackListEnableDisable(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .line 701
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    .line 702
    return-void

    .line 703
    :cond_7
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_10

    .line 704
    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    .line 706
    :cond_10
    return-void
.end method

.method private updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1337
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1339
    const/4 v2, -0x1

    .line 1340
    .local v2, "gmsuid":I
    const/4 v3, -0x1

    .line 1341
    .local v3, "vendinguid":I
    const/4 v4, -0x1

    .line 1342
    .local v4, "configupdate":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get Multi userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GmsAlarmManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v5, -0x1

    if-le p1, v5, :cond_8a

    .line 1345
    :try_start_2b
    const-string v5, "com.google.android.gms"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v2, v5

    .line 1346
    const-string v5, "com.android.vending"

    invoke-virtual {v0, v5, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v3, v5

    .line 1347
    const-string v5, "com.google.android.configupdater"

    invoke-virtual {v0, v5, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 1349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gmsuid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " vendinguid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " configupdate = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_74} :catch_75

    .line 1356
    goto :goto_8a

    .line 1355
    :catch_75
    move-exception v5

    .line 1356
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8a
    :goto_8a
    return-object v1
.end method

.method private updateSCPMParametersFromDB()V
    .registers 3

    .line 1362
    sget-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    const-string v1, "GmsAlarmManager"

    if-eqz v0, :cond_c

    .line 1363
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_c
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1366
    return-void

    .line 1368
    :cond_13
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1369
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSCPMPolicyItemFromDB()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_30

    .line 1372
    :cond_2a
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for gmsnet"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :goto_30
    return-void
.end method


# virtual methods
.method public doDump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1508
    const-string v0, "  <GmsAlarmManager>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHongKongMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_19f

    :cond_52
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19f

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1516
    .local v1, "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiUidList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_8b

    .line 1518
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPolicyControlSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/GmsAlarmManager;->dumpNetStats(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1528
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckinServerUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    .end local v1    # "url":Ljava/lang/String;
    goto :goto_17d

    .line 1531
    :cond_19f
    return-void
.end method

.method public init(Lcom/android/server/AlarmManagerService;)V
    .registers 8
    .param p1, "alarmService"    # Lcom/android/server/AlarmManagerService;

    .line 195
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_b9

    :cond_8
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b9

    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x1

    const-string v2, "GmsAlarmManager"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 197
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v0, Lcom/android/server/GmsAlarmManager$GmsHandler;

    sget-object v1, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    .line 199
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    .line 200
    :cond_2e
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    .line 201
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    const-string v2, "checkin.gstatic.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    .line 203
    new-instance v0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    .line 204
    new-instance v0, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

    .line 205
    new-instance v0, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    .line 206
    new-instance v0, Lcom/android/server/GmsAlarmManager$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$SCPMReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/GmsAlarmManager$SCPMReceiver;

    .line 207
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v3, "com.samsung.android.server.action_insert_log"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    .line 217
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 219
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    .line 220
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    .line 221
    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    .line 222
    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    .line 223
    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    .line 225
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_b9
    return-void
.end method

.method public initGmsState()V
    .registers 2

    .line 1083
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_b

    .line 1085
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    .line 1088
    :cond_b
    return-void
.end method

.method maxTriggerTime(JJJ)J
    .registers 13
    .param p1, "now"    # J
    .param p3, "triggerAtTime"    # J
    .param p5, "interval"    # J

    .line 368
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_9

    .line 369
    sub-long v0, p3, p1

    goto :goto_a

    .line 370
    :cond_9
    move-wide v0, p5

    :goto_a
    nop

    .line 371
    .local v0, "futurity":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 372
    const-wide/16 v0, 0x0

    .line 374
    :cond_13
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    add-long/2addr v2, p3

    return-wide v2
.end method

.method public parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;

    .line 1294
    const-string v0, "GmsAlarmManager"

    const-string v1, ""

    .line 1295
    .local v1, "ipTemp":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v2, "ipTempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GMS-CORE] parseHostAndSetUrlFirewallRule host = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 1299
    .local v3, "address":[Ljava/net/InetAddress;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    array-length v5, v3

    if-ge v4, v5, :cond_3b

    .line 1300
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1301
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1304
    .end local v4    # "i":I
    :cond_3b
    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_4f

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 1305
    :cond_4f
    const-string v4, "[GMS-CORE] parseHostAndSetUrlFirewallRule setUrlFirewallRule"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_68
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_68} :catch_69

    .line 1313
    .end local v3    # "address":[Ljava/net/InetAddress;
    :cond_68
    goto :goto_6d

    .line 1311
    :catch_69
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1314
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :goto_6d
    return-void
.end method

.method public schedulingGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 20
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 325
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v7, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_b

    .line 326
    return-void

    .line 328
    :cond_b
    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_13

    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_b9

    :cond_13
    iget v0, v7, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b9

    if-eqz v8, :cond_b9

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b9

    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    if-nez v0, :cond_24

    goto/16 :goto_b9

    .line 330
    :cond_24
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v7, v0}, Lcom/android/server/GmsAlarmManager;->isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 331
    const/16 v0, 0xc

    move v9, v0

    .local v0, "factor":I
    goto :goto_3a

    .line 332
    .end local v0    # "factor":I
    :cond_30
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v7, v0}, Lcom/android/server/GmsAlarmManager;->isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 333
    const/4 v0, 0x6

    move v9, v0

    .line 338
    .local v9, "factor":I
    :goto_3a
    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v0, :cond_b7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "schedulingGmsAlarms:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GmsAlarmManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 341
    .local v10, "nowElapsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 342
    .local v12, "currentTime":J
    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-gt v0, v1, :cond_63

    move-wide v2, v12

    goto :goto_64

    :cond_63
    move-wide v2, v10

    :goto_64
    move-wide v14, v2

    .line 343
    .local v14, "now":J
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v2, v14

    int-to-long v4, v9

    const-wide/32 v16, 0x36ee80

    mul-long v4, v4, v16

    cmp-long v0, v2, v4

    if-lez v0, :cond_73

    .line 344
    return-void

    .line 346
    :cond_73
    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-gt v0, v1, :cond_80

    .line 347
    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v12

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_88

    .line 349
    :cond_80
    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v10

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 351
    :goto_88
    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v10

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 354
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9b

    .line 356
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .local v0, "maxElapsed":J
    goto :goto_b3

    .line 358
    .end local v0    # "maxElapsed":J
    :cond_9b
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a7

    .line 359
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v0, v2

    goto :goto_b2

    .line 360
    :cond_a7
    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/GmsAlarmManager;->maxTriggerTime(JJJ)J

    move-result-wide v0

    :goto_b2
    nop

    .line 362
    .restart local v0    # "maxElapsed":J
    :goto_b3
    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 364
    .end local v0    # "maxElapsed":J
    .end local v10    # "nowElapsed":J
    .end local v12    # "currentTime":J
    .end local v14    # "now":J
    :cond_b7
    return-void

    .line 336
    .end local v9    # "factor":I
    :cond_b8
    return-void

    .line 328
    :cond_b9
    :goto_b9
    return-void
.end method

.method public setUrlFirewallRule(ZLjava/util/ArrayList;)V
    .registers 8
    .param p1, "isDeleteRule"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1319
    .local p2, "ipLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_58

    const-string v1, "GmsAlarmManager"

    if-nez v0, :cond_12

    .line 1320
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1321
    const-string v0, "failed to get NetworkManagementService instance"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1325
    :cond_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1326
    .local v2, "ip":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GMS-CORE] setUrlFirewallRule,ip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isDeleteRule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mGmsPkgUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v3, v4, v2, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    .line 1328
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v3, v4, v2, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_56} :catch_58

    .line 1329
    .end local v2    # "ip":Ljava/lang/String;
    goto :goto_16

    .line 1332
    :cond_57
    goto :goto_5c

    .line 1330
    :catch_58
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1333
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5c
    return-void
.end method

.method public skipGmsAlarms(Landroid/app/PendingIntent;)Z
    .registers 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 385
    if-eqz p1, :cond_2a

    .line 386
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    .local v0, "tIntent":Landroid/content/Intent;
    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 389
    .local v1, "comp":Landroid/content/ComponentName;
    :goto_1a
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.checkin.CheckinServiceReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 390
    const/4 v2, 0x1

    return v2

    .line 394
    .end local v0    # "tIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public skipGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 380
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    if-eqz v0, :cond_14

    goto :goto_1b

    .line 381
    :cond_14
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/GmsAlarmManager;->skipGmsAlarms(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    .line 380
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public updateSettings()V
    .registers 5

    .line 1091
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 1092
    new-instance v0, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    .line 1093
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1094
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSettingsValueFromDB()V

    .line 1096
    :cond_23
    return-void
.end method
