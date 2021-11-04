.class public Lcom/android/server/am/FreecessTrigger;
.super Ljava/lang/Object;
.source "FreecessTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_SMARTSWITCH_FINISHED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

.field private static final ACTION_SMARTSWITCH_ONGOING:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

.field private static final ACTION_SMARTSWITCH_STARTED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

.field private static final SCPM_BROADCAST_MESSAGE_FREECESS:Ljava/lang/String; = "sec.app.policy.UPDATE.ssrm_update_freecess"

.field static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/server/am/FreecessTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/android/server/am/FreecessTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$1;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$2;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 210
    new-instance v0, Lcom/android/server/am/FreecessTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$3;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/FreecessTrigger$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/FreecessTrigger$1;

    .line 36
    invoke-direct {p0}, Lcom/android/server/am/FreecessTrigger;-><init>()V

    return-void
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 71
    :catch_e
    move-exception v0

    .line 73
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/FreecessTrigger;
    .registers 1

    .line 55
    # getter for: Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->INSTANCE:Lcom/android/server/am/FreecessTrigger;
    invoke-static {}, Lcom/android/server/am/FreecessTrigger$FreecessTriggerHolder;->access$100()Lcom/android/server/am/FreecessTrigger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->unregisterReceiver()V

    .line 66
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/am/FreecessTrigger;->registerReceiver()V

    .line 61
    return-void
.end method

.method public registerReceiver()V
    .registers 9

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "sec.app.policy.UPDATE.ssrm_update_freecess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 89
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    :cond_42
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 93
    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v1, "pkgIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v2, "smartSwitchFilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const-string v6, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public unregisterReceiver()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    return-void
.end method
