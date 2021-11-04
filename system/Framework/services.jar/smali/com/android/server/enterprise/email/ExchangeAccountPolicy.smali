.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final FOCUS_PKG_NAME:Ljava/lang/String; = "com.samsung.android.focus"

.field private static final NOTE_AUTHORITY:Ljava/lang/String; = "note"

.field private static final PERMISSION_SMIME_CERTIFICATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

.field private mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;

    .line 150
    const-string v0, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 101
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 148
    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 182
    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1242
    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 152
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 155
    :try_start_24
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    .line 157
    const-string v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mSMIMEIntentReceiver:Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v3, "success to add receiver"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4d} :catch_4f

    .line 164
    nop

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_55

    .line 162
    :catch_4f
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Regist BroadCast failed : "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_55
    const/4 v2, 0x0

    .line 168
    .local v2, "containerId":I
    :try_start_56
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 169
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v4, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v3, :cond_7b

    .line 172
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7b

    .line 173
    const-string v5, "Enabling EAS ExchangeService"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_7b} :catch_7c

    .line 179
    .end local v2    # "containerId":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_7b
    goto :goto_82

    .line 177
    :catch_7c
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Constructor failed : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_82
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 92
    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 92
    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Z

    .line 92
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendSMIMEAliasResultIntent(JII)V

    return-void
.end method

