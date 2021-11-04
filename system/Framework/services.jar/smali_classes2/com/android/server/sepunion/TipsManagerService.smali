.class public Lcom/android/server/sepunion/TipsManagerService;
.super Lcom/samsung/android/sepunion/ITipsManager$Stub;
.source "TipsManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/TipsManagerService$TipsHandler;,
        Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;,
        Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_GALAXY_TIPS_NETWORK_GRANTED:Ljava/lang/String; = "samsung.galaxy.tips.network_granted"

.field private static final ACTION_GALAXY_TIPS_TERMINATED:Ljava/lang/String; = "samsung.galaxy.tips.application.terminated"

.field private static final APP_SUPPORT_TIPS_XML_NAME:Ljava/lang/String; = "tips_list"

.field private static final EXTRA_CUSTOM_INVENTORY:Ljava/lang/String; = "custom_inventory"

.field private static final EXTRA_DATA:Ljava/lang/String; = "tips_extras"

.field private static final EXTRA_DATA2:Ljava/lang/String; = "tips_extras2"

.field private static final EXTRA_DATA3:Ljava/lang/String; = "tips_extras3"

.field private static final EXTRA_DATA4:Ljava/lang/String; = "tips_extras4"

.field private static final EXTRA_TIPS_ACTION:Ljava/lang/String; = "tips_action"

.field private static final EXTRA_TIPS_CONDITION:Ljava/lang/String; = "tips_condition"

.field private static final EXTRA_TIPS_DELETE_ACTION:Ljava/lang/String; = "tips_delete_action"

.field private static final EXTRA_TIPS_ICON:Ljava/lang/String; = "tips_app_icon"

.field private static final EXTRA_TIPS_ID:Ljava/lang/String; = "tips_id"

.field private static final EXTRA_TIPS_TEXT:Ljava/lang/String; = "tips_text"

.field private static final EXTRA_TIPS_TITLE:Ljava/lang/String; = "tips_title"

.field private static final FOTA_READY_EXTRA:Ljava/lang/String; = "fota_extras"

.field private static final FOTA_READY_INTENT:Landroid/content/Intent;

.field private static final MSG_CHECK_REGULAR_HOUR:I = 0x2713

.field private static final MSG_FOTA_DONE:I = 0x5

.field private static final MSG_FOTA_READY:I = 0x4

.field private static final MSG_GET_CERTAIN_CONTENT:I = 0x7

.field private static final MSG_INITIAL_TIMER_START:I = 0x2714

.field private static final MSG_NEW_DATA_UPDATED:I = 0x1

.field private static final MSG_REGULAR_TIPS_NOTIFICATION:I = 0x6

.field private static final MSG_SHOW_EXT_TIPS:I = 0x9

.field private static final MSG_SHOW_HEADUP_NOTIFICATION:I = 0x2

.field private static final MSG_SHOW_JIT_HEADUP_NOTIFICATION:I = 0x8

.field private static final MSG_START_TIPS_HUN:I = 0x2711

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_MONTH:I = -0x65813800

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:I = 0x240c8400

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SETTING_TIPS_NETWORK_GRANTED:Ljava/lang/String; = "gtips_network_granted"

.field private static final SETTINS_TIPS_FOTA_INVENTORY_NAME:Ljava/lang/String; = "tips_fota_inventory"

.field private static final TAG:Ljava/lang/String;

.field private static final TIPS_FOTA_CHECK_URL:Ljava/lang/String; = "https://fota-cloud-dn.ospserver.net/firmware/"

.field private static final TIPS_HUN_CALL_COUNT:I = 0x5

.field private static final TIPS_HUN_RETRY_MAX_COUNT:I = 0x3

.field private static final TIPS_INTENT_SERVICE_NAME:Ljava/lang/String; = ".TipsIntentService"

.field private static final TIPS_MAIN_ACTIVITY_NAME:Ljava/lang/String; = ".TipsMainActivity"

.field private static final TIPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.tips"

.field private static final TIPS_SMARTITEM_DETAIL_ACTIVITY_NAME:Ljava/lang/String; = ".TipsSmartItemDetailActivity"

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;


# instance fields
.field private mBootupCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mDialCount:I

.field private mHUNDisplayCount:I

.field private final mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

.field private mTipsHUNAlreadyShown:Z

.field private mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

.field private mTipsNetworkGranted:Z

.field private mTipsPackageExist:Z

.field private mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

