.class public Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
.super Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
.source "SmartCardEmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmailAccts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-string v0, "SmartCardEmailPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 73
    return-void
.end method

.method private broadcastIntentAsUser(ZII)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.smartcard.email.authentication"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 585
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 589
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 590
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    return-void
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 83
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 85
    return-object p1
.end method

.method private getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "cert_type"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "emailAddress"    # Ljava/lang/String;

    .line 518
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "signatureCertificateAlias"

    const-string v3, "encryptionCertificateAlias"

    const/4 v4, 0x0

    .line 522
    .local v4, "alias_name":Ljava/lang/String;
    :try_start_a
    iget-object v5, v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_a7

    move/from16 v6, p3

    :try_start_e
    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 524
    .local v5, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 525
    .local v8, "adminId":Ljava/lang/Long;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v9, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "EmailAddress"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_a5

    move-object/from16 v11, p4

    :try_start_2b
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v10, "containerID"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v10, "adminUid"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 530
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    .line 531
    .local v10, "columns":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_49

    .line 532
    aput-object v3, v10, v13

    goto :goto_51

    .line 533
    :cond_49
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 534
    aput-object v0, v10, v13

    .line 537
    :cond_51
    :goto_51
    iget-object v12, v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SmartCardEmailTable"

    invoke-virtual {v12, v14, v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 539
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v12, :cond_83

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_83

    .line 540
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 541
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_65
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_80

    .line 542
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 543
    .local v15, "cv":Landroid/content/ContentValues;
    move-object/from16 v16, v0

    aget-object v0, v10, v13

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 544
    if-eqz v4, :cond_7d

    .line 545
    return-object v4

    .line 546
    .end local v15    # "cv":Landroid/content/ContentValues;
    :cond_7d
    move-object/from16 v0, v16

    goto :goto_65

    .line 541
    :cond_80
    move-object/from16 v16, v0

    goto :goto_85

    .line 539
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_83
    move-object/from16 v16, v0

    .line 548
    .end local v8    # "adminId":Ljava/lang/Long;
    .end local v9    # "cvWhere":Landroid/content/ContentValues;
    .end local v10    # "columns":[Ljava/lang/String;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_85
    move-object/from16 v0, v16

    goto :goto_16

    .line 549
    :cond_88
    move-object/from16 v11, p4

    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAliasName() alias name ="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a1} :catch_a3

    .line 552
    nop

    .end local v5    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_b4

    .line 550
    :catch_a3
    move-exception v0

    goto :goto_ac

    :catch_a5
    move-exception v0

    goto :goto_aa

    :catch_a7
    move-exception v0

    move/from16 v6, p3

    :goto_aa
    move-object/from16 v11, p4

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    :goto_ac
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasName() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b4
    return-object v4
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEmailAcctCountAsUser(IILjava/lang/String;)I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "userID"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;

    .line 558
    const/4 v0, 0x0

    .line 561
    .local v0, "retCnt":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 563
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 564
    .local v3, "adminId":Ljava/lang/Long;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 565
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "emailAuthEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v5, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v5, "adminUid"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 568
    if-eqz p3, :cond_3b

    .line 569
    const-string v5, "EmailAddress"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3b
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardEmailTable"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v0, v5

    .line 572
    .end local v3    # "adminId":Ljava/lang/Long;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    goto :goto_b

    .line 573
    :cond_45
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEmailAcctCountAsUser() count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5c} :catch_5e

    .line 576
    nop

    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_67

    .line 574
    :catch_5e
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getEmailAcctCountAsUser() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_67
    return v0
.end method