.method private adminSatisfiesForceSMIMECertificateRules(IJZI)Z
    .registers 22
    .param p1, "adminUid"    # I
    .param p2, "accId"    # J
    .param p4, "set"    # Z
    .param p5, "type"    # I

    .line 2435
    move-object/from16 v0, p0

    move/from16 v1, p5

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "ExchangeAccountTable"

    const-string v5, "AccountId"

    const/4 v6, 0x0

    const-string v7, "adminUid"

    if-eqz p4, :cond_68

    .line 2437
    const/4 v8, 0x1

    .line 2441
    .local v8, "ret":Z
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v9

    .line 2443
    .local v9, "columns":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2444
    .local v10, "selectionValues":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2445
    .local v11, "userId":I
    invoke-static {v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#SelectClause#"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2448
    if-ne v1, v3, :cond_35

    .line 2449
    const-string v2, "(ForceSmimeCertForSigning=1 OR ForceSmimeCert=1)"

    .line 2451
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v10, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_42

    :cond_35
    if-ne v1, v2, :cond_3d

    .line 2453
    const-string v2, "(ForceSmimeCertForEncryption=1 OR ForceSmimeCert=1)"

    .line 2455
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v10, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_42

    .line 2457
    :cond_3d
    const-string v2, "((ForceSmimeCertForEncryption=1 AND ForceSmimeCertForSigning=1) OR (ForceSmimeCert=1))"

    .line 2460
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v10, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    .end local v2    # "str":Ljava/lang/String;
    :goto_42
    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v4, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 2466
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_64

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_64

    .line 2468
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 2469
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2471
    .local v4, "forcedAdminUid":I
    move/from16 v12, p1

    if-eq v4, v12, :cond_66

    .line 2472
    const/4 v8, 0x0

    goto :goto_66

    .line 2466
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "forcedAdminUid":I
    :cond_64
    move/from16 v12, p1

    .line 2475
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "columns":[Ljava/lang/String;
    .end local v10    # "selectionValues":Landroid/content/ContentValues;
    .end local v11    # "userId":I
    :cond_66
    :goto_66
    goto/16 :goto_ea

    .line 2477
    .end local v8    # "ret":Z
    :cond_68
    move/from16 v12, p1

    const/4 v8, 0x0

    .line 2481
    .restart local v8    # "ret":Z
    const-string v9, "ForceSmimeCert"

    const-string v10, "ForceSmimeCertForEncryption"

    const-string v11, "ForceSmimeCertForSigning"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v13

    .line 2485
    .local v13, "columns":[Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2486
    .local v14, "selectionValues":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2487
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2489
    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2492
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_ea

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ea

    .line 2495
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2496
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 2497
    .local v6, "forcedCert":Ljava/lang/Integer;
    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2498
    .local v7, "forcedEncryptCert":Ljava/lang/Integer;
    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 2500
    .local v9, "forcedSignCert":Ljava/lang/Integer;
    const/4 v10, 0x1

    if-ne v1, v3, :cond_bd

    .line 2501
    if-eqz v9, :cond_b3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_bb

    :cond_b3
    if-eqz v6, :cond_ea

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_ea

    .line 2502
    :cond_bb
    const/4 v8, 0x1

    goto :goto_ea

    .line 2504
    :cond_bd
    if-ne v1, v2, :cond_d1

    .line 2505
    if-eqz v7, :cond_c7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_cf

    :cond_c7
    if-eqz v6, :cond_ea

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_ea

    .line 2506
    :cond_cf
    const/4 v8, 0x1

    goto :goto_ea

    .line 2509
    :cond_d1
    if-eqz v7, :cond_e1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_e1

    if-eqz v9, :cond_e1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_e9

    :cond_e1
    if-eqz v6, :cond_ea

    .line 2510
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v10, :cond_ea

    .line 2511
    :cond_e9
    const/4 v8, 0x1

    .line 2517
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "forcedCert":Ljava/lang/Integer;
    .end local v7    # "forcedEncryptCert":Ljava/lang/Integer;
    .end local v9    # "forcedSignCert":Ljava/lang/Integer;
    .end local v13    # "columns":[Ljava/lang/String;
    .end local v14    # "selectionValues":Landroid/content/ContentValues;
    :cond_ea
    :goto_ea
    return v8
.end method

.method private convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .line 2245
    move-object v0, p3

    .line 2246
    .local v0, "modifiedAlias":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 2247
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 2248
    const/4 v1, 0x0

    .line 2249
    .local v1, "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    .line 2250
    .local v2, "csList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v2, :cond_2b

    .line 2251
    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2b

    aget-object v5, v2, v4

    .line 2252
    .local v5, "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v5, :cond_28

    iget-object v6, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 2253
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 2254
    move-object v1, v5

    .line 2255
    goto :goto_2b

    .line 2251
    .end local v5    # "cs":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2260
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_49

    .line 2261
    new-instance v3, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v3, "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v4

    .line 2263
    .local v4, "csUri":Ljava/lang/String;
    move-object v0, v4

    .line 2264
    .end local v3    # "UcmUriBuilder":Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v4    # "csUri":Ljava/lang/String;
    goto :goto_4a

    .line 2265
    :cond_49
    const/4 v0, 0x0

    .line 2268
    .end local v1    # "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .end local v2    # "csList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method private enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 192
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 195
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 196
    .local v0, "callingUid":I
    iget v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v1, v0, :cond_46

    .line 197
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 199
    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling UID changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callingUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_46
    return-object p1
.end method

.method private enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "storageName"    # Ljava/lang/String;

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 214
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 218
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v0

    .line 219
    .local v0, "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v0, :cond_2d

    .line 220
    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 221
    .local v3, "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    if-eqz v3, :cond_2a

    iget-object v4, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 222
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 223
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    .line 224
    goto :goto_2d

    .line 220
    .end local v3    # "credential":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 229
    .end local v0    # "credentialsList":[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :cond_2d
    :goto_2d
    return-void
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Lcom/samsung/android/knox/accounts/Account;
    .registers 20
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .line 962
    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v0, "eas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillInExchangeAccountData() : accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , userID =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExchangeAccountPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 965
    .local v5, "token":J
    new-instance v3, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 968
    .local v3, "acc":Lcom/samsung/android/knox/accounts/Account;
    :try_start_2f
    iget v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v7, v3, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 969
    iget-object v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v7, v3, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 970
    iget-object v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v7, v3, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 971
    const-string v7, "0"

    iput-object v7, v3, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 972
    iget v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v7, v3, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 973
    iget v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v7, v3, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 974
    const-wide/16 v7, -0x1

    iput-wide v7, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 975
    iput-wide v7, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 976
    iget v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v9, v3, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 977
    iget-boolean v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v9, v3, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 978
    iget-boolean v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_5d

    move v9, v10

    goto :goto_5e

    :cond_5d
    move v9, v11

    :goto_5e
    iput-boolean v9, v3, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 979
    iget-boolean v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v9, v3, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 980
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 981
    iget-object v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 982
    iput-object v9, v3, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 983
    iget-object v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 984
    iput-object v9, v3, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 985
    iget-object v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 986
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 987
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 988
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 989
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 990
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 991
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 992
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 993
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 994
    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v12, v3, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 995
    new-instance v12, Landroid/accounts/Account;

    iget-object v13, v3, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_9f} :catch_197
    .catchall {:try_start_2f .. :try_end_9f} :catchall_193

    .line 996
    move/from16 v14, p1

    :try_start_a1
    invoke-static {v10, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v13, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v12

    .line 997
    .local v10, "acct":Landroid/accounts/Account;
    const-string v12, "com.android.contacts"

    invoke-static {v10, v12, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    iput-boolean v12, v3, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    .line 999
    const-string v12, "com.android.calendar"

    invoke-static {v10, v12, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    iput-boolean v12, v3, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    .line 1001
    const-string/jumbo v12, "tasks"

    invoke-static {v10, v12, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    iput-boolean v12, v3, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    .line 1003
    const-string/jumbo v12, "note"

    invoke-static {v10, v12, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    iput-boolean v12, v3, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 1005
    new-instance v12, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v12}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1006
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v13, -0x1

    iput v13, v12, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1007
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v0, v12, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1008
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v15, v12, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1009
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v11, v12, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1010
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v15, v12, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1011
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v15, v12, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1012
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v15, v12, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1013
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v15, v12, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1014
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_101} :catch_191
    .catchall {:try_start_a1 .. :try_end_101} :catchall_1a5

    const-string v11, "\\"

    if-eqz v15, :cond_11c

    :try_start_105
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_11e

    .line 1015
    :cond_11c
    iget-object v13, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    :goto_11e
    iput-object v13, v12, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1016
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v13, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v13, v12, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1017
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v9, v12, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1018
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v7, v12, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1020
    new-instance v12, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v12}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1021
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v13, -0x1

    iput v13, v12, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1022
    iget-object v12, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v0, v12, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1023
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1024
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v12, 0x0

    iput v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1025
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1026
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1027
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1028
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v12, v0, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1029
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v12, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v12, :cond_17e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_180

    .line 1030
    :cond_17e
    iget-object v11, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    :goto_180
    iput-object v11, v0, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1031
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v11, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v11, v0, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1032
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v9, v0, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1033
    iget-object v0, v3, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v7, v0, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_190} :catch_191
    .catchall {:try_start_105 .. :try_end_190} :catchall_1a5

    .line 1038
    .end local v10    # "acct":Landroid/accounts/Account;
    goto :goto_1a0

    .line 1035
    :catch_191
    move-exception v0

    goto :goto_19a

    .line 1038
    :catchall_193
    move-exception v0

    move/from16 v14, p1

    goto :goto_1a6

    .line 1035
    :catch_197
    move-exception v0

    move/from16 v14, p1

    .line 1036
    .local v0, "ex":Ljava/lang/Exception;
    :goto_19a
    :try_start_19a
    const-string v7, "fillInExchangeAccountData() : failed."

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_1a5

    .line 1038
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1a0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1039
    nop

    .line 1041
    return-object v3

    .line 1038
    :catchall_1a5
    move-exception v0

    :goto_1a6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1039
    throw v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 5
    .param p1, "policy"    # Ljava/lang/String;

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "ret":Z
    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1655
    const/4 v0, 0x0

    goto :goto_50

    .line 1656
    :cond_b
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1657
    const/4 v0, 0x0

    goto :goto_50

    .line 1658
    :cond_15
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1659
    const/4 v0, 0x0

    goto :goto_50

    .line 1660
    :cond_1f
    const-string v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1661
    const/4 v0, 0x1

    goto :goto_50

    .line 1662
    :cond_29
    const-string v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1663
    const/4 v0, 0x1

    goto :goto_50

    .line 1664
    :cond_33
    const-string v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1665
    const/4 v0, 0x0

    goto :goto_50

    .line 1666
    :cond_3d
    const-string v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1667
    const/4 v0, 0x0

    goto :goto_50

    .line 1668
    :cond_47
    const-string v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1669
    const/4 v0, 0x1

    .line 1671
    :cond_50
    :goto_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultValueState() : policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return v0
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .registers 5
    .param p1, "policy"    # Ljava/lang/String;

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, "ret":I
    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1677
    const/4 v0, 0x0

    goto :goto_32

    .line 1678
    :cond_b
    const-string v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1679
    const/4 v0, 0x0

    goto :goto_32

    .line 1680
    :cond_15
    const-string v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1681
    const/4 v0, 0x0

    goto :goto_32

    .line 1682
    :cond_1f
    const-string v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1683
    const/4 v0, 0x0

    goto :goto_32

    .line 1684
    :cond_29
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1685
    const/4 v0, 0x0

    .line 1688
    :cond_32
    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultValueStateInteger() : policy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 186
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 188
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .registers 3
    .param p0, "userId"    # I

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".exchange.ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .registers 23
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 1559
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    const-string v7, "ExchangeAccountPolicy"

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 1560
    .local v8, "ret":Z
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    .line 1561
    .local v9, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    aput-object v5, v9, v10

    .line 1563
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1564
    .local v11, "cvWhere":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "containerID"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "userID"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "AccountId"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1567
    const/4 v12, 0x0

    .line 1570
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_38
    iget-object v13, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ExchangeAccountTable"

    invoke-virtual {v13, v14, v9, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v13
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_dd

    move-object v12, v13

    .line 1577
    nop

    .line 1579
    const-string v13, ", container id = "

    const-string v14, ", user id = "

    if-eqz v12, :cond_bb

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4f

    goto :goto_bb

    .line 1584
    :cond_4f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicyState() : results = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", accId = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-direct {v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v10

    xor-int/2addr v10, v0

    .line 1590
    .local v10, "restricterState":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1591
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_81
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_af

    .line 1592
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 1593
    .local v14, "cv":Landroid/content/ContentValues;
    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_ad

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v10, :cond_9c

    const-string v16, "1"

    goto :goto_9e

    :cond_9c
    const-string v16, "0"

    :goto_9e
    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1594
    const-string/jumbo v0, "getPolicyState: restricted. "

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    return v10

    .line 1597
    .end local v14    # "cv":Landroid/content/ContentValues;
    :cond_ad
    const/4 v0, 0x1

    goto :goto_81

    .line 1599
    :cond_af
    const-string/jumbo v0, "getPolicyState: no restrictData. "

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    if-nez v10, :cond_b9

    const/4 v0, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    return v0

    .line 1580
    .end local v10    # "restricterState":Z
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_bb
    :goto_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPolicyState() : results is default value(null), accId = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return v8

    .line 1573
    :catch_dd
    move-exception v0

    .line 1575
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "getPolicyState() : Exception while getValuesList from EDMStorageProvider"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    return v8
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .registers 25
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .line 1604
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "ExchangeAccountPolicy"

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v4

    .line 1605
    .local v4, "ret":I
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 1606
    .local v5, "columns":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v2, v5, v0

    .line 1608
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v6, v0

    .line 1609
    .local v6, "cvWhere":Landroid/content/ContentValues;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "containerID"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1610
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v7, "userID"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1611
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "AccountId"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1612
    const/4 v7, 0x0

    .line 1614
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_33
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ExchangeAccountTable"

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 1617
    if-eqz v7, :cond_f0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    move/from16 v11, p1

    move-wide/from16 v8, p2

    move/from16 v10, p5

    goto/16 :goto_f6

    .line 1620
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPolicyStateasInteger() : results = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", accId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5f} :catch_f7

    move-wide/from16 v8, p2

    :try_start_61
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", user id = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_ec

    move/from16 v10, p5

    :try_start_6b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", container id = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_e8

    move/from16 v11, p1

    :try_start_75
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7f} :catch_e6

    .line 1628
    nop

    .line 1630
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1631
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    const v12, 0x7fffffff

    if-eqz p6, :cond_8b

    move v14, v12

    goto :goto_8d

    :cond_8b
    const/high16 v14, -0x80000000

    .line 1632
    .local v14, "result":I
    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c1

    .line 1633
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 1634
    .local v15, "cv":Landroid/content/ContentValues;
    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1635
    .local v16, "value":Ljava/lang/Integer;
    if-eqz v16, :cond_c0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-lez v17, :cond_c0

    .line 1637
    if-eqz p6, :cond_b3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v13, v14, :cond_b3

    .line 1638
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v14, v13

    .end local v14    # "result":I
    .local v13, "result":I
    goto :goto_c0

    .line 1639
    .end local v13    # "result":I
    .restart local v14    # "result":I
    :cond_b3
    if-nez p6, :cond_c0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v14, :cond_c0

    .line 1640
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v14, v13

    .line 1642
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v16    # "value":Ljava/lang/Integer;
    :cond_c0
    :goto_c0
    goto :goto_8d

    .line 1643
    :cond_c1
    if-eqz p6, :cond_c9

    .line 1644
    if-eq v14, v12, :cond_c7

    move v12, v14

    goto :goto_c8

    :cond_c7
    move v12, v4

    .end local v14    # "result":I
    .local v12, "result":I
    :goto_c8
    goto :goto_d0

    .line 1646
    .end local v12    # "result":I
    .restart local v14    # "result":I
    :cond_c9
    const/high16 v12, -0x80000000

    if-eq v14, v12, :cond_cf

    move v12, v14

    goto :goto_d0

    :cond_cf
    move v12, v4

    .line 1648
    .end local v14    # "result":I
    .restart local v12    # "result":I
    :goto_d0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getPolicyStateasInteger() : result = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return v12

    .line 1624
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v12    # "result":I
    :catch_e6
    move-exception v0

    goto :goto_fe

    :catch_e8
    move-exception v0

    move/from16 v11, p1

    goto :goto_fe

    :catch_ec
    move-exception v0

    move/from16 v11, p1

    goto :goto_fc

    .line 1617
    :cond_f0
    move/from16 v11, p1

    move-wide/from16 v8, p2

    move/from16 v10, p5

    .line 1618
    :goto_f6
    return v4

    .line 1624
    :catch_f7
    move-exception v0

    move/from16 v11, p1

    move-wide/from16 v8, p2

    :goto_fc
    move/from16 v10, p5

    .line 1626
    .local v0, "ex":Ljava/lang/Exception;
    :goto_fe
    const-string/jumbo v12, "getPolicyStateasInteger() : Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v3, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    return v4
.end method

.method private getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .registers 2

    .line 2671
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_10

    .line 2672
    nop

    .line 2673
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 2676
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    return-object v0
.end method

.method private isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, "result":Z
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "In isCredentialStorageManaged..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    if-nez p2, :cond_10

    .line 2686
    const-string v2, "credentialStorage is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    return v0

    .line 2689
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getUCMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2691
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mUCMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    goto :goto_38

    .line 2693
    :cond_33
    const-string v2, "UCM service not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    return v0
.end method

.method private isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mEmailAddress"    # Ljava/lang/String;

    .line 2721
    const/4 v0, 0x1

    .line 2724
    .local v0, "isMDMallowed":Z
    :try_start_1
    const-string v1, "email_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v1

    .line 2725
    .local v1, "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    if-eqz v1, :cond_12

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_15

    goto :goto_13

    :cond_12
    const/4 v2, 0x1

    :goto_13
    move v0, v2

    .line 2730
    .end local v1    # "mService":Lcom/samsung/android/knox/accounts/IEmailPolicy;
    goto :goto_1f

    .line 2727
    :catch_15
    move-exception v1

    .line 2728
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "ExchangeAccountPolicy"

    const-string/jumbo v3, "setMaxEmailBodyTruncationSize() : Failed talking with email policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2729
    const/4 v0, 0x1

    .line 2731
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1f
    return v0
.end method

.method private isUCMAllowedAndManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorage"    # Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    .line 2679
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2660
    const/4 v0, 0x0

    .line 2661
    .local v0, "ret":Z
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_10

    .line 2662
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v1

    .line 2663
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v1, :cond_10

    .line 2664
    const/4 v0, 0x1

    .line 2667
    .end local v1    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_10
    return v0
.end method

.method private knoxSupportUCM()Z
    .registers 5

    .line 2700
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "In knoxSupportUCM..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const/4 v1, 0x0

    .line 2703
    .local v1, "result":Z
    const/4 v1, 0x1

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    return v1
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .line 1542
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1543
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "containerID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1545
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1546
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1549
    .local v1, "cvWhere":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1550
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1551
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1553
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ExchangeAccountTable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1554
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putPolicyState: ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , value  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , policy ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExchangeAccountPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .line 1523
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1524
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1525
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "containerID"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "AccountId"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1527
    if-eqz p5, :cond_25

    const-string v1, "1"

    goto :goto_27

    :cond_25
    const-string v1, "0"

    :goto_27
    invoke-virtual {v0, p6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1530
    .local v1, "cvWhere":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1534
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ExchangeAccountTable"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1535
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putPolicyState: ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , state  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , policy ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExchangeAccountPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    return v2
.end method

.method private resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I
    .param p5, "type"    # I
    .param p6, "onlyupdateDB"    # Z

    .line 2635
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2636
    .local v0, "containerId":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2637
    .local v1, "adminUid":I
    move v2, p4

    .line 2638
    .local v2, "userID":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2639
    .local v3, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 2640
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2639
    const/4 v6, 0x2

    if-ne p5, v6, :cond_1d

    .line 2640
    const-string v6, "ForceSmimeCertForEncryption"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2641
    if-nez p6, :cond_2a

    .line 2642
    invoke-direct {p0, v0, p2, p3, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    goto :goto_2a

    .line 2645
    :cond_1d
    const/4 v6, 0x3

    if-ne p5, v6, :cond_4d

    .line 2646
    const-string v6, "ForceSmimeCertForSigning"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2647
    if-nez p6, :cond_2a

    .line 2648
    invoke-direct {p0, v0, p2, p3, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    .line 2654
    :cond_2a
    :goto_2a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2655
    .local v5, "whereValues":Landroid/content/ContentValues;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2656
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "AccountId"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2657
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ExchangeAccountTable"

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v6

    if-lez v6, :cond_4c

    const/4 v4, 0x1

    :cond_4c
    return v4

    .line 2651
    .end local v5    # "whereValues":Landroid/content/ContentValues;
    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetForcedSMIMECertificateInternal() : failed. There is unsupport type requested : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExchangeAccountPolicy"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    return v4
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificate() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1513
    .local v1, "token":J
    :try_start_37
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_48

    .line 1516
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1517
    nop

    .line 1518
    return-void

    .line 1516
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1517
    throw v3
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificateForEncryption() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2089
    .local v1, "token":J
    :try_start_37
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_48

    .line 2092
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    nop

    .line 2094
    return-void

    .line 2092
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    throw v3
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseSMIMECertificateForSigning() : accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", containerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2056
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2057
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2059
    .local v1, "token":J
    :try_start_37
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_48

    .line 2062
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2063
    nop

    .line 2064
    return-void

    .line 2062
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2063
    throw v3
.end method

.method private sendSMIMEAliasResultIntent(JII)V
    .registers 9
    .param p1, "accId"    # J
    .param p3, "status"    # I
    .param p4, "type"    # I

    .line 2714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2715
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2716
    const-string v1, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2717
    const-string v1, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2718
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2719
    return-void
.end method

.method private setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 30
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;
    .param p6, "Action"    # Ljava/lang/String;

    .line 2542
    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v13

    .line 2543
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v13, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget v14, v13, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2545
    .local v14, "containerId":I
    iget v15, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2546
    .local v15, "adminUid":I
    invoke-static {v13}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 2547
    .local v6, "userID":I
    const/16 v16, 0x0

    .line 2548
    .local v16, "result":I
    invoke-direct {v7, v13, v8, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-nez v0, :cond_56

    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    const/4 v0, 0x3

    return v0

    .line 2552
    :cond_56
    if-eqz v10, :cond_154

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    move/from16 p1, v14

    move v14, v6

    goto/16 :goto_157

    .line 2556
    :cond_63
    if-eqz v11, :cond_147

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    move/from16 p1, v14

    move v14, v6

    goto/16 :goto_14a

    .line 2561
    :cond_70
    const/4 v0, 0x1

    .line 2562
    .local v0, "type":I
    if-eqz v12, :cond_13e

    .line 2563
    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 2564
    const/4 v0, 0x3

    move/from16 v17, v0

    goto :goto_8d

    .line 2565
    :cond_7f
    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 2566
    const/4 v0, 0x2

    move/from16 v17, v0

    goto :goto_8d

    .line 2565
    :cond_8b
    move/from16 v17, v0

    .line 2573
    .end local v0    # "type":I
    .local v17, "type":I
    :goto_8d
    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v2, v15

    move-wide/from16 v3, p2

    move/from16 p1, v14

    move v14, v6

    .end local v6    # "userID":I
    .local v14, "userID":I
    .local p1, "containerId":I
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2574
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : a smime certificate has already been enforced on this user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    return v16

    .line 2579
    :cond_a7
    monitor-enter p0

    .line 2580
    :try_start_a8
    invoke-virtual {v7, v13, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    move-wide v1, v0

    .line 2581
    .local v1, "certPasswordID":J
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v3

    .line 2582
    .local v3, "certResultID":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 2583
    .local v5, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v5, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2584
    const-string v0, "com.samsung.android.knox.intent.extra.CERT_PATH_INTERNAL"

    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2585
    const-string v0, "com.samsung.android.knox.intent.extra.CERT_PASSWORD_ID_INTERNAL"

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2586
    const-string v0, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18
    :try_end_cf
    .catchall {:try_start_a8 .. :try_end_cf} :catchall_13b

    .line 2589
    .local v18, "token":J
    :try_start_cf
    iget-object v0, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v14}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d6} :catch_122
    .catchall {:try_start_cf .. :try_end_d6} :catchall_11e

    move-wide/from16 v20, v1

    .end local v1    # "certPasswordID":J
    .local v20, "certPasswordID":J
    :try_start_d8
    const-string v1, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2591
    new-instance v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEModeFromAction(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v13, v10, v11, v1}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2592
    .local v0, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v1

    .line 2594
    .local v1, "ret":Z
    const-string v2, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .local v22, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    const-string/jumbo v0, "setForceSMIMECertificateInternal() : sendBroadcast success, accId = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_114} :catch_11c
    .catchall {:try_start_d8 .. :try_end_114} :catchall_135

    .line 2595
    if-eqz v1, :cond_118

    const/4 v0, -0x1

    goto :goto_119

    :cond_118
    const/4 v0, 0x0

    :goto_119
    move/from16 v16, v0

    goto :goto_12f

    .line 2596
    .end local v1    # "ret":Z
    .end local v22    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    :catch_11c
    move-exception v0

    goto :goto_125

    .line 2600
    .end local v20    # "certPasswordID":J
    .local v1, "certPasswordID":J
    :catchall_11e
    move-exception v0

    move-wide/from16 v20, v1

    .end local v1    # "certPasswordID":J
    .restart local v20    # "certPasswordID":J
    goto :goto_136

    .line 2596
    .end local v20    # "certPasswordID":J
    .restart local v1    # "certPasswordID":J
    :catch_122
    move-exception v0

    move-wide/from16 v20, v1

    .line 2597
    .end local v1    # "certPasswordID":J
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v20    # "certPasswordID":J
    :goto_125
    :try_start_125
    const-string v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "setForceSMIMECertificateInternal() : failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12d
    .catchall {:try_start_125 .. :try_end_12d} :catchall_135

    .line 2598
    const/16 v16, 0x0

    .line 2600
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_12f
    :try_start_12f
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2601
    nop

    .line 2602
    .end local v3    # "certResultID":J
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "token":J
    .end local v20    # "certPasswordID":J
    monitor-exit p0

    .line 2603
    return v16

    .line 2600
    .restart local v3    # "certResultID":J
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v18    # "token":J
    .restart local v20    # "certPasswordID":J
    :catchall_135
    move-exception v0

    :goto_136
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2601
    nop

    .end local v13    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v14    # "userID":I
    .end local v15    # "adminUid":I
    .end local v16    # "result":I
    .end local v17    # "type":I
    .end local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local p1    # "containerId":I
    .end local p2    # "accId":J
    .end local p4    # "certPath":Ljava/lang/String;
    .end local p5    # "certPassword":Ljava/lang/String;
    .end local p6    # "Action":Ljava/lang/String;
    throw v0

    .line 2602
    .end local v3    # "certResultID":J
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "token":J
    .end local v20    # "certPasswordID":J
    .restart local v13    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v14    # "userID":I
    .restart local v15    # "adminUid":I
    .restart local v16    # "result":I
    .restart local v17    # "type":I
    .restart local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .restart local p1    # "containerId":I
    .restart local p2    # "accId":J
    .restart local p4    # "certPath":Ljava/lang/String;
    .restart local p5    # "certPassword":Ljava/lang/String;
    .restart local p6    # "Action":Ljava/lang/String;
    :catchall_13b
    move-exception v0

    monitor-exit p0
    :try_end_13d
    .catchall {:try_start_12f .. :try_end_13d} :catchall_13b

    throw v0

    .line 2569
    .end local v17    # "type":I
    .end local p1    # "containerId":I
    .local v0, "type":I
    .restart local v6    # "userID":I
    .local v14, "containerId":I
    :cond_13e
    const-string v1, "ExchangeAccountPolicy"

    const-string/jumbo v2, "setForceSMIMECertificateInternal() : Action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    return v16

    .line 2556
    .end local v0    # "type":I
    :cond_147
    move/from16 p1, v14

    move v14, v6

    .line 2557
    .end local v6    # "userID":I
    .local v14, "userID":I
    .restart local p1    # "containerId":I
    :goto_14a
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPassword is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/4 v0, 0x2

    return v0

    .line 2552
    .end local p1    # "containerId":I
    .restart local v6    # "userID":I
    .local v14, "containerId":I
    :cond_154
    move/from16 p1, v14

    move v14, v6

    .line 2553
    .end local v6    # "userID":I
    .local v14, "userID":I
    .restart local p1    # "containerId":I
    :goto_157
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setForceSMIMECertificateInternal() : certPath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const/4 v0, 0x1

    return v0
.end method

.method private setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .line 2607
    move-wide/from16 v7, p2

    move/from16 v9, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 2608
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v11, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2609
    .local v11, "containerId":I
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 2610
    .local v12, "userID":I
    const/4 v13, 0x0

    .line 2612
    .local v13, "ret":Z
    move-object/from16 v14, p0

    invoke-direct {v14, v10, v7, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    const-string v15, "ExchangeAccountPolicy"

    if-nez v0, :cond_2f

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    return v13

    .line 2617
    :cond_2f
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    return v13

    .line 2623
    :cond_5b
    const/4 v6, 0x1

    if-eq v9, v6, :cond_64

    const/4 v0, 0x2

    if-ne v9, v0, :cond_62

    goto :goto_64

    :cond_62
    move v7, v6

    goto :goto_89

    .line 2624
    :cond_64
    :goto_64
    const/4 v5, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move v4, v12

    move v7, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v13

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : release SMIME Encryption = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :goto_89
    if-eq v9, v7, :cond_8e

    const/4 v0, 0x3

    if-ne v9, v0, :cond_af

    .line 2629
    :cond_8e
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, p2

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v13

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReleaseSMIMECertificateInternal() : release SMIME Signing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_af
    return v13
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 54
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 289
    move-object/from16 v32, v0

    const-string v0, "ExchangeAccountPolicy"

    move-object/from16 v33, v1

    const-string v1, "addNewAccount() EX 2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 58
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .line 314
    move-object/from16 v1, p0

    move/from16 v2, p12

    move/from16 v3, p13

    const-string v0, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 315
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const-string v12, "ExchangeAccountPolicy"

    const-string v4, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 317
    .local v13, "userID":I
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 320
    .local v14, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 321
    .end local p2    # "displayName":Ljava/lang/String;
    .local v15, "displayName":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .end local p3    # "emailAddress":Ljava/lang/String;
    .local v10, "emailAddress":Ljava/lang/String;
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .end local p14    # "serverAddress":Ljava/lang/String;
    .local v9, "serverAddress":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 324
    .end local p10    # "protocolVersion":Ljava/lang/String;
    .local v16, "protocolVersion":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 325
    .end local p9    # "senderName":Ljava/lang/String;
    .local v17, "senderName":Ljava/lang/String;
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 326
    .end local p11    # "signature":Ljava/lang/String;
    .local v8, "signature":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .end local p4    # "easUser":Ljava/lang/String;
    .local v7, "easUser":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    .end local p5    # "easDomain":Ljava/lang/String;
    .local v6, "easDomain":Ljava/lang/String;
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    .end local p18    # "serverPassword":Ljava/lang/String;
    .local v5, "serverPassword":Ljava/lang/String;
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    .end local p19    # "serverPathPrefix":Ljava/lang/String;
    .local v4, "serverPathPrefix":Ljava/lang/String;
    const-wide/16 v18, -0x1

    if-eqz v10, :cond_2e5

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2e5

    if-eqz v9, :cond_2e5

    if-eqz v16, :cond_2e5

    if-nez v7, :cond_64

    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object v3, v10

    move-object/from16 v25, v11

    move/from16 v22, v14

    move-object/from16 p1, v15

    move-object v15, v7

    move-object v14, v9

    goto/16 :goto_2f6

    .line 337
    :cond_64
    move-object/from16 p1, v15

    .end local v15    # "displayName":Ljava/lang/String;
    .local p1, "displayName":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v15

    .line 338
    .local v15, "emailPkageName":Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v20

    move-object/from16 p2, v15

    .end local v15    # "emailPkageName":Ljava/lang/String;
    .local p2, "emailPkageName":Ljava/lang/String;
    const-string v15, "com.samsung.android.focus"

    if-nez v20, :cond_8f

    invoke-static {v15, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v20

    if-nez v20, :cond_8f

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNewAccount() EX : Error :: Email and Focus are not installed on user "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-wide v18

    .line 347
    :cond_8f
    move-object/from16 p3, v15

    const/4 v15, 0x1

    if-ne v15, v2, :cond_9c

    if-ne v15, v3, :cond_9c

    .line 348
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-wide v18

    .line 353
    :cond_9c
    const/16 v20, 0x1

    iget-object v15, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v21, "eas"

    move/from16 v22, v14

    move-object v14, v4

    .end local v4    # "serverPathPrefix":Ljava/lang/String;
    .local v14, "serverPathPrefix":Ljava/lang/String;
    .local v22, "containerId":I
    move-object v4, v11

    move-object v2, v5

    .end local v5    # "serverPassword":Ljava/lang/String;
    .local v2, "serverPassword":Ljava/lang/String;
    move-object v5, v6

    move-object v3, v6

    .end local v6    # "easDomain":Ljava/lang/String;
    .local v3, "easDomain":Ljava/lang/String;
    move-object v6, v7

    move-object/from16 p5, v3

    move-object v3, v7

    .end local v7    # "easUser":Ljava/lang/String;
    .local v3, "easUser":Ljava/lang/String;
    .restart local p5    # "easDomain":Ljava/lang/String;
    move-object v7, v9

    move-object/from16 v23, v8

    .end local v8    # "signature":Ljava/lang/String;
    .local v23, "signature":Ljava/lang/String;
    move-object/from16 v8, v21

    move-object/from16 v21, v14

    move-object v14, v9

    .end local v9    # "serverAddress":Ljava/lang/String;
    .local v14, "serverAddress":Ljava/lang/String;
    .local v21, "serverPathPrefix":Ljava/lang/String;
    move/from16 v9, v20

    move-object/from16 v20, v3

    move-object v3, v10

    .end local v10    # "emailAddress":Ljava/lang/String;
    .local v3, "emailAddress":Ljava/lang/String;
    .local v20, "easUser":Ljava/lang/String;
    move-object v10, v15

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_cb

    .line 355
    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-wide v18

    .line 359
    :cond_cb
    const-wide/16 v4, 0x0

    .line 360
    .local v4, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 363
    .local v6, "token":J
    :try_start_d1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount() EX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1, v11, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v8

    .line 367
    .local v8, "newAccountID":J
    move-object/from16 v10, p31

    invoke-virtual {v1, v11, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 p9, v18

    .line 370
    .local p9, "newCertificateID":J
    new-instance v15, Landroid/content/Intent;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f3} :catch_2c7
    .catchall {:try_start_d1 .. :try_end_f3} :catchall_2bd

    move-object/from16 p11, v2

    .end local v2    # "serverPassword":Ljava/lang/String;
    .local p11, "serverPassword":Ljava/lang/String;
    :try_start_f5
    const-string v2, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    .line 371
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v2, v15, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 372
    const-string v15, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v2, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v15, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v10, "eas"

    invoke-virtual {v2, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v10, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v2, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v10, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_113} :catch_2b3
    .catchall {:try_start_f5 .. :try_end_113} :catchall_2a9

    move-object/from16 v15, v20

    .end local v20    # "easUser":Ljava/lang/String;
    .local v15, "easUser":Ljava/lang/String;
    :try_start_115
    invoke-virtual {v2, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v10, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v2, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 377
    const-string v10, "com.samsung.android.knox.intent.extra.SERVER_PATH_PREFIX_INTERNAL"
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11f} :catch_2a1
    .catchall {:try_start_115 .. :try_end_11f} :catchall_299

    move-wide/from16 p18, v8

    move-object/from16 v8, v21

    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .local v8, "serverPathPrefix":Ljava/lang/String;
    .local p18, "newAccountID":J
    :try_start_123
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v9, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"

    if-eqz p15, :cond_12c

    const/4 v10, 0x1

    goto :goto_12d

    :cond_12c
    const/4 v10, 0x0

    :goto_12d
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v9, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    if-eqz p16, :cond_136

    const/4 v10, 0x1

    goto :goto_137

    :cond_136
    const/4 v10, 0x0

    :goto_137
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v9, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    if-eqz p17, :cond_140

    const/4 v10, 0x1

    goto :goto_141

    :cond_140
    const/4 v10, 0x0

    :goto_141
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v9, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_146} :catch_28f
    .catchall {:try_start_123 .. :try_end_146} :catchall_285

    move-object/from16 v10, p5

    .end local p5    # "easDomain":Ljava/lang/String;
    .local v10, "easDomain":Ljava/lang/String;
    :try_start_148
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v9, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14d} :catch_27b
    .catchall {:try_start_148 .. :try_end_14d} :catchall_270

    move-object/from16 v21, v8

    move/from16 v8, p20

    .end local v8    # "serverPathPrefix":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    :try_start_151
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v9, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    move/from16 v8, p21

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v9, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    move/from16 v8, p22

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v9, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    move/from16 v8, p7

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    const-string v9, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    move/from16 v8, p23

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v9, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    move/from16 v8, p24

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v9, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    move/from16 v8, p6

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v9, "com.samsung.android.knox.intent.extra."

    move/from16 v8, p25

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v9, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    move/from16 v8, p26

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v9, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    move/from16 v8, p27

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 392
    const-string v9, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    move/from16 v8, p28

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v9, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    move/from16 v8, p29

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v9, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_1a3} :catch_267
    .catchall {:try_start_151 .. :try_end_1a3} :catchall_25e

    move-object/from16 v8, p1

    .end local p1    # "displayName":Ljava/lang/String;
    .local v8, "displayName":Ljava/lang/String;
    :try_start_1a5
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v9, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1aa} :catch_253
    .catchall {:try_start_1a5 .. :try_end_1aa} :catchall_248

    move-object/from16 p1, v8

    move-object/from16 v8, v23

    .end local v23    # "signature":Ljava/lang/String;
    .local v8, "signature":Ljava/lang/String;
    .restart local p1    # "displayName":Ljava/lang/String;
    :try_start_1ae
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v9, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b3} :catch_23d
    .catchall {:try_start_1ae .. :try_end_1b3} :catchall_232

    move-object/from16 v20, v10

    move/from16 v10, p13

    .end local v10    # "easDomain":Ljava/lang/String;
    .local v20, "easDomain":Ljava/lang/String;
    :try_start_1b7
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    const-string v9, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1bc} :catch_229
    .catchall {:try_start_1b7 .. :try_end_1bc} :catchall_220

    move-object/from16 v24, p11

    move-object/from16 v23, v8

    move/from16 v8, p12

    .end local v8    # "signature":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v23    # "signature":Ljava/lang/String;
    .local v24, "serverPassword":Ljava/lang/String;
    :try_start_1c2
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    const-string v9, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    move/from16 v8, p8

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    const-string v9, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    move-object/from16 v8, p30

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 400
    const-string v9, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1d5} :catch_21b
    .catchall {:try_start_1c2 .. :try_end_1d5} :catchall_216

    move-object/from16 v25, v11

    move-wide/from16 v10, p9

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p9    # "newCertificateID":J
    .local v10, "newCertificateID":J
    .local v25, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :try_start_1d9
    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 401
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v9, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v2, v8, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 406
    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v8, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNewAccount() EX : sent intent to Email app : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_210} :catch_213
    .catchall {:try_start_1d9 .. :try_end_210} :catchall_2e0

    .line 414
    nop

    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v10    # "newCertificateID":J
    .end local p18    # "newAccountID":J
    goto/16 :goto_2d6

    .line 411
    :catch_213
    move-exception v0

    goto/16 :goto_2d0

    .line 414
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catchall_216
    move-exception v0

    move-object/from16 v25, v11

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2e1

    .line 411
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :catch_21b
    move-exception v0

    move-object/from16 v25, v11

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2d0

    .line 414
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "signature":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_220
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    .end local v8    # "signature":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v23    # "signature":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2e1

    .line 411
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "signature":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_229
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v23, v8

    move-object/from16 v25, v11

    .end local v8    # "signature":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v23    # "signature":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "signature":Ljava/lang/String;
    .local v10, "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_232
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v23, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "signature":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v23    # "signature":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "signature":Ljava/lang/String;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_23d
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v23, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "signature":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v23    # "signature":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "displayName":Ljava/lang/String;
    .local v8, "displayName":Ljava/lang/String;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_248
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 p1, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p1    # "displayName":Ljava/lang/String;
    goto/16 :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "displayName":Ljava/lang/String;
    .restart local v8    # "displayName":Ljava/lang/String;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_253
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 p1, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "displayName":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p1    # "displayName":Ljava/lang/String;
    goto/16 :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_25e
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_267
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v8, "serverPathPrefix":Ljava/lang/String;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_270
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v21, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "serverPathPrefix":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "serverPathPrefix":Ljava/lang/String;
    .restart local v10    # "easDomain":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_27b
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v21, v8

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    .end local v8    # "serverPathPrefix":Ljava/lang/String;
    .end local v10    # "easDomain":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "serverPathPrefix":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_285
    move-exception v0

    move-object/from16 v20, p5

    move-object/from16 v24, p11

    move-object/from16 v21, v8

    move-object/from16 v25, v11

    .end local v8    # "serverPathPrefix":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v8    # "serverPathPrefix":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_28f
    move-exception v0

    move-object/from16 v20, p5

    move-object/from16 v24, p11

    move-object/from16 v21, v8

    move-object/from16 v25, v11

    .end local v8    # "serverPathPrefix":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d0

    .line 414
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_299
    move-exception v0

    move-object/from16 v20, p5

    move-object/from16 v24, p11

    move-object/from16 v25, v11

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2e1

    .line 411
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_2a1
    move-exception v0

    move-object/from16 v20, p5

    move-object/from16 v24, p11

    move-object/from16 v25, v11

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d0

    .line 414
    .end local v15    # "easUser":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "easUser":Ljava/lang/String;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catchall_2a9
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v20, p5

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v15    # "easUser":Ljava/lang/String;
    .local v20, "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2e1

    .line 411
    .end local v15    # "easUser":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "easUser":Ljava/lang/String;
    .restart local p5    # "easDomain":Ljava/lang/String;
    .restart local p11    # "serverPassword":Ljava/lang/String;
    :catch_2b3
    move-exception v0

    move-object/from16 v24, p11

    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v20, p5

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .end local p11    # "serverPassword":Ljava/lang/String;
    .restart local v15    # "easUser":Ljava/lang/String;
    .local v20, "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d0

    .line 414
    .end local v15    # "easUser":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "serverPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "easUser":Ljava/lang/String;
    .restart local p5    # "easDomain":Ljava/lang/String;
    :catchall_2bd
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v20, p5

    .end local v2    # "serverPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .restart local v15    # "easUser":Ljava/lang/String;
    .local v20, "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2e1

    .line 411
    .end local v15    # "easUser":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v2    # "serverPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "easUser":Ljava/lang/String;
    .restart local p5    # "easDomain":Ljava/lang/String;
    :catch_2c7
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v20, p5

    .line 412
    .end local v2    # "serverPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p5    # "easDomain":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v15    # "easUser":Ljava/lang/String;
    .local v20, "easDomain":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_2d0
    :try_start_2d0
    const-string v2, "addNewAccount() EX : failed. "

    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d5
    .catchall {:try_start_2d0 .. :try_end_2d5} :catchall_2e0

    .line 414
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d6
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    nop

    .line 416
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-wide v4

    .line 414
    :catchall_2e0
    move-exception v0

    :goto_2e1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 415
    throw v0

    .line 331
    .end local v3    # "emailAddress":Ljava/lang/String;
    .end local v20    # "easDomain":Ljava/lang/String;
    .end local v21    # "serverPathPrefix":Ljava/lang/String;
    .end local v22    # "containerId":I
    .end local v23    # "signature":Ljava/lang/String;
    .end local v24    # "serverPassword":Ljava/lang/String;
    .end local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "displayName":Ljava/lang/String;
    .end local p2    # "emailPkageName":Ljava/lang/String;
    .local v4, "serverPathPrefix":Ljava/lang/String;
    .restart local v5    # "serverPassword":Ljava/lang/String;
    .local v6, "easDomain":Ljava/lang/String;
    .restart local v7    # "easUser":Ljava/lang/String;
    .local v8, "signature":Ljava/lang/String;
    .restart local v9    # "serverAddress":Ljava/lang/String;
    .local v10, "emailAddress":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v14, "containerId":I
    .local v15, "displayName":Ljava/lang/String;
    :cond_2e5
    move-object/from16 v21, v4

    move-object/from16 v24, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v8

    move-object v3, v10

    move-object/from16 v25, v11

    move/from16 v22, v14

    move-object/from16 p1, v15

    move-object v15, v7

    move-object v14, v9

    .line 333
    .end local v4    # "serverPathPrefix":Ljava/lang/String;
    .end local v5    # "serverPassword":Ljava/lang/String;
    .end local v6    # "easDomain":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v9    # "serverAddress":Ljava/lang/String;
    .end local v10    # "emailAddress":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v3    # "emailAddress":Ljava/lang/String;
    .local v14, "serverAddress":Ljava/lang/String;
    .local v15, "easUser":Ljava/lang/String;
    .restart local v20    # "easDomain":Ljava/lang/String;
    .restart local v21    # "serverPathPrefix":Ljava/lang/String;
    .restart local v22    # "containerId":I
    .restart local v23    # "signature":Ljava/lang/String;
    .restart local v24    # "serverPassword":Ljava/lang/String;
    .restart local v25    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local p1    # "displayName":Ljava/lang/String;
    :goto_2f6
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-wide v18
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J
    .registers 41
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "account"    # Lcom/samsung/android/knox/accounts/ExchangeAccount;

    .line 2097
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 2098
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 2099
    .local v11, "userID":I
    iget v12, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2101
    .local v12, "containerId":I
    const-wide/16 v13, -0x1

    const-string v15, "ExchangeAccountPolicy"

    if-nez v2, :cond_1c

    .line 2103
    const-string v0, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    return-wide v13

    .line 2107
    :cond_1c
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-direct {v1, v10, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2109
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2110
    .local v16, "displayName":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2111
    .local v9, "emailAddress":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2112
    .local v8, "serverAddress":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2113
    .local v17, "protocolVersion":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2114
    .local v18, "senderName":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2115
    .local v19, "signature":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2116
    .local v7, "easUser":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2117
    .local v20, "easDomain":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2118
    .local v6, "serverPassword":Ljava/lang/String;
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2119
    .local v21, "serverPathPrefix":Ljava/lang/String;
    iget-boolean v5, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 2120
    .local v5, "emailNotificationVibrateAlways":Z
    iget-boolean v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 2122
    .local v3, "emailNotificationVibrateWhenSilent":Z
    if-eqz v9, :cond_357

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_357

    if-eqz v8, :cond_357

    if-eqz v17, :cond_357

    if-nez v7, :cond_7d

    move/from16 v25, v3

    move/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v13, v8

    move-object v14, v9

    goto/16 :goto_361

    .line 2127
    :cond_7d
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 2128
    .local v4, "emailPkageName":Ljava/lang/String;
    invoke-static {v4, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v22

    const-string v13, "com.samsung.android.focus"

    if-nez v22, :cond_a6

    invoke-static {v13, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_a6

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addNewAccount() EX : Error :: Email and focus are not installed on user "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const-wide/16 v13, -0x1

    return-wide v13

    .line 2132
    :cond_a6
    const/4 v14, 0x1

    if-ne v14, v5, :cond_b3

    if-ne v14, v3, :cond_b3

    .line 2133
    const-string v0, "addNewAccount_new : Error :: Invalid input parameters. \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const-wide/16 v13, -0x1

    return-wide v13

    .line 2137
    :cond_b3
    const/16 v22, 0x1

    iget-object v14, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v24, "eas"

    move/from16 v25, v3

    .end local v3    # "emailNotificationVibrateWhenSilent":Z
    .local v25, "emailNotificationVibrateWhenSilent":Z
    move-object v3, v10

    move-object/from16 v27, v4

    move-object/from16 v26, v13

    const/4 v13, 0x1

    .end local v4    # "emailPkageName":Ljava/lang/String;
    .local v27, "emailPkageName":Ljava/lang/String;
    move-object/from16 v4, v20

    move/from16 v28, v5

    .end local v5    # "emailNotificationVibrateAlways":Z
    .local v28, "emailNotificationVibrateAlways":Z
    move-object v5, v7

    move-object/from16 v29, v6

    .end local v6    # "serverPassword":Ljava/lang/String;
    .local v29, "serverPassword":Ljava/lang/String;
    move-object v6, v8

    move-object/from16 v30, v7

    .end local v7    # "easUser":Ljava/lang/String;
    .local v30, "easUser":Ljava/lang/String;
    move-object/from16 v7, v24

    move-object/from16 v31, v8

    .end local v8    # "serverAddress":Ljava/lang/String;
    .local v31, "serverAddress":Ljava/lang/String;
    move/from16 v8, v22

    move-object/from16 v32, v9

    .end local v9    # "emailAddress":Ljava/lang/String;
    .local v32, "emailAddress":Ljava/lang/String;
    move-object v9, v14

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_e6

    .line 2139
    const-string v0, "addNewAccount : Error :: Account already exists."

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-wide/16 v3, -0x1

    return-wide v3

    .line 2142
    :cond_e6
    const-wide/16 v3, 0x0

    .line 2143
    .local v3, "accId":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2147
    .local v5, "token":J
    :try_start_ec
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNewAccount() New : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v7, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_102} :catch_331
    .catchall {:try_start_ec .. :try_end_102} :catchall_329

    if-eqz v7, :cond_18a

    :try_start_104
    iget-object v7, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    if-eqz v7, :cond_18a

    .line 2149
    const-string v7, "addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget v7, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 2151
    .local v7, "mode":I
    const-string v8, "30"

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_115} :catch_181
    .catchall {:try_start_104 .. :try_end_115} :catchall_178

    .line 2154
    .local v8, "mdm_config_version":I
    const/16 v9, 0x11

    if-lt v8, v9, :cond_138

    :try_start_119
    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    if-lt v9, v13, :cond_138

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    const/4 v14, 0x3

    if-gt v9, v14, :cond_138

    .line 2157
    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_124} :catch_12f
    .catchall {:try_start_119 .. :try_end_124} :catchall_126

    move v7, v9

    goto :goto_138

    .line 2227
    .end local v7    # "mode":I
    .end local v8    # "mdm_config_version":I
    :catchall_126
    move-exception v0

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    goto/16 :goto_353

    .line 2224
    :catch_12f
    move-exception v0

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    goto/16 :goto_338

    .line 2159
    .restart local v7    # "mode":I
    .restart local v8    # "mdm_config_version":I
    :cond_138
    :goto_138
    :try_start_138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_145} :catch_181
    .catchall {:try_start_138 .. :try_end_145} :catchall_178

    move-object/from16 v14, v32

    .end local v32    # "emailAddress":Ljava/lang/String;
    .local v14, "emailAddress":Ljava/lang/String;
    :try_start_147
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2160
    .local v9, "caller":Ljava/lang/String;
    new-instance v13, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move/from16 v22, v8

    .end local v8    # "mdm_config_version":I
    .local v22, "mdm_config_version":I
    iget-object v8, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_154} :catch_171
    .catchall {:try_start_147 .. :try_end_154} :catchall_16a

    move-wide/from16 v32, v3

    .end local v3    # "accId":J
    .local v32, "accId":J
    :try_start_156
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    invoke-direct {v13, v10, v8, v3, v7}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v13

    .line 2162
    .local v3, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    invoke-static {v9, v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15f} :catch_165
    .catchall {:try_start_156 .. :try_end_15f} :catchall_160

    goto :goto_18e

    .line 2227
    .end local v3    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v7    # "mode":I
    .end local v9    # "caller":Ljava/lang/String;
    .end local v22    # "mdm_config_version":I
    :catchall_160
    move-exception v0

    move-object/from16 v13, v31

    goto/16 :goto_353

    .line 2224
    :catch_165
    move-exception v0

    move-object/from16 v13, v31

    goto/16 :goto_338

    .line 2227
    .end local v32    # "accId":J
    .local v3, "accId":J
    :catchall_16a
    move-exception v0

    move-wide/from16 v32, v3

    move-object/from16 v13, v31

    .end local v3    # "accId":J
    .restart local v32    # "accId":J
    goto/16 :goto_353

    .line 2224
    .end local v32    # "accId":J
    .restart local v3    # "accId":J
    :catch_171
    move-exception v0

    move-wide/from16 v32, v3

    move-object/from16 v13, v31

    .end local v3    # "accId":J
    .restart local v32    # "accId":J
    goto/16 :goto_338

    .line 2227
    .end local v14    # "emailAddress":Ljava/lang/String;
    .restart local v3    # "accId":J
    .local v32, "emailAddress":Ljava/lang/String;
    :catchall_178
    move-exception v0

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    move-object/from16 v13, v31

    .end local v3    # "accId":J
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .local v32, "accId":J
    goto/16 :goto_353

    .line 2224
    .end local v14    # "emailAddress":Ljava/lang/String;
    .restart local v3    # "accId":J
    .local v32, "emailAddress":Ljava/lang/String;
    :catch_181
    move-exception v0

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    move-object/from16 v13, v31

    .end local v3    # "accId":J
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .local v32, "accId":J
    goto/16 :goto_338

    .line 2148
    .end local v14    # "emailAddress":Ljava/lang/String;
    .restart local v3    # "accId":J
    .local v32, "emailAddress":Ljava/lang/String;
    :cond_18a
    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    .line 2165
    .end local v3    # "accId":J
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .local v32, "accId":J
    :goto_18e
    move-object/from16 v3, v29

    .end local v29    # "serverPassword":Ljava/lang/String;
    .local v3, "serverPassword":Ljava/lang/String;
    :try_start_190
    invoke-virtual {v1, v10, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v7

    .line 2166
    .local v7, "newAccountID":J
    iget-object v4, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    invoke-virtual {v1, v10, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v34

    move-wide/from16 v36, v34

    .line 2170
    .local v36, "newCertificateID":J
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2171
    .local v4, "newIntent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v4, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2172
    const-string v9, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v4, v9, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2173
    const-string v9, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v13, "eas"

    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2174
    const-string v9, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1b6} :catch_323
    .catchall {:try_start_190 .. :try_end_1b6} :catchall_31d

    move-object/from16 v13, v31

    .end local v31    # "serverAddress":Ljava/lang/String;
    .local v13, "serverAddress":Ljava/lang/String;
    :try_start_1b8
    invoke-virtual {v4, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2175
    const-string v9, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bd} :catch_319
    .catchall {:try_start_1b8 .. :try_end_1bd} :catchall_315

    move-object/from16 v29, v3

    move-object/from16 v3, v30

    .end local v30    # "easUser":Ljava/lang/String;
    .local v3, "easUser":Ljava/lang/String;
    .restart local v29    # "serverPassword":Ljava/lang/String;
    :try_start_1c1
    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2176
    const-string v9, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v4, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2178
    const-string v9, "com.samsung.android.knox.intent.extra.USE_SSL_INTERNAL"
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1cb} :catch_311
    .catchall {:try_start_1c1 .. :try_end_1cb} :catchall_30d

    move-object/from16 v30, v3

    .end local v3    # "easUser":Ljava/lang/String;
    .restart local v30    # "easUser":Ljava/lang/String;
    :try_start_1cd
    iget-boolean v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    const/16 v22, 0x0

    if-eqz v3, :cond_1d5

    const/4 v3, 0x1

    goto :goto_1d7

    :cond_1d5
    move/from16 v3, v22

    :goto_1d7
    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2179
    const-string v3, "com.samsung.android.knox.intent.extra.USE_TLS_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    if-eqz v9, :cond_1e2

    const/4 v9, 0x1

    goto :goto_1e4

    :cond_1e2
    move/from16 v9, v22

    :goto_1e4
    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2180
    const-string v3, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    if-eqz v9, :cond_1ef

    const/4 v9, 0x1

    goto :goto_1f1

    :cond_1ef
    move/from16 v9, v22

    :goto_1f1
    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2181
    const-string v3, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2182
    const-string v3, "com.samsung.android.knox.intent.extra.PEAK_START_TIME_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2183
    const-string v3, "com.samsung.android.knox.intent.extra.PEAK_END_TIME_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2184
    const-string v3, "com.samsung.android.knox.intent.extra.PEAK_DAYS_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2185
    const-string v3, "com.samsung.android.knox.intent.extra.PEAK_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2186
    const-string v3, "com.samsung.android.knox.intent.extra.OFF_PEAK_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2187
    const-string v3, "com.samsung.android.knox.intent.extra.ROAMING_SCHEDULE_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2188
    const-string v3, "com.samsung.android.knox.intent.extra.PERIOD_EMAIL_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2189
    const-string v3, "com.samsung.android.knox.intent.extra."

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2190
    const-string v3, "com.samsung.android.knox.intent.extra.PERIOD_CALENDAR_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2191
    const-string v3, "com.samsung.android.knox.intent.extra.NOTIFY_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2192
    const-string v3, "com.samsung.android.knox.intent.extra.SYNC_CONTACTS_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2193
    const-string v3, "com.samsung.android.knox.intent.extra.SYNC_CALENDAR_INTERNAL"

    iget v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2194
    const-string v3, "com.samsung.android.knox.intent.extra.ACCOUNT_NAME_INTERNAL"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2195
    const-string v3, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    const-string v3, "com.samsung.android.knox.intent.extra.VIBRATE_WHEN_SILENT_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    if-nez v9, :cond_265

    const/4 v9, 0x1

    goto :goto_267

    :cond_265
    move/from16 v9, v22

    :goto_267
    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2197
    const-string v3, "com.samsung.android.knox.intent.extra.EXTRA_VIBRATE_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2198
    const-string v3, "com.samsung.android.knox.intent.extra.IS_DEFAULT_INTERNAL"

    iget-boolean v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2199
    const-string v3, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2200
    const-string v3, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    move-wide/from16 v34, v7

    move-wide/from16 v7, v36

    .end local v36    # "newCertificateID":J
    .local v7, "newCertificateID":J
    .local v34, "newAccountID":J
    invoke-virtual {v4, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2201
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2203
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2dc

    .line 2204
    iget-object v3, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-direct {v1, v10, v3, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2209
    .local v3, "alias":Ljava/lang/String;
    if-nez v3, :cond_2c3

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNewAccount : Error :: certificate storage name "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not exist!"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_2bc} :catch_30b
    .catchall {:try_start_1cd .. :try_end_2bc} :catchall_352

    .line 2212
    nop

    .line 2227
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2212
    const-wide/16 v22, -0x1

    return-wide v22

    .line 2215
    :cond_2c3
    :try_start_2c3
    const-string v9, "com.samsung.android.knox.intent.extra.CERTIFICATE_ALIAS_INTERNAL"

    invoke-virtual {v4, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewAccount : alias has added, alias = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    .end local v3    # "alias":Ljava/lang/String;
    :cond_2dc
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2220
    move-object/from16 v2, v26

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_2c3 .. :try_end_309} :catch_30b
    .catchall {:try_start_2c3 .. :try_end_309} :catchall_352

    .line 2227
    nop

    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v7    # "newCertificateID":J
    .end local v34    # "newAccountID":J
    goto :goto_34d

    .line 2224
    :catch_30b
    move-exception v0

    goto :goto_338

    .line 2227
    .end local v30    # "easUser":Ljava/lang/String;
    .local v3, "easUser":Ljava/lang/String;
    :catchall_30d
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "easUser":Ljava/lang/String;
    .restart local v30    # "easUser":Ljava/lang/String;
    goto :goto_353

    .line 2224
    .end local v30    # "easUser":Ljava/lang/String;
    .restart local v3    # "easUser":Ljava/lang/String;
    :catch_311
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "easUser":Ljava/lang/String;
    .restart local v30    # "easUser":Ljava/lang/String;
    goto :goto_338

    .line 2227
    .end local v29    # "serverPassword":Ljava/lang/String;
    .local v3, "serverPassword":Ljava/lang/String;
    :catchall_315
    move-exception v0

    move-object/from16 v29, v3

    .end local v3    # "serverPassword":Ljava/lang/String;
    .restart local v29    # "serverPassword":Ljava/lang/String;
    goto :goto_353

    .line 2224
    .end local v29    # "serverPassword":Ljava/lang/String;
    .restart local v3    # "serverPassword":Ljava/lang/String;
    :catch_319
    move-exception v0

    move-object/from16 v29, v3

    .end local v3    # "serverPassword":Ljava/lang/String;
    .restart local v29    # "serverPassword":Ljava/lang/String;
    goto :goto_338

    .line 2227
    .end local v13    # "serverAddress":Ljava/lang/String;
    .end local v29    # "serverPassword":Ljava/lang/String;
    .restart local v3    # "serverPassword":Ljava/lang/String;
    .restart local v31    # "serverAddress":Ljava/lang/String;
    :catchall_31d
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v13, v31

    .end local v3    # "serverPassword":Ljava/lang/String;
    .end local v31    # "serverAddress":Ljava/lang/String;
    .restart local v13    # "serverAddress":Ljava/lang/String;
    .restart local v29    # "serverPassword":Ljava/lang/String;
    goto :goto_353

    .line 2224
    .end local v13    # "serverAddress":Ljava/lang/String;
    .end local v29    # "serverPassword":Ljava/lang/String;
    .restart local v3    # "serverPassword":Ljava/lang/String;
    .restart local v31    # "serverAddress":Ljava/lang/String;
    :catch_323
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v13, v31

    .end local v3    # "serverPassword":Ljava/lang/String;
    .end local v31    # "serverAddress":Ljava/lang/String;
    .restart local v13    # "serverAddress":Ljava/lang/String;
    .restart local v29    # "serverPassword":Ljava/lang/String;
    goto :goto_338

    .line 2227
    .end local v13    # "serverAddress":Ljava/lang/String;
    .end local v14    # "emailAddress":Ljava/lang/String;
    .local v3, "accId":J
    .restart local v31    # "serverAddress":Ljava/lang/String;
    .local v32, "emailAddress":Ljava/lang/String;
    :catchall_329
    move-exception v0

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    .end local v3    # "accId":J
    .end local v31    # "serverAddress":Ljava/lang/String;
    .restart local v13    # "serverAddress":Ljava/lang/String;
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .local v32, "accId":J
    goto :goto_353

    .line 2224
    .end local v13    # "serverAddress":Ljava/lang/String;
    .end local v14    # "emailAddress":Ljava/lang/String;
    .restart local v3    # "accId":J
    .restart local v31    # "serverAddress":Ljava/lang/String;
    .local v32, "emailAddress":Ljava/lang/String;
    :catch_331
    move-exception v0

    move-object/from16 v13, v31

    move-object/from16 v14, v32

    move-wide/from16 v32, v3

    .line 2225
    .end local v3    # "accId":J
    .end local v31    # "serverAddress":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "serverAddress":Ljava/lang/String;
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .local v32, "accId":J
    :goto_338
    :try_start_338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewAccount() NEW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34c
    .catchall {:try_start_338 .. :try_end_34c} :catchall_352

    .line 2227
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_34d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    nop

    .line 2230
    return-wide v32

    .line 2227
    :catchall_352
    move-exception v0

    :goto_353
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    throw v0

    .line 2122
    .end local v13    # "serverAddress":Ljava/lang/String;
    .end local v14    # "emailAddress":Ljava/lang/String;
    .end local v25    # "emailNotificationVibrateWhenSilent":Z
    .end local v27    # "emailPkageName":Ljava/lang/String;
    .end local v28    # "emailNotificationVibrateAlways":Z
    .end local v29    # "serverPassword":Ljava/lang/String;
    .end local v30    # "easUser":Ljava/lang/String;
    .end local v32    # "accId":J
    .local v3, "emailNotificationVibrateWhenSilent":Z
    .local v5, "emailNotificationVibrateAlways":Z
    .restart local v6    # "serverPassword":Ljava/lang/String;
    .local v7, "easUser":Ljava/lang/String;
    .local v8, "serverAddress":Ljava/lang/String;
    .local v9, "emailAddress":Ljava/lang/String;
    :cond_357
    move/from16 v25, v3

    move/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v13, v8

    move-object v14, v9

    .line 2124
    .end local v3    # "emailNotificationVibrateWhenSilent":Z
    .end local v5    # "emailNotificationVibrateAlways":Z
    .end local v6    # "serverPassword":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "serverAddress":Ljava/lang/String;
    .end local v9    # "emailAddress":Ljava/lang/String;
    .restart local v13    # "serverAddress":Ljava/lang/String;
    .restart local v14    # "emailAddress":Ljava/lang/String;
    .restart local v25    # "emailNotificationVibrateWhenSilent":Z
    .restart local v28    # "emailNotificationVibrateAlways":Z
    .restart local v29    # "serverPassword":Ljava/lang/String;
    .restart local v30    # "easUser":Ljava/lang/String;
    :goto_361
    const-string v0, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .line 1856
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowEmailSettingsChange() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1859
    .local v0, "containerId":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1860
    .local v9, "adminUid":I
    const/4 v10, 0x0

    .line 1861
    .local v10, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowEmailSettingsChange() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return v10

    .line 1865
    :cond_3a
    const-string v8, "AllowSettingChange"

    move-object v2, p0

    move v3, v9

    move v4, v0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    .line 1866
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowEmailSettingsChange() : = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , allow  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return v2
.end method

.method public allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .line 1780
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowInComingAttachments() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1783
    .local v0, "containerId":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1784
    .local v9, "adminUid":I
    const/4 v10, 0x0

    .line 1785
    .local v10, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowInComingAttachments_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    return v10

    .line 1790
    :cond_3a
    const-string v8, "AttachmentEnable"

    move-object v2, p0

    move v3, v9

    move v4, v0

    move-wide v5, p3

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    .line 1792
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowInComingAttachments() : = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , enable  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return v2
.end method

.method public createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 27
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    .line 243
    const-string v2, "ExchangeAccountPolicy"

    const-string v6, "addNewAccount() EX 1"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 20
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1078
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    .line 1079
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v4, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1080
    .local v5, "containerId":I
    const/4 v6, 0x0

    .line 1082
    .local v6, "ret":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount() :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ExchangeAccountPolicy"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "EmailAddress":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1086
    .local v8, "InComingServerAddress":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v9

    .line 1087
    .local v9, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v9, :cond_40

    .line 1088
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount_new() : Not valid accId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    return v6

    .line 1091
    :cond_40
    iget-object v10, v9, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    .line 1092
    .end local v0    # "EmailAddress":Ljava/lang/String;
    .local v10, "EmailAddress":Ljava/lang/String;
    iget-object v8, v9, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    .line 1094
    if-eqz v10, :cond_d3

    if-nez v8, :cond_4a

    goto/16 :goto_d3

    .line 1100
    :cond_4a
    const/4 v0, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v6

    .line 1105
    :cond_6b
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    .line 1106
    .local v11, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1109
    .local v12, "token":J
    :try_start_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deleteAccount() : accId = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " , userId = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, "intent":Landroid/content/Intent;
    const-string v14, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v0, v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1115
    const-string v14, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v14, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v15, "eas"

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v14, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v0, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    iget-object v14, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v11}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v14, v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_bf} :catch_c3
    .catchall {:try_start_73 .. :try_end_bf} :catchall_c1

    .line 1120
    const/4 v0, 0x1

    .end local v6    # "ret":Z
    .local v0, "ret":Z
    goto :goto_ca

    .line 1125
    .end local v0    # "ret":Z
    .restart local v6    # "ret":Z
    :catchall_c1
    move-exception v0

    goto :goto_cf

    .line 1121
    :catch_c3
    move-exception v0

    .line 1122
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_c4
    const-string v1, "deleteAccount() : failed. "

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_c1

    .line 1123
    const/4 v0, 0x0

    .line 1125
    .end local v6    # "ret":Z
    .local v0, "ret":Z
    :goto_ca
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    nop

    .line 1127
    return v0

    .line 1125
    .end local v0    # "ret":Z
    .restart local v6    # "ret":Z
    :goto_cf
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw v0

    .line 1096
    .end local v11    # "userID":I
    .end local v12    # "token":J
    :cond_d3
    :goto_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAccount() : no Inforamtion for accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return v6