.field private mWaitingCallEnd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 70
    const-class v0, Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.samsung.tips.FOTA_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/sepunion/TipsManagerService;->FOTA_READY_INTENT:Landroid/content/Intent;

    .line 265
    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/sepunion/ITipsManager$Stub;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    .line 101
    iput-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 224
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    .line 225
    sget-object v2, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    const-string v3, "[GalaxyTips] TipsManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_23
    const-string v2, "com.samsung.android.app.tips"

    .line 230
    .local v2, "strTipsPkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 233
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tips_trigger_count"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    .line 235
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_45

    .line 236
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    .line 238
    :cond_45
    iget-object v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "gtips_network_granted"

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v0, :cond_56

    .line 239
    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    .line 242
    :cond_56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.samsung.tips.FOTA_READY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v4, "samsung.galaxy.tips.application.terminated"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v4, "samsung.galaxy.tips.network_granted"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-boolean v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    if-nez v4, :cond_84

    .line 250
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    :cond_84
    iget-object v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipReceiver:Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 256
    new-instance v4, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v4, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsServiceThread:Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;

    .line 257
    invoke-virtual {v4}, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->start()V
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_9a} :catch_9b

    .line 260
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "strTipsPkg":Ljava/lang/String;
    goto :goto_9e

    .line 258
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_9b
    move-exception v0

    .line 259
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    .line 261
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_9e
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    invoke-direct {p0}, Lcom/android/server/sepunion/TipsManagerService;->isFOTAEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/sepunion/TipsManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/sepunion/TipsManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mWaitingCallEnd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return v0
.end method

