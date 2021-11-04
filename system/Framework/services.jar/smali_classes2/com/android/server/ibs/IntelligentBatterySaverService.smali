.class public Lcom/android/server/ibs/IntelligentBatterySaverService;
.super Landroid/os/IIntelligentBatterySaverService$Stub;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;,
        Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;,
        Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.ibs"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final FAST_DRAIN_POLICY_ENABLE:I = 0x1

.field private static final FAST_DRAIN_POLICY_ITEM:Ljava/lang/String; = "fast_drain_policy"

.field public static final GOOGLE_APP_POLICY_ENABLE:I = 0x2

.field private static final GOOGLE_APP_POLICY_ITEM:Ljava/lang/String; = "google_app_policy"

.field private static final IBS_GOOGLEAPPS_CATEGORY:Ljava/lang/String; = "googleapps"

.field private static final IBS_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field private static final ITEM:Ljava/lang/String; = "item"

.field public static final MASK:I = 0x3

.field private static final MSG_CHECK_SCPM_PARAMETERES:I = 0x1

.field private static final MSG_FORCE_APPLY_SCPM_POLICY:I = 0x4

.field private static final MSG_FORCE_RESET_EVERY_POLICY:I = 0x2

.field private static final MSG_GET_SCPM_PARAMETERES:I = 0x3

.field private static final POLICY_ENABLE:Ljava/lang/String; = "true"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "ibs"

.field private static final TAG:Ljava/lang/String; = "IntelligentBatterySaverService"

.field public static mIBSEnable:Z

.field public static mPolicyControlSwitch:I


# instance fields
.field public final SCPM_URI_IBS:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field private mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

.field public mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

.field private mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

.field private mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

.field private mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

.field private mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

.field private mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

.field private mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

.field private mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

.field private mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const/4 v0, 0x3

    sput v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->DEBUG_SCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 89
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/ibs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->SCPM_URI_IBS:Landroid/net/Uri;

    .line 90
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 101
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v0, "sys.config.ibs.enable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntelligentBatterySaverService"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    sget-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz v0, :cond_83

    .line 107
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    .line 108
    invoke-static {}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 109
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverSurvey;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    .line 110
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGather;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGather;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Lcom/android/server/ibs/IntelligentBatterySaverLogger;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    .line 111
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    .line 112
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSurvey:Lcom/android/server/ibs/IntelligentBatterySaverSurvey;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/IntelligentBatterySaverLogger;Lcom/android/server/ibs/IntelligentBatterySaverSurvey;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 113
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    .line 114
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->onBootCompleted()V

    .line 118
    :cond_83
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    invoke-direct {v0, p1}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    .line 122
    new-instance v0, Lcom/android/server/ibs/IbsQuickDim;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/ibs/IbsQuickDim;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    .line 125
    new-instance v0, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    iget-object v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;-><init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->updateSCPMParametersFromDB()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->forceResetEveryPolicy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->getSCPMPolicyItemFromDB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->forceApplyEveryPolicy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 38
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    return-object v0
.end method

.method private forceApplyEveryPolicy()V
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->forceApplyUpdatedSCPMPolicy()V

    .line 326
    return-void
.end method