.end method

.method public getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .line 2337
    const-string v0, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2338
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2337
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2340
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2341
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 2343
    .local v2, "password":Ljava/lang/String;
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2344
    .local v3, "caller":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_33

    move-object v2, v4

    .line 2348
    .end local v3    # "caller":Ljava/lang/String;
    goto :goto_3b

    .line 2345
    :catch_33
    move-exception v3

    .line 2346
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "getAccountCertificatePassword() failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2347
    const/4 v2, 0x0

    .line 2349
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_3b
    const-string/jumbo v3, "getAccountCertificatePassword() success"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    return-object v2
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 949
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 950
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 951
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 952
    .local v1, "userID":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAccountDetails() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,  userID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v2, 0x0

    .line 954
    .local v2, "ret":Lcom/samsung/android/knox/accounts/Account;
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v3

    .line 955
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v3, :cond_36

    .line 956
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v2

    .line 958
    :cond_36
    return-object v2
.end method

.method public getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .line 2313
    const-string v0, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2314
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2313
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2316
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2317
    .local v1, "containerId":I
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2318
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 2319
    .local v3, "callerPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2321
    .local v4, "password":Ljava/lang/String;
    :try_start_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2322
    .local v5, "caller":Ljava/lang/String;
    const-string v6, "com.samsung.android.focus"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 2323
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_4c

    .line 2325
    :cond_47
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4b} :catch_4d

    move-object v4, v6

    .line 2330
    .end local v5    # "caller":Ljava/lang/String;
    :goto_4c
    goto :goto_55

    .line 2327
    :catch_4d
    move-exception v5

    .line 2328
    .local v5, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "getAccountEmailPassword() failed"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2329
    const/4 v4, 0x0

    .line 2331
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_55
    const-string/jumbo v5, "getAccountEmailPassword() success"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return-object v4
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .line 934
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAccountId() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ExchangeAccountPolicy"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "eas"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    .line 938
    .local v0, "ret":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAccountId() : = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ,  easDomain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", easUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", activeSyncHost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-wide v0