.method static synthetic access$304(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/sepunion/TipsManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;
    .param p1, "x1"    # Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    .line 67
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    return-object p1
.end method

.method static synthetic access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 67
    invoke-static/range {p0 .. p6}, Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/TipsManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/android/server/sepunion/TipsManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/TipsManagerService;

    .line 67
    iget v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mHUNDisplayCount:I

    return v0
.end method

.method private isFOTAEnabled()Z
    .registers 20

    .line 437
    move-object/from16 v1, p0

    const-string/jumbo v0, "ro.build.PDA"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "currentVersion":Ljava/lang/String;
    const-string v3, ""

    .line 439
    .local v3, "serverVersion":Ljava/lang/String;
    const-string v4, ""

    .line 440
    .local v4, "associativeVersion":Ljava/lang/String;
    const-string v5, ""

    .line 441
    .local v5, "serverOSVerion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 442
    .local v6, "retVal":Z
    const/4 v7, 0x4

    .line 443
    .local v7, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "https://fota-cloud-dn.ospserver.net/firmware/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/TipsManagerService;->loadSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sepunion/TipsManagerService;->readModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Lcom/android/server/sepunion/TipsManagerService;->getTarget(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, "serverAddr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 447
    .local v10, "cnVasUrl":Ljava/lang/String;
    const/4 v11, 0x0

    .line 450
    .local v11, "connection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x1

    :try_start_42
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[GalaxyTips]Check FOTA Enable="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 453
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v11, v0

    .line 454
    const/16 v0, 0x7530

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 455
    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 456
    invoke-virtual {v11, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 458
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v15, 0xc8

    if-ne v15, v0, :cond_154

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    .line 464
    .local v15, "response":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8c
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_8c} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_8c} :catch_17b
    .catchall {:try_start_42 .. :try_end_8c} :catchall_178

    move-object v12, v0

    .line 465
    .local v12, "reader":Ljava/io/BufferedReader;
    :goto_8d
    :try_start_8d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "line":Ljava/lang/String;
    if-eqz v0, :cond_98

    .line 466
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_148

    goto :goto_8d

    .line 468
    :cond_98
    :try_start_98
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 470
    .end local v12    # "reader":Ljava/io/BufferedReader;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 471
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 472
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v16, v0

    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v16, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 474
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_b5
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_b5} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b5} :catch_17b
    .catchall {:try_start_98 .. :try_end_b5} :catchall_178

    .line 475
    .local v0, "eventType":I
    :goto_b5
    const/4 v1, 0x1

    if-eq v0, v1, :cond_13c

    .line 476
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c0

    move/from16 v17, v0

    move-object/from16 v18, v3

    goto :goto_119

    .line 478
    :cond_c0
    :try_start_c0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "tagName":Ljava/lang/String;
    move/from16 v17, v0

    .end local v0    # "eventType":I
    .local v17, "eventType":I
    const-string/jumbo v0, "latest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 480
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-nez v0, :cond_e6

    .line 481
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_d7} :catch_137
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d7} :catch_133
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_12e

    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .local v18, "serverVersion":Ljava/lang/String;
    :try_start_d9
    const-string v3, "[GalaxyTips]This model doesn\'t have any fota binary releae history."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_de} :catch_129
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_de} :catch_125
    .catchall {:try_start_d9 .. :try_end_de} :catchall_120

    .line 482
    nop

    .line 498
    if-eqz v11, :cond_e4

    .line 499
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_e4
    const/4 v3, 0x0

    return v3

    .line 484
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    :cond_e6
    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_e9
    invoke-interface {v12, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 485
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .end local v18    # "serverVersion":Ljava/lang/String;
    .local v0, "serverVersion":Ljava/lang/String;
    goto :goto_11b

    .line 486
    .end local v0    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    :cond_f4
    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_115
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_115} :catch_129
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_115} :catch_125
    .catchall {:try_start_e9 .. :try_end_115} :catchall_120

    move-object v4, v0

    move-object/from16 v3, v18

    .end local v4    # "associativeVersion":Ljava/lang/String;
    .local v0, "associativeVersion":Ljava/lang/String;
    goto :goto_11b

    .line 491
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v17    # "eventType":I
    .end local v18    # "serverVersion":Ljava/lang/String;
    .local v0, "eventType":I
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .restart local v4    # "associativeVersion":Ljava/lang/String;
    :cond_119
    :goto_119
    move-object/from16 v3, v18

    .end local v0    # "eventType":I
    .restart local v17    # "eventType":I
    :goto_11b
    :try_start_11b
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_11f
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_11f} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11f} :catch_17b
    .catchall {:try_start_11b .. :try_end_11f} :catchall_178

    .end local v17    # "eventType":I
    .restart local v0    # "eventType":I
    goto :goto_b5

    .line 498
    .end local v0    # "eventType":I
    .end local v3    # "serverVersion":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "response":Ljava/lang/StringBuilder;
    .end local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    :catchall_120
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_1fc

    .line 495
    :catch_125
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_17c

    .line 493
    :catch_129
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_1fa

    .line 498
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    :catchall_12e
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    goto/16 :goto_1fc

    .line 495
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    :catch_133
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    goto :goto_17c

    .line 493
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    :catch_137
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "serverVersion":Ljava/lang/String;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    goto/16 :goto_1fa

    .line 475
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v0    # "eventType":I
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "response":Ljava/lang/StringBuilder;
    .restart local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_13c
    move/from16 v17, v0

    move-object/from16 v18, v3

    .line 498
    .end local v0    # "eventType":I
    .end local v3    # "serverVersion":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "response":Ljava/lang/StringBuilder;
    .end local v16    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v18    # "serverVersion":Ljava/lang/String;
    if-eqz v11, :cond_145

    .line 499
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 503
    :cond_145
    move-object/from16 v3, v18

    goto :goto_19c

    .line 464
    .end local v18    # "serverVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .local v12, "reader":Ljava/io/BufferedReader;
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "response":Ljava/lang/StringBuilder;
    :catchall_148
    move-exception v0

    move-object v1, v0

    :try_start_14a
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_153

    :catchall_14e
    move-exception v0

    move-object v13, v0

    :try_start_150
    invoke-virtual {v1, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "serverVersion":Ljava/lang/String;
    .end local v4    # "associativeVersion":Ljava/lang/String;
    .end local v5    # "serverOSVerion":Ljava/lang/String;
    .end local v6    # "retVal":Z
    .end local v7    # "count":I
    .end local v9    # "serverAddr":Ljava/lang/String;
    .end local v10    # "cnVasUrl":Ljava/lang/String;
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    :goto_153
    throw v1

    .line 459
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "response":Ljava/lang/StringBuilder;
    .restart local v2    # "currentVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .restart local v4    # "associativeVersion":Ljava/lang/String;
    .restart local v5    # "serverOSVerion":Ljava/lang/String;
    .restart local v6    # "retVal":Z
    .restart local v7    # "count":I
    .restart local v9    # "serverAddr":Ljava/lang/String;
    .restart local v10    # "cnVasUrl":Ljava/lang/String;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    :cond_154
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "status code "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " != "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "serverVersion":Ljava/lang/String;
    .end local v4    # "associativeVersion":Ljava/lang/String;
    .end local v5    # "serverOSVerion":Ljava/lang/String;
    .end local v6    # "retVal":Z
    .end local v7    # "count":I
    .end local v9    # "serverAddr":Ljava/lang/String;
    .end local v10    # "cnVasUrl":Ljava/lang/String;
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    throw v0
    :try_end_178
    .catch Ljava/lang/RuntimeException; {:try_start_150 .. :try_end_178} :catch_1f9
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_178} :catch_17b
    .catchall {:try_start_150 .. :try_end_178} :catchall_178

    .line 498
    .end local v14    # "url":Ljava/net/URL;
    .restart local v2    # "currentVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .restart local v4    # "associativeVersion":Ljava/lang/String;
    .restart local v5    # "serverOSVerion":Ljava/lang/String;
    .restart local v6    # "retVal":Z
    .restart local v7    # "count":I
    .restart local v9    # "serverAddr":Ljava/lang/String;
    .restart local v10    # "cnVasUrl":Ljava/lang/String;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    :catchall_178
    move-exception v0

    goto/16 :goto_1fc

    .line 495
    :catch_17b
    move-exception v0

    .line 496
    .local v0, "ex":Ljava/lang/Exception;
    :goto_17c
    :try_start_17c
    sget-object v1, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[GalaxyTips]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_17c .. :try_end_196} :catchall_178

    .line 498
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v11, :cond_19c

    .line 499
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 503
    :cond_19c
    :goto_19c
    if-eqz v3, :cond_1f0

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a6

    const/4 v1, 0x0

    goto :goto_1f1

    .line 508
    :cond_1a6
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 509
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "binaryStr":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1b7

    .line 512
    const/4 v1, 0x0

    aget-object v3, v0, v1

    goto :goto_1b9

    .line 514
    :cond_1b7
    const/4 v1, 0x0

    return v1

    .line 517
    .end local v0    # "binaryStr":[Ljava/lang/String;
    :cond_1b9
    :goto_1b9
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GalaxyTips]check Fota current="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ro.build.version.release"

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    lastest fota binary="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1ee

    .line 519
    const/4 v1, 0x1

    return v1

    .line 521
    :cond_1ee
    const/4 v1, 0x0

    return v1

    .line 503
    :cond_1f0
    const/4 v1, 0x0

    .line 504
    :goto_1f1
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->TAG:Ljava/lang/String;

    const-string v8, "[GalaxyTips]There\'s no proper new FOTA binary."

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v1

    .line 493
    :catch_1f9
    move-exception v0

    .line 494
    .local v0, "rex":Ljava/lang/RuntimeException;
    :goto_1fa
    nop

    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "serverVersion":Ljava/lang/String;
    .end local v4    # "associativeVersion":Ljava/lang/String;
    .end local v5    # "serverOSVerion":Ljava/lang/String;
    .end local v6    # "retVal":Z
    .end local v7    # "count":I
    .end local v9    # "serverAddr":Ljava/lang/String;
    .end local v10    # "cnVasUrl":Ljava/lang/String;
    .end local v11    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    :try_start_1fb
    throw v0
    :try_end_1fc
    .catchall {:try_start_1fb .. :try_end_1fc} :catchall_178

    .line 498
    .end local v0    # "rex":Ljava/lang/RuntimeException;
    .restart local v2    # "currentVersion":Ljava/lang/String;
    .restart local v3    # "serverVersion":Ljava/lang/String;
    .restart local v4    # "associativeVersion":Ljava/lang/String;
    .restart local v5    # "serverOSVerion":Ljava/lang/String;
    .restart local v6    # "retVal":Z
    .restart local v7    # "count":I
    .restart local v9    # "serverAddr":Ljava/lang/String;
    .restart local v10    # "cnVasUrl":Ljava/lang/String;
    .restart local v11    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/sepunion/TipsManagerService;
    :goto_1fc
    if-eqz v11, :cond_201

    .line 499
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 501
    :cond_201
    throw v0