.method private forceResetEveryPolicy()V
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendForceEixtFastDrainRestrictionMessage()V

    .line 321
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogAppNetworkForceReset()V

    .line 322
    return-void
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 13

    .line 236
    const-string v0, "IntelligentBatterySaverService"

    const/4 v1, 0x0

    .line 237
    .local v1, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "item"

    const-string v3, "category"

    const-string v4, "data1"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "projection":[Ljava/lang/String;
    :try_start_e
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->SCPM_URI_IBS:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1f

    move-object v1, v2

    .line 243
    goto :goto_3b

    .line 240
    :catch_1f
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3b
    if-eqz v1, :cond_102

    .line 245
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 246
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 247
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "item":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "category":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "data1":Ljava/lang/String;
    const-string/jumbo v9, "switch"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e6

    .line 251
    sget-boolean v9, Lcom/android/server/ibs/IntelligentBatterySaverService;->DEBUG_SCPM:Z

    if-eqz v9, :cond_89

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " item = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " switch category = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ,scpm url: data1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_89
    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x729c77a4

    if-eq v10, v11, :cond_a4

    const v11, 0x4957bad6

    if-eq v10, v11, :cond_99

    :cond_98
    goto :goto_ad

    :cond_99
    const-string/jumbo v10, "google_app_policy"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_98

    move v9, v4

    goto :goto_ad

    :cond_a4
    const-string v10, "fast_drain_policy"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_98

    move v9, v2

    :goto_ad
    const-string/jumbo v10, "true"

    if-eqz v9, :cond_c8

    if-eq v9, v4, :cond_b5

    goto :goto_e5

    .line 264
    :cond_b5
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 265
    sget v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    or-int/2addr v2, v6

    sput v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    goto :goto_e5

    .line 267
    :cond_c1
    sget v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x3

    sput v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    .line 269
    goto :goto_e5

    .line 255
    :cond_c8
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 256
    sget v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    or-int/2addr v2, v4

    sput v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    .line 257
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v2, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    goto :goto_e5

    .line 259
    :cond_d9
    sget v4, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    and-int/lit8 v4, v4, -0x2

    sput v4, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    .line 260
    iget-object v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v4, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    .line 262
    nop

    .line 270
    :goto_e5
    goto :goto_fc

    .line 272
    :cond_e6
    const-string/jumbo v2, "googleapps"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 273
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->addPackageNameGoogleAppsList(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "category":Ljava/lang/String;
    .end local v8    # "data1":Ljava/lang/String;
    :cond_fc
    :goto_fc
    goto/16 :goto_3d

    .line 277
    :cond_fe
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_107

    .line 279
    :cond_102
    const-string v2, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_107
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 12

    .line 209
    const-string v0, "IntelligentBatterySaverService"

    const/4 v1, 0x0

    .line 210
    .local v1, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "item"

    const-string v3, "category"

    const-string v4, "data1"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, "hasValidItem":Z
    :try_start_f
    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->SCPM_URI_IBS:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_20

    move-object v1, v3

    .line 217
    goto :goto_3c

    .line 214
    :catch_20
    move-exception v3

    .line 215
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

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3c
    if-eqz v1, :cond_69

    .line 219
    :cond_3e
    :goto_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 220
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 221
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "category":Ljava/lang/String;
    const-string/jumbo v3, "switch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string/jumbo v3, "googleapps"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_64

    .line 226
    .end local v0    # "category":Ljava/lang/String;
    :cond_63
    goto :goto_3e

    .line 223
    .restart local v0    # "category":Ljava/lang/String;
    :cond_64
    :goto_64
    const/4 v2, 0x1

    .line 228
    .end local v0    # "category":Ljava/lang/String;
    :cond_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    .line 230
    :cond_69
    const-string/jumbo v3, "hasValidItemFromDB error, no database!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_6f
    return v2
.end method

.method private init()V
    .registers 2

    .line 314
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mBootCompleteReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;

    .line 315
    new-instance v0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSCPMReceiver:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    .line 317
    return-void
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 11

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "cursorPolicy":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 184
    .local v1, "isNeedUpdate":Z
    sget-boolean v2, Lcom/android/server/ibs/IntelligentBatterySaverService;->DEBUG_SCPM:Z

    const-string v3, "IntelligentBatterySaverService"

    if-eqz v2, :cond_e

    .line 185
    const-string/jumbo v2, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 191
    goto :goto_27

    .line 189
    :catch_20
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    if-eqz v0, :cond_71

    .line 193
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 194
    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "policyName":Ljava/lang/String;
    const-string/jumbo v4, "policyVersion"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "policyVersion":Ljava/lang/String;
    const-string/jumbo v5, "ibs"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 197
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

    .line 198
    const/4 v1, 0x1

    .line 199
    goto :goto_6e

    .line 201
    .end local v2    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_6d
    goto :goto_29

    .line 202
    :cond_6e
    :goto_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_71
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method private onBootCompleted()V
    .registers 2

    .line 329
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->init()V

    .line 330
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGather:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGather;->init()V

    .line 331
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSSettingsObserver:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->init()V

    .line 332
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->init()V

    .line 333
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->init()V

    .line 334
    return-void
.end method

.method private updateSCPMParametersFromDB()V
    .registers 4

    .line 156
    sget-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->DEBUG_SCPM:Z

    const-string v1, "IntelligentBatterySaverService"

    if-eqz v0, :cond_c

    .line 157
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_c
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 160
    return-void

    .line 162
    :cond_13
    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 163
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 164
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 165
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_4a

    .line 167
    :cond_32
    sget v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3e

    .line 168
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    goto :goto_44

    .line 170
    :cond_3e
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setIBSFastDrainPolicyEnable(Z)V

    .line 172
    :goto_44
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for ibs, so do default"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_4a
    return-void
.end method


# virtual methods
.method public addBlockList(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ibs/IbsQuickDim;->addBlockList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 380
    sget-boolean v0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSEnable:Z

    if-eqz v0, :cond_38

    .line 381
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v0, "IBS Version: 1.0"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBS \'s mPolicyControlSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSGoogleAppPolicy:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->dumpIBSHistoryLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 389
    :cond_38
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mNetSpeedMonitor:Lcom/android/server/ibs/dnba/NetSpeedMonitor;

    if-eqz v0, :cond_3f

    .line 390
    invoke-virtual {v0, p2, p3}, Lcom/android/server/ibs/dnba/NetSpeedMonitor;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 393
    :cond_3f
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/ibs/IbsQuickDim;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    if-eqz v0, :cond_4b

    .line 396
    invoke-virtual {v0, p2, p3}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 399
    :cond_4b
    return-void
.end method

.method public getBlockList()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0}, Lcom/android/server/ibs/IbsQuickDim;->getBlockList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getGain()[J
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0}, Lcom/android/server/ibs/IbsQuickDim;->getGain()[J

    move-result-object v0

    return-object v0
.end method

.method public isSqdUiControlEnabled()Z
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0}, Lcom/android/server/ibs/IbsQuickDim;->getSQDUiControlEnable()Z

    move-result v0

    return v0
.end method

.method public removeBlockList(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ibs/IbsQuickDim;->removeBlockList(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSarrUiControlEnable(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .line 372
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->setSarrRuleSwitch(Z)V

    .line 374
    return-void
.end method

.method public setSqdUiControlEnabled(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .line 348
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "IntelligentBatterySaverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSQuickDim:Lcom/android/server/ibs/IbsQuickDim;

    invoke-virtual {v0, p1}, Lcom/android/server/ibs/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 350
    return-void
.end method