.end method

.method public getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1052
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1053
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1054
    .local v1, "userID":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllEASAccounts() : userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/accounts/Account;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v4

    .line 1059
    .local v4, "accountlist":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v4, :cond_40

    .line 1060
    array-length v3, v4

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_46

    aget-object v6, v4, v5

    .line 1061
    .local v6, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v6, :cond_3d

    .line 1062
    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    .end local v6    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1065
    :cond_40
    const-string/jumbo v5, "getAllEASAccounts_new( ): fail to get list."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/knox/accounts/Account;

    goto :goto_5a

    :cond_59
    const/4 v3, 0x0

    :goto_5a
    return-object v3
.end method

.method public getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1164
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    .line 1165
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v2, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    .line 1166
    .local v3, "userID":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDeviceId() : userID = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExchangeAccountPolicy"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "emailPkageName":Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_44

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceId() failed : Email App is not installed. : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ExchangeAccountPolicy"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-object v5

    .line 1174
    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1175
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceId() failed : Email App is disabled. : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ExchangeAccountPolicy"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return-object v5

    .line 1181
    :cond_70
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1182
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1184
    :cond_89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    .line 1185
    .local v5, "sync":Ljava/lang/Object;
    monitor-enter v5

    .line 1186
    :try_start_90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_14f

    .line 1188
    .local v6, "token":J
    :try_start_94
    new-instance v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    move-object v14, v0

    .line 1206
    .local v14, "receiver":Landroid/content/BroadcastReceiver;
    const-string v0, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_REQUEST_INTERNAL"

    move-object v15, v0

    .line 1207
    .local v15, "action":Ljava/lang/String;
    const-string v0, "com.samsung.android.knox.intent.action.GET_EMAIL_DEVICEID_RESULT_INTERNAL"

    move-object v13, v0

    .line 1208
    .local v13, "retAction":Ljava/lang/String;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 1211
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string v0, "edm.intent.action.internal.GET_DEVICEID_RESULT"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1212
    iget-object v8, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v9, v14

    move-object v11, v12

    move-object/from16 v17, v12

    .end local v12    # "filter":Landroid/content/IntentFilter;
    .local v17, "filter":Landroid/content/IntentFilter;
    move-object v12, v0

    move-object/from16 v18, v13

    .end local v13    # "retAction":Ljava/lang/String;
    .local v18, "retAction":Ljava/lang/String;
    move-object/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1215
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1217
    const-string v0, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getDeviceId() : sendBroadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_ed

    :cond_eb
    const-string v10, ""

    :goto_ed
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_f7} :catch_12f
    .catchall {:try_start_94 .. :try_end_f7} :catchall_12d

    .line 1219
    :try_start_f7
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_110

    .line 1220
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v9, "getDeviceId() : Device id is still null, waiting 5 seconds..."

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-wide/16 v9, 0x1388

    invoke-virtual {v5, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_110} :catch_119
    .catchall {:try_start_f7 .. :try_end_110} :catchall_117

    .line 1226
    :cond_110
    nop

    .line 1227
    :try_start_111
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    :goto_113
    invoke-virtual {v0, v14}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_116} :catch_12f
    .catchall {:try_start_111 .. :try_end_116} :catchall_12d

    goto :goto_138

    .line 1226
    :catchall_117
    move-exception v0

    goto :goto_126

    .line 1223
    :catch_119
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_11a
    const-string v9, "ExchangeAccountPolicy"

    const-string/jumbo v10, "getDeviceId() Inturrupted."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_122
    .catchall {:try_start_11a .. :try_end_122} :catchall_117

    .line 1226
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 1227
    :try_start_123
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    goto :goto_113

    :goto_126
    iget-object v9, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v14}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1229
    nop

    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "userID":I
    .end local v4    # "emailPkageName":Ljava/lang/String;
    .end local v5    # "sync":Ljava/lang/Object;
    .end local v6    # "token":J
    .end local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    throw v0
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_12d} :catch_12f
    .catchall {:try_start_123 .. :try_end_12d} :catchall_12d

    .line 1233
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v15    # "action":Ljava/lang/String;
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "retAction":Ljava/lang/String;
    .restart local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v3    # "userID":I
    .restart local v4    # "emailPkageName":Ljava/lang/String;
    .restart local v5    # "sync":Ljava/lang/Object;
    .restart local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :catchall_12d
    move-exception v0

    goto :goto_14a

    .line 1230
    :catch_12f
    move-exception v0

    .line 1231
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_130
    const-string v8, "ExchangeAccountPolicy"

    const-string/jumbo v9, "getDeviceId() : failed. "

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_138
    .catchall {:try_start_130 .. :try_end_138} :catchall_12d

    .line 1233
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_138
    :try_start_138
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    nop

    .line 1235
    .end local v6    # "token":J
    monitor-exit v5
    :try_end_13d
    .catchall {:try_start_138 .. :try_end_13d} :catchall_14f

    .line 1236
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1233
    .restart local v6    # "token":J
    :goto_14a
    :try_start_14a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    nop

    .end local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v3    # "userID":I
    .end local v4    # "emailPkageName":Ljava/lang/String;
    .end local v5    # "sync":Ljava/lang/Object;
    .end local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    throw v0

    .line 1235
    .end local v6    # "token":J
    .restart local v2    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v3    # "userID":I
    .restart local v4    # "emailPkageName":Ljava/lang/String;
    .restart local v5    # "sync":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :catchall_14f
    move-exception v0

    monitor-exit v5
    :try_end_151
    .catchall {:try_start_14a .. :try_end_151} :catchall_14f

    throw v0