.end method

.method private loadSalesCode()Ljava/lang/String;
    .registers 5

    .line 525
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "ril.product_code"

    if-eqz v2, :cond_18

    .line 527
    const-string v2, "BTU"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_18
    const-string v2, "MKT/KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 530
    const-string v1, "KT"

    return-object v1

    .line 532
    :cond_23
    const-string v2, "MLG/LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 533
    const-string v1, "LG"

    return-object v1

    .line 535
    :cond_2e
    const-string v2, "MSK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 536
    const-string v1, "SKT"

    return-object v1

    .line 538
    :cond_39
    const-string v2, "BST/SPR/VMU/XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 539
    const-string v1, "SPR"

    return-object v1

    .line 541
    :cond_44
    const-string v2, "TFG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 542
    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "productCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5e

    goto :goto_70

    .line 546
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "localCode":Ljava/lang/String;
    const-string v3, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 548
    return-object v2

    .line 544
    .end local v2    # "localCode":Ljava/lang/String;
    :cond_70
    :goto_70
    return-object v0

    .line 550
    .end local v1    # "productCode":Ljava/lang/String;
    :cond_71
    return-object v0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 12
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 576
    if-nez p2, :cond_6

    .line 577
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 578
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 579
    return-void

    .line 581
    :cond_10
    :goto_10
    sget-object v0, Lcom/android/server/sepunion/TipsManagerService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v0

    .line 582
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 583
    .local v1, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 584
    nop

    .end local v1    # "time":J
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 328
    if-eqz p3, :cond_16c

    array-length v0, p3

    if-lez v0, :cond_16c

    .line 329
    const/4 v0, 0x0

    aget-object v0, p3, v0

    .line 331
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v1, "notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string/jumbo v3, "tips_extras"

    const-string v4, "com.samsung.android.app.tips.TipsIntentService"

    const-string v5, "com.samsung.android.app.tips"

    if-eqz v1, :cond_2d

    .line 332
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v1, "new_intent":Landroid/content/Intent;
    nop

    .line 334
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 338
    return-void

    .line 339
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_2d
    const-string/jumbo v1, "refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_4b

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 341
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 342
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 346
    return-void

    .line 347
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_4b
    const-string/jumbo v1, "getcustom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 349
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 350
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const-string v2, "com.samsung.android.app.tips.TipsSmartItemDetailActivity"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    aget-object v2, p3, v6

    const-string v3, "custom_inventory"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void

    .line 357
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_76
    const-string v1, "fotaready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_93

    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 360
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 364
    return-void

    .line 365
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_93
    const-string v1, "fotadone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 366
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 367
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 368
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 372
    return-void

    .line 373
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_b0
    const-string/jumbo v1, "showrecent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 374
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 375
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 376
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const/4 v2, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 380
    return-void

    .line 381
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_ce
    const-string/jumbo v1, "showcontent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v8, "tips_extras2"

    if-eqz v1, :cond_f4

    .line 382
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 383
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 384
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const/4 v2, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    aget-object v2, p3, v6

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 389
    return-void

    .line 390
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_f4
    const-string/jumbo v1, "showjit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x3

    if-eqz v1, :cond_129

    .line 391
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 392
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 393
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    aget-object v3, p3, v6

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    aget-object v2, p3, v2

    const-string/jumbo v3, "tips_extras4"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    aget-object v2, p3, v9

    const-string/jumbo v3, "tips_extras3"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 400
    return-void

    .line 401
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_129
    const-string/jumbo v1, "showtip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 402
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 403
    .restart local v1    # "new_intent":Landroid/content/Intent;
    nop

    .line 404
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    aget-object v3, p3, v6

    const-string/jumbo v4, "tips_id"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    aget-object v2, p3, v2

    const-string/jumbo v3, "tips_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    aget-object v2, p3, v9

    const-string/jumbo v3, "tips_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    aget-object v2, p3, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "tips_condition"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    iget-object v2, p0, Lcom/android/server/sepunion/TipsManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 414
    return-void

    .line 419
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "new_intent":Landroid/content/Intent;
    :cond_16c
    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v1, "[Galaxy Tips]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    iget-boolean v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-nez v1, :cond_180

    .line 423
    const-string v0, "Galaxy Tips is not exist this device"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    return-void

    .line 427
    :cond_180
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const-string v0, "ETC Values"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const-string v0, "=========================================================================="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v0, "mTipsNetworkGranted = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsNetworkGranted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 431
    const-string/jumbo v0, "mTipsHUNAlreadyShown = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHUNAlreadyShown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 432
    const-string/jumbo v0, "mDialCount = "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mDialCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 433
    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FOTA_CLIENT_TEST"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const-string/jumbo v0, "version.test.xml"

    goto :goto_16

    :cond_13
    const-string/jumbo v0, "version.xml"

    :goto_16
    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"    # I

    .line 286
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_19

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mBootupCompleted:Z

    .line 289
    iget-boolean v0, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsPackageExist:Z

    if-eqz v0, :cond_19

    .line 290
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0xea60

    invoke-static/range {v1 .. v7}, Lcom/android/server/sepunion/TipsManagerService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 293
    :cond_19
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 318
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 277
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 282
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 272
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 298
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 303
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 308
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 313
    return-void
.end method

.method public readModelName()Ljava/lang/String;
    .registers 4

    .line 554
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SyncML_ReplaceModelNumber"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 556
    return-object v0

    .line 558
    :cond_13
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 559
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 560
    return-object v0

    .line 562
    :cond_1c
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 564
    return-object v0

    .line 566
    :cond_2c
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