.method private isAuthenticationEnabledAsUser(II)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "cnt":I
    if-lez v0, :cond_9

    .line 212
    const/4 v1, 0x1

    return v1

    .line 214
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method private migrationAliasName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 319
    if-nez p1, :cond_3

    .line 320
    return-object p1

    .line 322
    :cond_3
    move-object v0, p1

    .line 324
    .local v0, "migAlias":Ljava/lang/String;
    const-string v1, "Key Management"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 325
    const-string v0, "Identity"

    goto :goto_2f

    .line 326
    :cond_f
    const-string v1, "PIV Authentication"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 327
    const-string v0, "Encryption"

    goto :goto_2f

    .line 328
    :cond_1a
    const-string v1, "Digital Signature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 329
    const-string v0, "Signature"

    goto :goto_2f

    .line 330
    :cond_25
    const-string v1, "Card Authentication"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 331
    const-string v0, "Card ID"

    .line 334
    :cond_2f
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public getSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_4

    .line 306
    return-object v0

    .line 308
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 309
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 311
    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 312
    const-string v3, "encryptionCertificateAlias"

    invoke-direct {p0, v3, v2, v1, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->migrationAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public getSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "alias_name":Ljava/lang/String;
    if-nez p2, :cond_4

    .line 287
    return-object v0

    .line 289
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 290
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 292
    .local v2, "containerId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 293
    const-string/jumbo v3, "signatureCertificateAlias"

    invoke-direct {p0, v3, v2, v1, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->migrationAliasName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method public isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 183
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isAuthenticationEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 202
    .local v0, "userId":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v1

    .line 203
    .local v1, "cnt":I
    if-lez v1, :cond_17

    .line 204
    const/4 v2, 0x1

    return v2

    .line 206
    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method public isCredentialRequired(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 147
    return v0

    .line 149
    :cond_4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 151
    .local v1, "userId":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 171
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v2

    .line 172
    .local v2, "cnt":I
    if-lez v2, :cond_1a

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_1a
    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 595
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 596
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartcardEmail Policy service is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 600
    goto :goto_34

    .line 597
    :catchall_1a
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 601
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 485
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 489
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 490
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v2

    .line 491
    .local v2, "cnt":I
    const/4 v3, 0x0

    .line 492
    .local v3, "enable":Z
    if-nez v2, :cond_13

    .line 493
    return-void

    .line 495
    :cond_13
    invoke-direct {p0, v3, v1, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    .line 496
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 505
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 514
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 501
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .line 509
    return-void
.end method

.method public removeSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .line 440
    const-string v0, "SmartCardEmailTable"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 441
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 442
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 443
    .local v2, "containerId":I
    const/4 v3, 0x0

    .line 445
    .local v3, "alias_name":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez p2, :cond_11

    .line 446
    return v4

    .line 448
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 452
    :try_start_19
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v6, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v6, "EmailAddress"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v6, 0x0

    .line 458
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 460
    .local v7, "cnt":I
    if-lez v7, :cond_56

    .line 462
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v9, "encryptionCertificateAlias"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v0, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_50} :catch_57

    .line 466
    .end local v6    # "ret":Z
    .local v0, "ret":Z
    if-eqz v0, :cond_54

    .line 467
    const/4 v4, 0x1

    return v4

    .line 469
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_54
    nop

    .line 476
    .end local v0    # "ret":Z
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "cnt":I
    goto :goto_60

    .line 471
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    .restart local v6    # "ret":Z
    .restart local v7    # "cnt":I
    :cond_56
    return v4

    .line 474
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    :catch_57
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeSMIMEEncryptionCertificate() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_60
    return v4
.end method

.method public removeSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .line 393
    const-string v0, "SmartCardEmailTable"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 394
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 395
    .local v1, "userId":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 396
    .local v2, "containerId":I
    const/4 v3, 0x0

    .line 398
    .local v3, "alias_name":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez p2, :cond_11

    .line 399
    return v4

    .line 401
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 405
    :try_start_19
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    const-string v6, "containerID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v6, "EmailAddress"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v6, 0x0

    .line 411
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 413
    .local v7, "cnt":I
    if-lez v7, :cond_57

    .line 415
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v8, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "signatureCertificateAlias"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v9, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v0, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_51} :catch_58

    .line 419
    .end local v6    # "ret":Z
    .local v0, "ret":Z
    if-eqz v0, :cond_55

    .line 420
    const/4 v4, 0x1

    return v4

    .line 422
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_55
    nop

    .line 429
    .end local v0    # "ret":Z
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "cnt":I
    goto :goto_61

    .line 424
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    .restart local v6    # "ret":Z
    .restart local v7    # "cnt":I
    :cond_57
    return v4

    .line 427
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    :catch_58
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "removeSMIMESignatureCertificate() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_61
    return v4
.end method

.method public requireCredentials(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "require"    # Z

    .line 92
    move-object/from16 v1, p0

    move/from16 v2, p3

    const-string v0, "SmartCardEmailTable"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    .line 93
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    .line 94
    .local v4, "userId":I
    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 96
    .local v5, "containerId":I
    const/4 v6, 0x0

    if-nez p2, :cond_14

    .line 97
    return v6

    .line 99
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 103
    .end local p2    # "emailAddress":Ljava/lang/String;
    .local v7, "emailAddress":Ljava/lang/String;
    :try_start_1c
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v9, "containerID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v9, "EmailAddress"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v9, 0x0

    .line 109
    .local v9, "ret":Z
    const/4 v10, 0x0

    invoke-direct {v1, v5, v4, v10}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v11

    .line 110
    .local v11, "preCnt":I
    iget-object v12, v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v12
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_46} :catch_8f

    .line 112
    .local v12, "cnt":I
    const-string v13, "emailAuthEnabled"

    const/4 v14, 0x1

    if-lez v12, :cond_65

    .line 114
    :try_start_4b
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v15, "cv":Landroid/content/ContentValues;
    if-ne v2, v14, :cond_55

    move/from16 v16, v14

    goto :goto_57

    :cond_55
    move/from16 v16, v6

    :goto_57
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget-object v6, v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v0, v15, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    .line 118
    .end local v9    # "ret":Z
    .end local v15    # "cv":Landroid/content/ContentValues;
    .local v0, "ret":Z
    goto :goto_77

    .line 120
    .end local v0    # "ret":Z
    .restart local v9    # "ret":Z
    :cond_65
    if-ne v2, v14, :cond_69

    move v6, v14

    goto :goto_6a

    :cond_69
    const/4 v6, 0x0

    :goto_6a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    iget-object v6, v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 125
    .end local v9    # "ret":Z
    .restart local v0    # "ret":Z
    :goto_77
    if-eqz v0, :cond_8e

    .line 127
    invoke-direct {v1, v5, v4, v10}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCountAsUser(IILjava/lang/String;)I

    move-result v6

    .line 128
    .end local v12    # "cnt":I
    .local v6, "cnt":I
    if-nez v11, :cond_85

    if-lez v6, :cond_85

    .line 129
    invoke-direct {v1, v14, v5, v4}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V

    goto :goto_8d

    .line 130
    :cond_85
    if-lez v11, :cond_8d

    if-nez v6, :cond_8d

    .line 131
    const/4 v9, 0x0

    invoke-direct {v1, v9, v5, v4}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntentAsUser(ZII)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8d} :catch_8f

    .line 133
    :cond_8d
    :goto_8d
    return v14

    .line 137
    .end local v0    # "ret":Z
    .end local v6    # "cnt":I
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v11    # "preCnt":I
    :cond_8e
    goto :goto_98

    .line 135
    :catch_8f
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "requireCredentials() failed"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_98
    const/4 v6, 0x0

    return v6
.end method

.method public setForceSMIMEEncryptionCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .line 342
    const-string v0, "encryptionCertificateAlias"

    const-string v1, "SmartCardEmailTable"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 343
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 344
    .local v2, "userId":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 346
    .local v3, "containerId":I
    const/4 v4, 0x0

    if-eqz p2, :cond_69

    if-nez p3, :cond_14

    goto :goto_69

    .line 349
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 353
    :try_start_1c
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v6, "containerID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v6, "EmailAddress"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v6, 0x0

    .line 359
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 361
    .local v7, "cnt":I
    if-lez v7, :cond_5e

    .line 363
    invoke-direct {p0, v0, v3, v2, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, "alias_name":Ljava/lang/String;
    if-nez v8, :cond_5c

    .line 368
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v9, "cv":Landroid/content/ContentValues;
    invoke-virtual {v9, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_5f

    move v6, v0

    .line 372
    if-eqz v6, :cond_5c

    .line 373
    const/4 v0, 0x1

    return v0

    .line 375
    .end local v8    # "alias_name":Ljava/lang/String;
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_5c
    nop

    .line 382
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    goto :goto_68

    .line 377
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    .restart local v6    # "ret":Z
    .restart local v7    # "cnt":I
    :cond_5e
    return v4

    .line 380
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    :catch_5f
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setForceSMIMEEncryptionCertificate() failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    return v4

    .line 347
    :cond_69
    :goto_69
    return v4
.end method

.method public setForceSMIMESignatureCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .line 235
    const-string/jumbo v0, "signatureCertificateAlias"

    const-string v1, "SmartCardEmailTable"

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 237
    .local v2, "userId":I
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 239
    .local v3, "containerId":I
    const/4 v4, 0x0

    if-eqz p2, :cond_6a

    if-nez p3, :cond_15

    goto :goto_6a

    .line 242
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 246
    :try_start_1d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v6, "containerID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v6, "EmailAddress"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 254
    .local v7, "cnt":I
    if-lez v7, :cond_5f

    .line 256
    invoke-direct {p0, v0, v3, v2, p2}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getAliasName(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "alias_name":Ljava/lang/String;
    if-nez v8, :cond_5d

    .line 261
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v9, "cv":Landroid/content/ContentValues;
    invoke-virtual {v9, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_58} :catch_60

    move v6, v0

    .line 265
    if-eqz v6, :cond_5d

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    .end local v8    # "alias_name":Ljava/lang/String;
    .end local v9    # "cv":Landroid/content/ContentValues;
    :cond_5d
    nop

    .line 275
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    goto :goto_69

    .line 270
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    .restart local v6    # "ret":Z
    .restart local v7    # "cnt":I
    :cond_5f
    return v4

    .line 273
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "ret":Z
    .end local v7    # "cnt":I
    :catch_60
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setForceSMIMESignatureCertificate() failed"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    return v4

    .line 240
    :cond_6a
    :goto_6a
    return v4
.end method

.method public systemReady()V
    .registers 1

    .line 227
    return-void
.end method