.end method

.method public getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1498
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2072
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2073
    .local v6, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 2074
    .local v7, "userID":I
    const-string v4, "ForceSmimeCertForEncryption"

    move-object v0, p0

    move v1, v6

    move-wide v2, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2043
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2044
    .local v6, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v7

    .line 2045
    .local v7, "userID":I
    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move v1, v6

    move-wide v2, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1823
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1824
    .local v7, "containerId":I
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1825
    .local v8, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1826
    .local v9, "userID":I
    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v7

    move-wide v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1905
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1906
    .local v7, "containerId":I
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1907
    .local v8, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1908
    .local v9, "userID":I
    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v7

    move-wide v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1939
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1940
    .local v7, "containerId":I
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1941
    .local v8, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1942
    .local v9, "userID":I
    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v7

    move-wide v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1985
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1986
    .local v7, "containerId":I
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1987
    .local v8, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1988
    .local v9, "userID":I
    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v7

    move-wide v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2030
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2031
    .local v7, "containerId":I
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2032
    .local v8, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 2033
    .local v9, "userID":I
    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move v1, v7

    move-wide v2, p2

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1352
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1354
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 1352
    const-string v4, "ReqEncryptSmime"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1327
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1329
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v5

    .line 1327
    const-string v4, "ReqSigSmime"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "type"    # I

    .line 2521
    const/4 v0, 0x0

    .line 2522
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    const-string v2, "ExchangeAccountPolicy"

    if-nez v1, :cond_1f

    .line 2523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    return-object v0

    .line 2527
    :cond_1f
    if-nez p4, :cond_2b

    .line 2528
    :try_start_21
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, p2, p3, v1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2532
    :catch_29
    move-exception v1

    goto :goto_35

    .line 2529
    :cond_2b
    const/4 v1, 0x1

    if-ne p4, v1, :cond_3d

    .line 2530
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v3, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_29

    return-object v1

    .line 2533
    .local v1, "e":Ljava/lang/Exception;
    :goto_35
    const-string/jumbo v3, "getSMIMECertificateAlias() : failed. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    const/4 v0, 0x0

    goto :goto_3e

    .line 2535
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3d
    nop

    .line 2536
    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSMIMECertificateAlias() : accId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    return-object v0
.end method

.method public isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1848
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1849
    .local v6, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1850
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 1851
    .local v8, "userID":I
    const-string v4, "AllowNotificationChange"

    move-object v0, p0

    move v1, v6

    move-wide v2, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1871
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1872
    .local v6, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1873
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 1874
    .local v8, "userID":I
    const-string v4, "AllowSettingChange"

    move-object v0, p0

    move v1, v6

    move-wide v2, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1797
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1798
    .local v6, "containerId":I
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1799
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    .line 1800
    .local v8, "userID":I
    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move v1, v6

    move-wide v2, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 2709
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1694
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1700
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 1742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 1777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 14
    .param p1, "uid"    # I

    .line 1711
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1715
    .local v0, "userId":I
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1716
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "AccountId"

    aput-object v3, v1, v2

    .line 1717
    const/4 v4, 0x1

    const-string v5, "ForceSmimeCert"

    aput-object v5, v1, v4

    .line 1719
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1720
    .local v4, "cvValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1722
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ExchangeAccountTable"

    invoke-virtual {v6, v7, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 1724
    .local v6, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_51

    .line 1725
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 1726
    .local v8, "email":Landroid/content/ContentValues;
    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_50

    .line 1729
    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1730
    .local v9, "accId":Ljava/lang/Long;
    if-eqz v9, :cond_50

    .line 1731
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v2, v10, v11, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    .line 1734
    .end local v8    # "email":Landroid/content/ContentValues;
    .end local v9    # "accId":Ljava/lang/Long;
    :cond_50
    goto :goto_2d

    .line 1737
    :cond_51
    const-string v2, "ExchangeAccountPolicy"

    const-string/jumbo v3, "onPreAdminRemoval() : "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 1748
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1749
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1753
    .local v1, "columns":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "AccountId"

    aput-object v3, v1, v2

    .line 1754
    const/4 v2, 0x1

    const-string v4, "ForceSmimeCert"

    aput-object v4, v1, v2

    .line 1756
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1757
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "containerID"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1759
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1761
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_74

    .line 1762
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1763
    .local v7, "email":Landroid/content/ContentValues;
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_73

    .line 1766
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1767
    .local v8, "accId":Ljava/lang/Long;
    if-eqz v8, :cond_73

    .line 1768
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, p1, v9, v10, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    .line 1771
    .end local v7    # "email":Landroid/content/ContentValues;
    .end local v8    # "accId":Ljava/lang/Long;
    :cond_73
    goto :goto_50

    .line 1773
    :cond_74
    return-void
.end method

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .line 1284
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1285
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1286
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 1287
    .local v1, "userID":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePendingAccount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1294
    .local v4, "token":J
    :try_start_25
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v7, "eas"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    invoke-virtual {v2, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string v6, "com.samsung.android.knox.intent.extra.EXTRA_USER_NAME_INTERNAL"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    const-string v6, "com.samsung.android.knox.intent.extra.DOMAIN_INTERNAL"

    invoke-virtual {v2, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5a} :catch_5d
    .catchall {:try_start_25 .. :try_end_5a} :catchall_5b

    .line 1305
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_74

    :catchall_5b
    move-exception v2

    goto :goto_79

    .line 1302
    :catch_5d
    move-exception v2

    .line 1303
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePendingAccount() : fail to remove pending EAS Account. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_5b

    .line 1305
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_74
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    nop

    .line 1307
    return-void

    .line 1305
    :goto_79
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    throw v2
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1135
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1136
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1137
    .local v0, "containerId":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1138
    .local v1, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 1139
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1141
    .local v3, "token":J
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1143
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1144
    .local v5, "msg":Landroid/os/Message;
    iput v0, v5, Landroid/os/Message;->arg1:I

    .line 1145
    iput v2, v5, Landroid/os/Message;->arg2:I

    .line 1146
    iget-boolean v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_46

    const-string v7, "ExchangeAccountPolicy"

    if-nez v6, :cond_34

    .line 1147
    :try_start_26
    const-string/jumbo v6, "sendAccountsChangedBroadcast()"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_41

    .line 1150
    :cond_34
    const-string/jumbo v6, "sendAccountsChangedBroadcast() : Delayed Broadcast"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_46

    .line 1154
    .end local v5    # "msg":Landroid/os/Message;
    :goto_41
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    nop

    .line 1156
    return-void

    .line 1154
    :catchall_46
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    throw v5
.end method

.method public setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAcceptAllCertificates() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 451
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_3a

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x0

    return v1

    .line 455
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    .line 456
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1
.end method

.method public setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 540
    const-string v0, "ExchangeAccountPolicy"

    const-string/jumbo v1, "setAccountBaseParameters() : deprecated "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 2293
    const-string v0, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2294
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2293
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2296
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2297
    .local v1, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v2

    .line 2298
    .local v2, "callID":J
    const-wide/16 v4, -0x1

    if-nez p2, :cond_24

    .line 2299
    return-wide v4

    .line 2301
    :cond_24
    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2302
    .local v6, "caller":Ljava/lang/String;
    invoke-static {v6, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_40

    .line 2306
    nop

    .line 2307
    .end local v6    # "caller":Ljava/lang/String;
    const-string/jumbo v4, "setAccountCertificatePassword() success"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    return-wide v2

    .line 2303
    :catch_40
    move-exception v6

    .line 2304
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "setAccountCertificatePassword() failed"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2305
    return-wide v4
.end method

.method public setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 2273
    const-string v0, "ExchangeAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 2274
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2273
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2276
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2277
    .local v1, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v2

    .line 2278
    .local v2, "callID":J
    const-wide/16 v4, -0x1

    if-nez p2, :cond_24

    .line 2279
    return-wide v4

    .line 2281
    :cond_24
    :try_start_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "E#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2282
    .local v6, "caller":Ljava/lang/String;
    invoke-static {v6, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2283
    invoke-static {v6, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_43

    .line 2287
    nop

    .line 2288
    .end local v6    # "caller":Ljava/lang/String;
    const-string/jumbo v4, "setAccountEmailPassword() success"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    return-wide v2

    .line 2284
    :catch_43
    move-exception v6

    .line 2285
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "setAccountEmailPassword() failed"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    return-wide v4
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 791
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAccountName() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    .line 795
    .local v0, "ret":Z
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 797
    if-nez p2, :cond_29

    .line 798
    const-string/jumbo v2, "setAccountName() : accountName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v0

    .line 801
    :cond_29
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 802
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_47

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v0

    .line 806
    :cond_47
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    .line 807
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v0

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", accountName ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 471
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_3a

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v1, 0x0

    return v1

    .line 475
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    .line 476
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAsDefaultAccount() :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 771
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_3a

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    return v0

    .line 775
    :cond_3a
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    .line 776
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v0

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAsDefaultAccount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v0
.end method

.method public setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .line 660
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    .line 661
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v6, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setClientAuthCert() : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ExchangeAccountPolicy"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget v8, v6, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 664
    .local v8, "containerId":I
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 666
    .local v9, "userID":I
    invoke-direct {v1, v6, v4, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    if-nez v0, :cond_45

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClientAuthCert() : No exist accId : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 670
    :cond_45
    if-eqz v2, :cond_96

    if-eqz v3, :cond_96

    const-wide/16 v10, 0x1

    cmp-long v0, v4, v10

    if-gez v0, :cond_50

    goto :goto_96

    .line 675
    :cond_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 677
    .local v10, "token":J
    const/4 v0, 0x1

    :try_start_55
    iput-boolean v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 678
    iget-object v12, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.EMAIL_INSTALL_CERT_INTERNAL"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "newintent":Landroid/content/Intent;
    invoke-virtual {v1, v6, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v12

    .line 683
    .local v12, "accCertID2":J
    const-string v14, "com.samsung.android.knox.intent.extra.CERTIFICATE_DATA_INTERNAL"

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 684
    const-string v14, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v0, v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 685
    const-string v14, "com.samsung.android.knox.intent.extra.CERTIFICATE_PASSWD_ID_INTERNAL"

    invoke-virtual {v0, v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 687
    iget-object v14, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v14, v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_82} :catch_85
    .catchall {:try_start_55 .. :try_end_82} :catchall_83

    .line 691
    .end local v0    # "newintent":Landroid/content/Intent;
    .end local v12    # "accCertID2":J
    goto :goto_8d

    :catchall_83
    move-exception v0

    goto :goto_92

    .line 688
    :catch_85
    move-exception v0

    .line 689
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_86
    const-string/jumbo v1, "setClientAuthCert() : failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_83

    .line 691
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_8d
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :goto_92
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v0

    .line 671
    .end local v10    # "token":J
    :cond_96
    :goto_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setClientAuthCert() : error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method public setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .line 902
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 903
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 904
    .local v0, "containerId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSyncs() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExchangeAccountPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v1, 0x1

    .line 907
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p6, p7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v3

    .line 908
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v3, :cond_3d

    .line 909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSSL_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v2, 0x0

    return v2

    .line 912
    :cond_3d
    iput-boolean p3, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    .line 913
    iput-boolean p2, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    .line 914
    iput-boolean p4, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    .line 915
    iput-boolean p5, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    .line 916
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataSyncs() : = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,  syncCalendar = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", syncContacts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", accid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v1
.end method

.method public setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEmailNotificationsState() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1834
    .local v0, "containerId":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1835
    .local v9, "adminUid":I
    const/4 v10, 0x0

    .line 1836
    .local v10, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowInComingAttachments() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return v10

    .line 1840
    :cond_3b
    const-string v8, "AllowNotificationChange"

    move-object v2, p0

    move v3, v9

    move v4, v0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    .line 1841
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailNotificationsState() : = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " , enable  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    return v2
.end method

.method public setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .line 1493
    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z
    .registers 28
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "storageName"    # Ljava/lang/String;
    .param p5, "alias"    # Ljava/lang/String;
    .param p6, "type"    # I

    .line 2354
    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setForceSMIMECertificateAlias() : accId = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", alias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ExchangeAccountPolicy"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : credential storage name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v15

    .line 2362
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v15, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-direct {v7, v15, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceUCMPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2364
    invoke-static {v15}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    .line 2365
    .local v6, "userID":I
    const/16 v16, 0x0

    .line 2367
    .local v16, "ret":Z
    const/4 v0, 0x1

    if-eq v12, v0, :cond_86

    if-eqz v12, :cond_86

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : invalid type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    return v16

    .line 2372
    :cond_86
    invoke-direct {v7, v15, v8, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 2373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    return v16

    .line 2377
    :cond_a2
    const/4 v1, 0x3

    .line 2378
    .local v1, "convertedType":I
    if-nez v12, :cond_a9

    .line 2379
    const/4 v1, 0x2

    move/from16 v17, v1

    goto :goto_ab

    .line 2378
    :cond_a9
    move/from16 v17, v1

    .line 2382
    .end local v1    # "convertedType":I
    .local v17, "convertedType":I
    :goto_ab
    iget v2, v15, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eqz v11, :cond_b0

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    move v5, v0

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v18, v13

    move v13, v6

    .end local v6    # "userID":I
    .local v13, "userID":I
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->adminSatisfiesForceSMIMECertificateRules(IJZI)Z

    move-result v0

    if-nez v0, :cond_de

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceSMIMECertificateAlias() : either a smime certificate has already been enforced on this user by other admin or admin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is trying to release a certificate which was not enforced by him"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return v16

    .line 2389
    :cond_de
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2391
    .local v1, "token":J
    if-eqz v11, :cond_118

    .line 2392
    :try_start_e4
    invoke-direct {v7, v15, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->convertUcmUri(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e8} :catch_116
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_113

    move-object v3, v0

    .line 2396
    .end local p5    # "alias":Ljava/lang/String;
    .local v3, "alias":Ljava/lang/String;
    if-nez v3, :cond_111

    .line 2397
    :try_start_eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForceSMIMECertificateAlias() : storage name "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_105} :catch_10e
    .catchall {:try_start_eb .. :try_end_105} :catchall_10a

    .line 2398
    nop

    .line 2426
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2398
    return v16

    .line 2426
    :catchall_10a
    move-exception v0

    move-object v11, v3

    goto/16 :goto_1a1

    .line 2422
    :catch_10e
    move-exception v0

    move-object v11, v3

    goto :goto_177

    .line 2396
    :cond_111
    move-object v11, v3

    goto :goto_118

    .line 2426
    .end local v3    # "alias":Ljava/lang/String;
    .restart local p5    # "alias":Ljava/lang/String;
    :catchall_113
    move-exception v0

    goto/16 :goto_1a1

    .line 2422
    :catch_116
    move-exception v0

    goto :goto_177

    .line 2402
    .end local p5    # "alias":Ljava/lang/String;
    .local v11, "alias":Ljava/lang/String;
    :cond_118
    :goto_118
    :try_start_118
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v3

    .line 2405
    .local v3, "resultID":J
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_INTERNAL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2406
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2407
    const-string v5, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_NAME_INTERNAL"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2408
    const-string v5, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2409
    const-string v5, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2411
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_142

    .line 2413
    const-string v5, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_STORAGE_INTERNAL"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2416
    :cond_142
    new-instance v5, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    const/4 v6, 0x0

    const/4 v10, -0x1

    invoke-direct {v5, v15, v11, v6, v10}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2417
    .local v5, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "S"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    move-result v6

    move/from16 v16, v6

    .line 2419
    if-eqz v16, :cond_171

    .line 2420
    iget-object v6, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-wide/from16 v19, v3

    .end local v3    # "resultID":J
    .local v19, "resultID":J
    const-string v3, "com.samsung.android.knox.permission.SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {v6, v0, v10, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_170} :catch_176
    .catchall {:try_start_118 .. :try_end_170} :catchall_174

    goto :goto_17f

    .line 2419
    .end local v19    # "resultID":J
    .restart local v3    # "resultID":J
    :cond_171
    move-wide/from16 v19, v3

    .end local v3    # "resultID":J
    .restart local v19    # "resultID":J
    goto :goto_17f

    .line 2426
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v5    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v19    # "resultID":J
    :catchall_174
    move-exception v0

    goto :goto_1a1

    .line 2422
    :catch_176
    move-exception v0

    .line 2423
    .local v0, "e":Ljava/lang/Exception;
    :goto_177
    :try_start_177
    const-string/jumbo v3, "setForceSMIMECertificateAlias() : failed. "

    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17d
    .catchall {:try_start_177 .. :try_end_17d} :catchall_174

    .line 2424
    const/16 v16, 0x0

    .line 2426
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2427
    move/from16 v0, v16

    .line 2428
    .end local v16    # "ret":Z
    .local v0, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    return v0

    .line 2426
    .end local v0    # "ret":Z
    .restart local v16    # "ret":Z
    :goto_1a1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2427
    throw v0
.end method

.method public setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .line 2068
    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .line 2038
    const-string v6, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setForceSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .line 1804
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIncomingAttachmentsSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1807
    .local v0, "containerId":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1808
    .local v9, "adminUid":I
    const/4 v10, 0x0

    .line 1809
    .local v10, "ret":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIncomingAttachmentsSize() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return v10

    .line 1813
    :cond_3c
    if-gez p2, :cond_45

    .line 1814
    const-string/jumbo v2, "setIncomingAttachmentsSize() : Error :: invalid parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return v10

    .line 1817
    :cond_45
    const-string v8, "IncomingAttachmentSize"

    move-object v2, p0

    move v3, v9

    move v4, v0

    move-wide v5, p3

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v2

    .line 1818
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIncomingAttachmentsSize() : = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , size  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , accId  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    return v2
.end method

.method public setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .line 1878
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-wide/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 1879
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxCalendarAgeFilter() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "ExchangeAccountPolicy"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget v13, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1881
    .local v13, "containerId":I
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1882
    .local v14, "adminUid":I
    iget-object v0, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v9, v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v15

    .line 1883
    .local v15, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/16 v16, 0x0

    if-nez v15, :cond_45

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxCalendarAgeFilter() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return v16

    .line 1887
    :cond_45
    const/4 v0, 0x4

    if-lt v8, v0, :cond_4b

    const/4 v0, 0x7

    if-le v8, v0, :cond_54

    :cond_4b
    if-eqz v8, :cond_54

    .line 1888
    const-string/jumbo v0, "setMaxCalendarAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    return v16

    .line 1891
    :cond_54
    const-string v6, "MaxCalendarAgeFilter"

    move-object/from16 v0, p0

    move v1, v14

    move v2, v13

    move-wide/from16 v3, p3

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1892
    const-string/jumbo v0, "setMaxCalendarAgeFilter() : Error :: Fail to update policy."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return v16

    .line 1895
    :cond_6b
    invoke-virtual {v7, v11, v9, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 1896
    .local v0, "mdmPolicy":I
    iget v1, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    if-le v1, v0, :cond_9d

    if-eqz v0, :cond_9d

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxCalendarAgeFilter() : need to change Account value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iput v0, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    .line 1899
    iget-object v1, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v11, v15}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1

    .line 1901
    :cond_9d
    const/4 v1, 0x1

    return v1
.end method

.method public setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .line 1912
    move-object/from16 v7, p0

    move/from16 v8, p2

    move-wide/from16 v9, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 1913
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget v12, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1914
    .local v12, "containerId":I
    iget v13, v11, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1915
    .local v13, "adminUid":I
    iget-object v0, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v9, v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v14

    .line 1916
    .local v14, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/4 v15, 0x0

    const-string v6, "ExchangeAccountPolicy"

    if-nez v14, :cond_2f

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailAgeFilter() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    return v15

    .line 1920
    :cond_2f
    if-ltz v8, :cond_85

    const/4 v0, 0x5

    if-le v8, v0, :cond_36

    move-object v15, v6

    goto :goto_86

    .line 1924
    :cond_36
    const-string v16, "MaxEmailAgeFilter"

    move-object/from16 v0, p0

    move v1, v13

    move v2, v12

    move-wide/from16 v3, p3

    move/from16 v5, p2

    move-object v15, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1925
    const-string/jumbo v0, "setMaxEmailAgeFilter() : Error :: Fail to update policy."

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const/4 v0, 0x0

    return v0

    .line 1928
    :cond_51
    invoke-virtual {v7, v11, v9, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 1929
    .local v0, "mdmPolicy":I
    iget v1, v14, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    if-le v1, v0, :cond_83

    if-eqz v0, :cond_83

    .line 1930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxEmailAgeFilter() : need to change Account value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iput v0, v14, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailAgeFilter:I

    .line 1932
    iget-object v1, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v11, v14}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1

    .line 1934
    :cond_83
    const/4 v1, 0x1

    return v1

    .line 1920
    .end local v0    # "mdmPolicy":I
    :cond_85
    move-object v15, v6

    .line 1921
    :goto_86
    const-string/jumbo v0, "setMaxEmailAgeFilter() : Error :: Invalid input parameters."

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .line 1946
    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 1947
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailBodyTruncationSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ExchangeAccountPolicy"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget v12, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1949
    .local v12, "containerId":I
    iget v13, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1950
    .local v13, "adminUid":I
    const/4 v14, 0x0

    .line 1951
    .local v14, "ret":Z
    iget-object v0, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v8, v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v15

    .line 1952
    .local v15, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/16 v16, 0x0

    if-nez v15, :cond_44

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailBodyTruncationSize() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    return v16

    .line 1956
    :cond_44
    if-gez p2, :cond_4d

    .line 1957
    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return v16

    .line 1960
    :cond_4d
    const-string v6, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, p0

    move v1, v13

    move v2, v12

    move-wide/from16 v3, p3

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1961
    const-string/jumbo v0, "setMaxEmailBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    return v16

    .line 1964
    :cond_64
    const/4 v0, 0x1

    .line 1966
    .end local v14    # "ret":Z
    .local v0, "ret":Z
    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v1

    .line 1967
    .local v1, "mdmPolicy":I
    iget-object v2, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v7, v10, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 1968
    .local v2, "isMDMallowed":Z
    if-nez v2, :cond_b1

    if-eqz v1, :cond_b1

    .line 1969
    const/4 v3, 0x0

    .line 1970
    .local v3, "isupdate":Z
    iget v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    if-eqz v4, :cond_7e

    iget v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    mul-int/lit16 v5, v1, 0x400

    if-le v4, v5, :cond_a4

    .line 1971
    :cond_7e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaxEmailBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v5, v1, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    mul-int/lit16 v4, v1, 0x400

    iput v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailBodyTruncationSize:I

    .line 1973
    const/4 v3, 0x1

    .line 1975
    :cond_a4
    if-eqz v3, :cond_b1

    .line 1976
    iget-object v4, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v15}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 1977
    const-string/jumbo v4, "setMaxEmailBodyTruncationSize() : updated account."

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    .end local v3    # "isupdate":Z
    :cond_b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMaxEmailBodyTruncationSize()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    return v0
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 22
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .line 1991
    move-object/from16 v7, p0

    move-wide/from16 v8, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 1992
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailHTMLBodyTruncationSize() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ExchangeAccountPolicy"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget v12, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1994
    .local v12, "containerId":I
    iget v13, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1995
    .local v13, "adminUid":I
    const/4 v14, 0x0

    .line 1996
    .local v14, "ret":Z
    iget-object v0, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v8, v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v15

    .line 1997
    .local v15, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/16 v16, 0x0

    if-nez v15, :cond_44

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxEmailHTMLBodyTruncationSize() : No exist accId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return v16

    .line 2001
    :cond_44
    if-gez p2, :cond_4d

    .line 2002
    const-string/jumbo v0, "setMaxEmailHTMLBodyTruncationSize() : Error :: invalid parameter."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return v16

    .line 2005
    :cond_4d
    const-string v6, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p0

    move v1, v13

    move v2, v12

    move-wide/from16 v3, p3

    move/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 2006
    const-string/jumbo v0, "setMaxEmailHTMLBodyTruncationSize() : Error :: Fail to update policy."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    return v16

    .line 2009
    :cond_64
    const/4 v0, 0x1

    .line 2011
    .end local v14    # "ret":Z
    .local v0, "ret":Z
    invoke-virtual {v7, v10, v8, v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v1

    .line 2012
    .local v1, "mdmPolicy":I
    iget-object v2, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v7, v10, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isEmailHTMLAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2013
    .local v2, "isMDMallowed":Z
    iget-boolean v3, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAllowHTMLEmail:Z

    if-eqz v3, :cond_b5

    if-eqz v2, :cond_b5

    if-eqz v1, :cond_b5

    .line 2014
    const/4 v3, 0x0

    .line 2015
    .local v3, "isupdate":Z
    iget v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    if-eqz v4, :cond_82

    iget v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    mul-int/lit16 v5, v1, 0x400

    if-le v4, v5, :cond_a8

    .line 2016
    :cond_82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMaxEmailHTMLBodyTruncationSize() : need to change Account value1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v5, v1, 0x400

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    mul-int/lit16 v4, v1, 0x400

    iput v4, v15, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mMaxEmailHtmlBodyTruncationSize:I

    .line 2018
    const/4 v3, 0x1

    .line 2020
    :cond_a8
    if-eqz v3, :cond_b5

    .line 2021
    iget-object v4, v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v10, v15}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    .line 2022
    const-string/jumbo v4, "setMaxEmailHTMLBodyTruncationSize() : updated account."

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    .end local v3    # "isupdate":Z
    :cond_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMaxEmailHTMLBodyTruncationSize()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return v0
.end method

.method public setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 591
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 592
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 593
    .local v1, "userID":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPassword() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v2, 0x1

    .line 596
    .local v2, "ret":Z
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 597
    const/4 v4, 0x0

    if-nez p2, :cond_30

    .line 598
    const-string/jumbo v5, "setPassword() : Invalid input parameter."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v4

    .line 602
    :cond_30
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v5

    .line 603
    .local v5, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v5, :cond_4e

    .line 604
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPassword_new() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return v4

    .line 607
    :cond_4e
    iput-object p2, v5, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    .line 608
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v5}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v3

    return v3
.end method

.method public setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPastDaysToSync() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    .line 708
    .local v0, "ret":Z
    const/4 v2, 0x1

    if-gt v2, p2, :cond_6f

    const/4 v2, 0x6

    if-ge v2, p2, :cond_23

    goto :goto_6f

    .line 713
    :cond_23
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 714
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_41

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v0

    .line 718
    :cond_41
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    .line 719
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v0

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPastDaysToSync() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , pastDaysToSync = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return v0

    .line 709
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_6f
    :goto_6f
    const-string/jumbo v2, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return v0
.end method

.method public setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 1502
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2077
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 2048
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setReleaseSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JI)Z

    move-result v0

    return v0
.end method

.method public setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequireEncryptedSMIMEMessages () : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1337
    .local v0, "containerId":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1338
    .local v9, "adminUid":I
    const/4 v10, 0x0

    .line 1339
    .local v10, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequireEncryptedSMIMEMessages() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return v10

    .line 1343
    :cond_3c
    const-string v8, "ReqEncryptSmime"

    move-object v2, p0

    move v3, v9

    move v4, v0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    .line 1345
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    if-nez v2, :cond_4f

    .line 1346
    const-string/jumbo v3, "setRequireEncryptedSMIMEMessages() : failed."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_4f
    return v2
.end method

.method public setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .line 1310
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequireSignedSMIMEMessages() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1313
    .local v0, "adminUid":I
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1314
    .local v9, "containerId":I
    const/4 v10, 0x0

    .line 1315
    .local v10, "ret":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isValidEASAccountId(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRequireSignedSMIMEMessages() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v10

    .line 1319
    :cond_3c
    const-string v8, "ReqSigSmime"

    move-object v2, p0

    move v3, v0

    move v4, v9

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    .line 1320
    .end local v10    # "ret":Z
    .local v2, "ret":Z
    if-nez v2, :cond_4f

    .line 1321
    const-string/jumbo v3, "setRequireSignedSMIMEMessages() : failed."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_4f
    return v2
.end method

.method public setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSSL() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 431
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v0, :cond_3a

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSSL_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v1, 0x0

    return v1

    .line 435
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    .line 436
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSenderName() :  deprecated , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSignature() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 637
    .local v0, "containerId":I
    const/4 v2, 0x0

    .line 639
    .local v2, "ret":Z
    if-nez p2, :cond_28

    .line 640
    const-string/jumbo v3, "setSignature() : signature is null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    return v1

    .line 643
    :cond_28
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v3

    .line 644
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v3, :cond_46

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSignature_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return v2

    .line 648
    :cond_46
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v1

    return v1
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilentVibrateOnEmailNotification() : deprecated. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSyncInterval() : deprecated , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSyncPeakTimings() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "ret":Z
    if-ltz p2, :cond_9e

    const/16 v2, 0x7f

    if-le p2, v2, :cond_24

    goto/16 :goto_9e

    .line 833
    :cond_24
    if-ltz p3, :cond_97

    const/16 v2, 0x5a0

    if-le p3, v2, :cond_2b

    goto :goto_97

    .line 837
    :cond_2b
    if-ltz p4, :cond_90

    if-le p4, v2, :cond_30

    goto :goto_90

    .line 842
    :cond_30
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p5, p6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 843
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_4e

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSSL_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return v0

    .line 847
    :cond_4e
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    .line 848
    iput p3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    .line 849
    iput p4, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    .line 850
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v0

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncPeakTimings() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , peakDays ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mPeakStartMinute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", peakEndMinute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", accid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return v0

    .line 838
    .end local v2    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_90
    :goto_90
    const-string/jumbo v2, "setSyncPeakTimings() : peakEndMinute is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    return v0

    .line 834
    :cond_97
    :goto_97
    const-string/jumbo v2, "setSyncPeakTimings() : peakStartMinute is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return v0

    .line 830
    :cond_9e
    :goto_9e
    const-string/jumbo v2, "setSyncPeakTimings() : peakDays is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return v0
.end method

.method public setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .line 871
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSyncSchedules() :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p5, p6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 876
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-nez v2, :cond_3a

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncSchedules_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v0

    .line 880
    :cond_3a
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    .line 881
    iput p3, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    .line 882
    iput p4, v2, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    .line 883
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z

    move-result v0

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncSchedules() : = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ,  peakSyncSchedule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", offPeakSyncSchedule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", roamingSyncSchedule = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", accid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 1706
    return-void
.end method
