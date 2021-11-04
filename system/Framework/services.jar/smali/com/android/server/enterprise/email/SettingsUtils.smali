.class public Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final KNOX_EMAIL_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_EMAIL"

.field static final NEWEMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.samsung.android.email.permission.ACCESS_PROVIDER"

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mServerPasswordFocus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    nop

    .line 94
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 95
    nop

    .line 96
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 97
    nop

    .line 98
    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 101
    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 102
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIDforAccount()J
    .registers 6

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 750
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long/2addr v4, v2

    goto :goto_13

    :cond_12
    move-wide v4, v0

    :goto_13
    move-wide v0, v4

    .line 751
    const-string v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-wide v0
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 51
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "policiesUri"    # Landroid/net/Uri;
    .param p3, "accountId"    # J
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "passwordRequired"    # Z
    .param p7, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 324
    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string/jumbo v0, "value"

    const-string/jumbo v5, "name"

    const-string v6, "_id"

    const/4 v7, 0x0

    .line 325
    .local v7, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v8, 0x0

    .line 326
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 328
    .local v9, "c2":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    const-string v11, "SettingsUtils"

    if-gtz v10, :cond_2f

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v7

    .line 333
    :cond_2f
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 334
    .local v10, "userID":I
    iget v12, v4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 335
    .local v12, "containerId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getEASAccounts() :    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v14, "_id"

    const-string v15, "displayName"

    const-string v16, "emailAddress"

    const-string/jumbo v17, "syncLookback"

    const-string/jumbo v18, "syncInterval"

    const-string/jumbo v19, "peakDays"

    const-string/jumbo v20, "peakStartMinute"

    const-string/jumbo v21, "peakEndMinute"

    const-string/jumbo v22, "peakSchedule"

    const-string/jumbo v23, "offPeakSchedule"

    const-string/jumbo v24, "roamingSchedule"

    const-string/jumbo v25, "hostAuthKeyRecv"

    const-string/jumbo v26, "hostAuthKeySend"

    const-string v27, "flags"

    const-string/jumbo v28, "isDefault"

    const-string v29, "compatibilityUuid"

    const-string/jumbo v30, "senderName"

    const-string/jumbo v31, "ringtoneUri"

    const-string/jumbo v32, "protocolVersion"

    const-string/jumbo v33, "signature"

    const-string v34, "calendarSyncLookback"

    const-string v35, "emailsize"

    const-string/jumbo v36, "roamingemailsize"

    filled-new-array/range {v14 .. v36}, [Ljava/lang/String;

    move-result-object v39

    .line 349
    .local v39, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 351
    .local v13, "token":J
    if-eqz v10, :cond_110

    .line 352
    :try_start_92
    invoke-static {v10, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_ce

    .line 353
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v15
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9c} :catch_106

    move-object/from16 v17, v8

    .end local v8    # "c":Landroid/database/Cursor;
    .local v17, "c":Landroid/database/Cursor;
    :try_start_9e
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v10}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a3} :catch_c6

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v18, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_a6
    invoke-virtual {v3, v15, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    sput-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAccountDetails for Persona : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_116

    .line 364
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catch_c6
    move-exception v0

    move-object/from16 v18, v7

    move-wide/from16 v25, v13

    move-object v14, v9

    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_41a

    .line 356
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_ce
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    iget v7, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v10}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v15, 0x0

    invoke-virtual {v3, v7, v15, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAccountDetails : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ff} :catch_100

    goto :goto_116

    .line 364
    :catch_100
    move-exception v0

    move-wide/from16 v25, v13

    move-object v14, v9

    goto/16 :goto_41a

    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_106
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_41a

    .line 361
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_110
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_114
    sput-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_116} :catch_416

    .line 368
    :goto_116
    nop

    .line 370
    :try_start_117
    sget-object v7, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v38, p1

    invoke-virtual/range {v37 .. v42}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_138} :catch_3f1
    .catchall {:try_start_117 .. :try_end_138} :catchall_3e8

    move-object v8, v7

    .line 372
    .end local v17    # "c":Landroid/database/Cursor;
    .restart local v8    # "c":Landroid/database/Cursor;
    if-eqz v8, :cond_163

    .line 373
    :try_start_13b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getAccount row count : "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_154} :catch_15c
    .catchall {:try_start_13b .. :try_end_154} :catchall_155

    goto :goto_169

    .line 457
    :catchall_155
    move-exception v0

    move-wide/from16 v25, v13

    move-object/from16 v7, v18

    goto/16 :goto_40b

    .line 454
    :catch_15c
    move-exception v0

    move-wide/from16 v25, v13

    move-object/from16 v7, v18

    goto/16 :goto_3f9

    .line 375
    :cond_163
    :try_start_163
    const-string/jumbo v7, "getAccount row count : Email cursor is invalid"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_169
    if-eqz v8, :cond_3c1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_3c1

    .line 378
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    new-instance v7, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v7}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_179} :catch_3df
    .catchall {:try_start_163 .. :try_end_179} :catchall_3d6

    .line 380
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_179
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 381
    const-string v15, "displayName"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 382
    const-string v15, "emailAddress"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 383
    const-string/jumbo v15, "syncLookback"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 384
    const-string/jumbo v15, "syncInterval"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 385
    const-string/jumbo v15, "peakDays"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 386
    const-string/jumbo v15, "peakStartMinute"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 387
    const-string/jumbo v15, "peakEndMinute"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 388
    const-string/jumbo v15, "peakSchedule"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 389
    const-string/jumbo v15, "offPeakSchedule"

    .line 390
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 389
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 391
    const-string/jumbo v15, "roamingSchedule"

    .line 392
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 391
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 393
    const-string/jumbo v15, "hostAuthKeyRecv"

    .line 394
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_20a} :catch_3ba
    .catchall {:try_start_179 .. :try_end_20a} :catchall_3b2

    .line 393
    move-wide/from16 v25, v13

    .end local v13    # "token":J
    .local v25, "token":J
    :try_start_20c
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 395
    const-string/jumbo v13, "hostAuthKeySend"

    .line 396
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 395
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 397
    const-string v13, "flags"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 398
    iget v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v14, 0x2

    and-int/2addr v13, v14

    const/4 v15, 0x1

    if-ne v14, v13, :cond_234

    move v13, v15

    goto :goto_235

    :cond_234
    const/4 v13, 0x0

    :goto_235
    iput-boolean v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 399
    iget v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/16 v14, 0x40

    and-int/2addr v13, v14

    if-ne v14, v13, :cond_240

    move v13, v15

    goto :goto_241

    :cond_240
    const/4 v13, 0x0

    :goto_241
    iput-boolean v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 400
    const-string/jumbo v13, "isDefault"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v15, :cond_252

    move v13, v15

    goto :goto_253

    :cond_252
    const/4 v13, 0x0

    :goto_253
    iput-boolean v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 401
    const-string v13, "compatibilityUuid"

    .line 402
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 401
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 403
    const-string/jumbo v13, "senderName"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 404
    const-string/jumbo v13, "ringtoneUri"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 405
    const-string/jumbo v13, "protocolVersion"

    .line 406
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 405
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 407
    const-string/jumbo v13, "signature"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 408
    const-string v13, "calendarSyncLookback"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 409
    const-string v13, "emailsize"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 410
    const-string/jumbo v13, "roamingemailsize"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 413
    iget-wide v13, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/16 v23, 0x1

    sget-object v24, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v19, p0

    move-wide/from16 v20, v13

    move-object/from16 v22, v7

    invoke-static/range {v19 .. v24}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v13
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_2ca} :catch_3ad
    .catchall {:try_start_20c .. :try_end_2ca} :catchall_3a7

    .line 414
    .local v13, "ret1":Z
    move-object/from16 v17, v8

    move-object v14, v9

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .local v14, "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    :try_start_2cd
    iget-wide v8, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v19, p0

    move-wide/from16 v20, v8

    move-object/from16 v22, v7

    invoke-static/range {v19 .. v24}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v8

    .line 416
    .local v8, "ret2":Z
    if-eqz v13, :cond_388

    if-nez v8, :cond_2e3

    goto/16 :goto_388

    .line 422
    :cond_2e3
    if-eqz p6, :cond_2f3

    .line 423
    invoke-static {v12, v1, v2, v3, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, "pwds":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v15, v9, v11

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 425
    const/4 v11, 0x1

    aget-object v15, v9, v11

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 428
    .end local v9    # "pwds":[Ljava/lang/String;
    :cond_2f3
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 429
    iget-object v9, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v11, "eas"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_316

    .line 430
    iget-object v9, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, "ret":[Ljava/lang/String;
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 432
    const/4 v15, 0x0

    aget-object v15, v9, v15

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 433
    aget-object v15, v9, v11

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 434
    aget-object v15, v9, v11

    iput-object v15, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 436
    .end local v9    # "ret":[Ljava/lang/String;
    :cond_316
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 437
    const-string/jumbo v9, "type"

    const-string v11, "account_id"

    filled-new-array {v6, v5, v9, v0, v11}, [Ljava/lang/String;

    move-result-object v20

    .line 439
    .local v20, "POLICIES_PROJECTION":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "account_id = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p2

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_343} :catch_3a1
    .catchall {:try_start_2cd .. :try_end_343} :catchall_39b

    move-object v9, v6

    .line 440
    .end local v14    # "c2":Landroid/database/Cursor;
    .local v9, "c2":Landroid/database/Cursor;
    if-eqz v9, :cond_3c9

    :try_start_346
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3c9

    .line 441
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3c9

    .line 443
    :cond_352
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "policyvalue":Ljava/lang/String;
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, "policyname":Ljava/lang/String;
    if-eqz v11, :cond_377

    if-eqz v6, :cond_377

    .line 446
    const-string v14, "AllowHTMLEmail"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_377

    .line 447
    const-string/jumbo v14, "true"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    iput-boolean v14, v7, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 450
    .end local v6    # "policyvalue":Ljava/lang/String;
    .end local v11    # "policyname":Ljava/lang/String;
    :cond_377
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_346 .. :try_end_37b} :catch_383
    .catchall {:try_start_346 .. :try_end_37b} :catchall_37e

    if-nez v6, :cond_352

    goto :goto_3c9

    .line 457
    .end local v8    # "ret2":Z
    .end local v13    # "ret1":Z
    .end local v20    # "POLICIES_PROJECTION":[Ljava/lang/String;
    :catchall_37e
    move-exception v0

    move-object/from16 v8, v17

    goto/16 :goto_40b

    .line 454
    :catch_383
    move-exception v0

    move-object/from16 v8, v17

    goto/16 :goto_3f9

    .line 417
    .end local v9    # "c2":Landroid/database/Cursor;
    .restart local v8    # "ret2":Z
    .restart local v13    # "ret1":Z
    .restart local v14    # "c2":Landroid/database/Cursor;
    :cond_388
    :goto_388
    const/4 v7, 0x0

    .line 418
    :try_start_389
    const-string/jumbo v0, "getAccountIds : null "

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38f
    .catch Ljava/lang/Exception; {:try_start_389 .. :try_end_38f} :catch_3a1
    .catchall {:try_start_389 .. :try_end_38f} :catchall_39b

    .line 419
    nop

    .line 457
    if-eqz v17, :cond_395

    .line 458
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_395
    if-eqz v14, :cond_39a

    .line 460
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_39a
    return-object v7

    .line 457
    .end local v8    # "ret2":Z
    .end local v13    # "ret1":Z
    :catchall_39b
    move-exception v0

    move-object v9, v14

    move-object/from16 v8, v17

    goto/16 :goto_40b

    .line 454
    :catch_3a1
    move-exception v0

    move-object v9, v14

    move-object/from16 v8, v17

    goto/16 :goto_3f9

    .line 457
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .local v8, "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    :catchall_3a7
    move-exception v0

    move-object/from16 v17, v8

    move-object v14, v9

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    goto/16 :goto_40b

    .line 454
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    :catch_3ad
    move-exception v0

    move-object/from16 v17, v8

    move-object v14, v9

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    goto :goto_3f9

    .line 457
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    .local v13, "token":J
    :catchall_3b2
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    goto/16 :goto_40b

    .line 454
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v13    # "token":J
    :catch_3ba
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    goto :goto_3f9

    .line 377
    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v13    # "token":J
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_3c1
    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    .line 457
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    move-object v9, v14

    move-object/from16 v7, v18

    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v9    # "c2":Landroid/database/Cursor;
    :cond_3c9
    :goto_3c9
    if-eqz v17, :cond_3ce

    .line 458
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_3ce
    if-eqz v9, :cond_3d3

    .line 460
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_3d3
    move-object/from16 v8, v17

    goto :goto_406

    .line 457
    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v13    # "token":J
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_3d6
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    move-object/from16 v7, v18

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    goto :goto_40b

    .line 454
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v13    # "token":J
    :catch_3df
    move-exception v0

    move-object/from16 v17, v8

    move-wide/from16 v25, v13

    move-object v14, v9

    move-object/from16 v7, v18

    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    goto :goto_3f9

    .line 457
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v13    # "token":J
    :catchall_3e8
    move-exception v0

    move-wide/from16 v25, v13

    move-object v14, v9

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v25    # "token":J
    goto :goto_40b

    .line 454
    .end local v14    # "c2":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v9    # "c2":Landroid/database/Cursor;
    .restart local v13    # "token":J
    :catch_3f1
    move-exception v0

    move-wide/from16 v25, v13

    move-object v14, v9

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    .line 455
    .end local v13    # "token":J
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v25    # "token":J
    :goto_3f9
    :try_start_3f9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3fc
    .catchall {:try_start_3f9 .. :try_end_3fc} :catchall_40a

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_401

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_401
    if-eqz v9, :cond_406

    .line 460
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_406
    :goto_406
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    return-object v7

    .line 457
    :catchall_40a
    move-exception v0

    :goto_40b
    if-eqz v8, :cond_410

    .line 458
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_410
    if-eqz v9, :cond_415

    .line 460
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_415
    throw v0

    .line 364
    .end local v7    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v25    # "token":J
    .restart local v13    # "token":J
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catch_416
    move-exception v0

    move-wide/from16 v25, v13

    move-object v14, v9

    .line 365
    .end local v9    # "c2":Landroid/database/Cursor;
    .end local v13    # "token":J
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v14    # "c2":Landroid/database/Cursor;
    .restart local v25    # "token":J
    :goto_41a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    return-object v18
.end method

.method public static getAccountContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 14
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    .line 305
    :try_start_3
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 306
    .local v1, "containerId":I
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 307
    .local v2, "hostUri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 308
    .local v3, "acctUri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 309
    .local v4, "policiesUri":Landroid/net/Uri;
    const/4 v8, 0x0

    move-wide v5, p1

    move-object v7, p3

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object v5

    .line 304
    .end local v1    # "containerId":I
    .end local v2    # "hostUri":Landroid/net/Uri;
    .end local v3    # "acctUri":Landroid/net/Uri;
    .end local v4    # "policiesUri":Landroid/net/Uri;
    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "accountId":J
    .end local p3    # "context":Landroid/content/Context;
    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 16
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    .line 314
    :try_start_3
    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v10, v2

    .line 315
    .local v10, "containerId":I
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getAccountDetails() :  with P"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 317
    .local v2, "hostUri":Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 318
    .local v3, "acctUri":Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 319
    .local v4, "policiesUri":Landroid/net/Uri;
    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    move-object v9, p0

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v1

    return-object v5

    .line 313
    .end local v2    # "hostUri":Landroid/net/Uri;
    .end local v3    # "acctUri":Landroid/net/Uri;
    .end local v4    # "policiesUri":Landroid/net/Uri;
    .end local v10    # "containerId":I
    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "accountId":J
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "passwordRequired":Z
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;
    .registers 8
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAccountFromEnterpriseEmailAccount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "acc":Lcom/samsung/android/knox/accounts/Account;
    if-nez p0, :cond_1b

    .line 909
    return-object v0

    .line 911
    :cond_1b
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    move-object v0, v1

    .line 912
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 913
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 914
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 915
    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 916
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 917
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 918
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 919
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 920
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 921
    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 922
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 923
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 924
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 925
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 926
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 927
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 928
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 929
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 931
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 932
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 933
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 934
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 935
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 936
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 937
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 938
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 939
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 940
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 941
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 942
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 943
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 945
    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 946
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 947
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 948
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 949
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 950
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 951
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 952
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 953
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 954
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 955
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 956
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 957
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 959
    return-object v0
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;
    .registers 10
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "acc":Lcom/samsung/android/knox/accounts/Account;
    if-nez p0, :cond_1b

    .line 967
    return-object v0

    .line 969
    :cond_1b
    new-instance v1, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    move-object v0, v1

    .line 970
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 971
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 972
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 973
    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 974
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 975
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 976
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 977
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 978
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 979
    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 980
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 981
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 982
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 983
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 984
    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 985
    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 986
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    .line 987
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    .line 988
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    .line 989
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    .line 990
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    .line 991
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    .line 992
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    .line 993
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    .line 994
    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    .line 995
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    .line 996
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    .line 997
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    .line 998
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    .line 999
    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 1000
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 1002
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1003
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1004
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const-string v7, "eas"

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1005
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1006
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1007
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1008
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1009
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1010
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1011
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1012
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1013
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1014
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1016
    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1017
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1018
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1019
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1020
    iget-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1021
    iget-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1022
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1023
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1024
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1025
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1026
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1027
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1028
    iget-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v2, v1, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1030
    return-object v0
.end method

.method static declared-synchronized getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 19
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    .line 193
    move-object v0, p0

    :try_start_4
    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v11, v2

    .line 194
    .local v11, "containerId":I
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 195
    .local v2, "hostUri":Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, "acctUri":Landroid/net/Uri;
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, p0

    invoke-static/range {v2 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v4
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_3a

    monitor-exit v1

    return-wide v4

    .line 192
    .end local v2    # "hostUri":Landroid/net/Uri;
    .end local v3    # "acctUri":Landroid/net/Uri;
    .end local v11    # "containerId":I
    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "easDomain":Ljava/lang/String;
    .end local p2    # "user":Ljava/lang/String;
    .end local p3    # "serverAddress":Ljava/lang/String;
    .end local p4    # "protocol":Ljava/lang/String;
    .end local p5    # "isEas":Z
    .end local p6    # "context":Landroid/content/Context;
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J
    .registers 43
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 204
    move-object/from16 v1, p7

    move-object/from16 v2, p8

    const-wide/16 v3, -0x1

    .line 205
    .local v3, "accountId":J
    const/4 v5, 0x0

    .line 207
    .local v5, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .end local p2    # "easDomain":Ljava/lang/String;
    .local v6, "easDomain":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .end local p3    # "user":Ljava/lang/String;
    .local v0, "user":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .end local p4    # "serverAddress":Ljava/lang/String;
    .local v7, "serverAddress":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .end local p5    # "protocol":Ljava/lang/String;
    .local v8, "protocol":Ljava/lang/String;
    const-string v9, "SettingsUtils"

    if-eqz v0, :cond_211

    if-eqz v7, :cond_211

    if-nez v8, :cond_25

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    goto/16 :goto_215

    .line 216
    :cond_25
    if-eqz p6, :cond_3f

    if-eqz v6, :cond_3f

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\\"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_40

    .line 219
    :cond_3f
    move-object v10, v0

    .end local v0    # "user":Ljava/lang/String;
    .local v10, "user":Ljava/lang/String;
    :goto_40
    const-string v11, "_id"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v14

    .line 223
    .local v14, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v0, v15

    const/16 v18, 0x1

    aput-object v7, v0, v18

    const/4 v13, 0x2

    aput-object v10, v0, v13

    move-object/from16 v16, v0

    .line 227
    .local v16, "selectionArgs":[Ljava/lang/String;
    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 228
    .local v12, "callingUID":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v15

    .line 229
    .local v15, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 230
    .local v19, "token":J
    const-wide/16 v21, -0x1

    .line 232
    .local v21, "hostAuthId":J
    if-eqz v15, :cond_e6

    .line 233
    :try_start_63
    invoke-static {v15, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_db

    const-string/jumbo v13, "getAccountIdInternal : USER space   "

    if-eqz v0, :cond_a5

    .line 234
    :try_start_6c
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_db

    move-object/from16 v23, v5

    .end local v5    # "c":Landroid/database/Cursor;
    .local v23, "c":Landroid/database/Cursor;
    :try_start_74
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_79} :catch_9c

    move-object/from16 v24, v6

    const/4 v6, 0x0

    .end local v6    # "easDomain":Ljava/lang/String;
    .local v24, "easDomain":Ljava/lang/String;
    :try_start_7c
    invoke-virtual {v1, v0, v6, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_ed

    .line 245
    .end local v24    # "easDomain":Ljava/lang/String;
    .restart local v6    # "easDomain":Ljava/lang/String;
    :catch_9c
    move-exception v0

    move-object/from16 v24, v6

    move/from16 v25, v12

    move/from16 v26, v15

    .end local v6    # "easDomain":Ljava/lang/String;
    .restart local v24    # "easDomain":Ljava/lang/String;
    goto/16 :goto_20d

    .line 237
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "easDomain":Ljava/lang/String;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "easDomain":Ljava/lang/String;
    :cond_a5
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "easDomain":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "easDomain":Ljava/lang/String;
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_d3} :catch_d4

    goto :goto_ed

    .line 245
    :catch_d4
    move-exception v0

    move/from16 v25, v12

    move/from16 v26, v15

    goto/16 :goto_20d

    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "easDomain":Ljava/lang/String;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "easDomain":Ljava/lang/String;
    :catch_db
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v12

    move/from16 v26, v15

    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "easDomain":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "easDomain":Ljava/lang/String;
    goto/16 :goto_20d

    .line 243
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "easDomain":Ljava/lang/String;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "easDomain":Ljava/lang/String;
    :cond_e6
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    const/4 v6, 0x0

    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "easDomain":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "easDomain":Ljava/lang/String;
    :try_start_eb
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ed} :catch_208

    .line 248
    :goto_ed
    nop

    .line 250
    :try_start_ee
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "protocol=? AND address=? AND login=? "
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_16b
    .catchall {:try_start_ee .. :try_end_f7} :catchall_162

    const/16 v17, 0x0

    move/from16 v25, v12

    .end local v12    # "callingUID":I
    .local v25, "callingUID":I
    move-object v12, v0

    const/4 v6, 0x2

    move-object/from16 v13, p0

    move/from16 v26, v15

    const/16 v27, 0x0

    .end local v15    # "userID":I
    .local v26, "userID":I
    move-object v15, v5

    :try_start_104
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_108} :catch_15e
    .catchall {:try_start_104 .. :try_end_108} :catchall_159

    move-object v5, v0

    .line 255
    .end local v23    # "c":Landroid/database/Cursor;
    .restart local v5    # "c":Landroid/database/Cursor;
    :try_start_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 257
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_130} :catch_157
    .catchall {:try_start_109 .. :try_end_130} :catchall_201

    int-to-long v12, v0

    .line 258
    .end local v21    # "hostAuthId":J
    .local v12, "hostAuthId":J
    :try_start_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_145} :catch_14d
    .catchall {:try_start_131 .. :try_end_145} :catchall_148

    move-wide/from16 v21, v12

    goto :goto_151

    .line 263
    :catchall_148
    move-exception v0

    move-wide/from16 v21, v12

    goto/16 :goto_202

    .line 260
    :catch_14d
    move-exception v0

    move-wide/from16 v21, v12

    goto :goto_175

    .line 263
    .end local v12    # "hostAuthId":J
    .restart local v21    # "hostAuthId":J
    :cond_151
    :goto_151
    if-eqz v5, :cond_17b

    .line 264
    :goto_153
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_17b

    .line 260
    :catch_157
    move-exception v0

    goto :goto_175

    .line 263
    .end local v5    # "c":Landroid/database/Cursor;
    .restart local v23    # "c":Landroid/database/Cursor;
    :catchall_159
    move-exception v0

    move-object/from16 v5, v23

    goto/16 :goto_202

    .line 260
    :catch_15e
    move-exception v0

    move-object/from16 v5, v23

    goto :goto_175

    .line 263
    .end local v25    # "callingUID":I
    .end local v26    # "userID":I
    .local v12, "callingUID":I
    .restart local v15    # "userID":I
    :catchall_162
    move-exception v0

    move/from16 v25, v12

    move/from16 v26, v15

    move-object/from16 v5, v23

    .end local v12    # "callingUID":I
    .end local v15    # "userID":I
    .restart local v25    # "callingUID":I
    .restart local v26    # "userID":I
    goto/16 :goto_202

    .line 260
    .end local v25    # "callingUID":I
    .end local v26    # "userID":I
    .restart local v12    # "callingUID":I
    .restart local v15    # "userID":I
    :catch_16b
    move-exception v0

    move/from16 v27, v6

    move/from16 v25, v12

    move/from16 v26, v15

    const/4 v6, 0x2

    move-object/from16 v5, v23

    .line 261
    .end local v12    # "callingUID":I
    .end local v15    # "userID":I
    .end local v23    # "c":Landroid/database/Cursor;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v25    # "callingUID":I
    .restart local v26    # "userID":I
    :goto_175
    :try_start_175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_201

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_17b

    .line 264
    goto :goto_153

    .line 266
    :cond_17b
    :goto_17b
    const/4 v5, 0x0

    .line 268
    const-wide/16 v12, -0x1

    cmp-long v0, v12, v21

    if-eqz v0, :cond_1f9

    .line 269
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v30

    .line 272
    .end local v14    # "ID_PROJECTION":[Ljava/lang/String;
    .local v30, "ID_PROJECTION":[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 273
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v27

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v18

    move-object/from16 v32, v0

    .line 276
    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .local v32, "selectionArgs":[Ljava/lang/String;
    :try_start_196
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v31, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/16 v33, 0x0

    move-object/from16 v29, p1

    invoke-virtual/range {v28 .. v33}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 283
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1e4} :catch_1ec
    .catchall {:try_start_196 .. :try_end_1e4} :catchall_1ea

    .line 289
    :cond_1e4
    if-eqz v5, :cond_1fd

    .line 290
    :goto_1e6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1fd

    .line 289
    :catchall_1ea
    move-exception v0

    goto :goto_1f3

    .line 286
    :catch_1ec
    move-exception v0

    .line 287
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1ed
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1ea

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_1fd

    .line 290
    goto :goto_1e6

    .line 289
    :goto_1f3
    if-eqz v5, :cond_1f8

    .line 290
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_1f8
    throw v0

    .line 268
    .end local v30    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v32    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v16    # "selectionArgs":[Ljava/lang/String;
    :cond_1f9
    move-object/from16 v30, v14

    move-object/from16 v32, v16

    .line 293
    .end local v14    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .restart local v30    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v32    # "selectionArgs":[Ljava/lang/String;
    :cond_1fd
    :goto_1fd
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    return-wide v3

    .line 263
    .end local v30    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v32    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v16    # "selectionArgs":[Ljava/lang/String;
    :catchall_201
    move-exception v0

    :goto_202
    if-eqz v5, :cond_207

    .line 264
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_207
    throw v0

    .line 245
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v25    # "callingUID":I
    .end local v26    # "userID":I
    .restart local v12    # "callingUID":I
    .restart local v15    # "userID":I
    .restart local v23    # "c":Landroid/database/Cursor;
    :catch_208
    move-exception v0

    move/from16 v25, v12

    move/from16 v26, v15

    .line 246
    .end local v12    # "callingUID":I
    .end local v15    # "userID":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v25    # "callingUID":I
    .restart local v26    # "userID":I
    :goto_20d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    return-wide v3

    .line 212
    .end local v10    # "user":Ljava/lang/String;
    .end local v14    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .end local v19    # "token":J
    .end local v21    # "hostAuthId":J
    .end local v23    # "c":Landroid/database/Cursor;
    .end local v24    # "easDomain":Ljava/lang/String;
    .end local v25    # "callingUID":I
    .end local v26    # "userID":I
    .local v0, "user":Ljava/lang/String;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "easDomain":Ljava/lang/String;
    :cond_211
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 213
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "easDomain":Ljava/lang/String;
    .restart local v23    # "c":Landroid/database/Cursor;
    .restart local v24    # "easDomain":Ljava/lang/String;
    :goto_215
    const-string/jumbo v5, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-wide v3
.end method

.method public static getAccountType(ZI)Ljava/lang/String;
    .registers 3
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .line 615
    if-eqz p0, :cond_5

    const-string v0, "com.samsung.android.exchange"

    goto :goto_7

    :cond_5
    const-string v0, "com.samsung.android.email"

    :goto_7
    return-object v0
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "login"    # Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 532
    if-eqz p0, :cond_45

    .line 533
    const-string v1, "\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_43

    .line 534
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_42

    array-length v2, v1

    if-lez v2, :cond_42

    .line 536
    const/4 v2, 0x2

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_37

    .line 537
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 538
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_42

    .line 539
    :cond_37
    array-length v2, v1

    if-ne v3, v2, :cond_42

    .line 540
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 543
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_42
    :goto_42
    goto :goto_45

    .line 544
    :cond_43
    aput-object p0, v0, v3

    .line 547
    :cond_45
    :goto_45
    return-object v0
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .line 611
    const-string v0, "com.samsung.android.email.provider"

    return-object v0
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .line 604
    const-string v0, "com.samsung.android.email.provider"

    return-object v0
.end method

.method public static getHostAuthContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .registers 4
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "acc":Lcom/samsung/android/knox/accounts/LDAPAccount;
    if-nez p0, :cond_5

    .line 1036
    const/4 v1, 0x0

    return-object v1

    .line 1037
    :cond_5
    new-instance v1, Lcom/samsung/android/knox/accounts/LDAPAccount;

    invoke-direct {v1}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>()V

    move-object v0, v1

    .line 1038
    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    .line 1039
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    .line 1040
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    .line 1041
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    .line 1042
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    .line 1043
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    .line 1044
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    .line 1045
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 1046
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 1047
    return-object v0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p0, "uid"    # I

    .line 149
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_20

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPackageNameForUid :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    return-object v0

    .line 153
    :cond_20
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .registers 14
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userID"    # I

    .line 643
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 644
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 645
    .local v4, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    .line 647
    .local v7, "ret":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v1, v7, v0}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    move-object v8, v1

    .line 675
    .local v8, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 677
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 679
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 682
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    const-string v3, "SettingsUtils"

    if-eqz v2, :cond_49

    .line 683
    const-string/jumbo v2, "password obtained"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 685
    :cond_49
    const-string/jumbo v2, "timeout while obtaining password"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_4f
    invoke-virtual {p3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    return-object v7
.end method

.method public static getPoliciesContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .registers 22
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isSigning"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-class v3, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v3

    .line 553
    const/4 v4, 0x0

    .line 554
    .local v4, "alias":Ljava/lang/String;
    const/4 v5, 0x0

    .line 556
    .local v5, "c":Landroid/database/Cursor;
    :try_start_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v6, v0

    .line 557
    .local v6, "userID":I
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v7, v0

    .line 558
    .local v7, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 559
    .local v8, "token":J
    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v10, 0x0

    aput-object v0, v12, v10

    const/4 v0, 0x1

    .line 561
    if-eqz p4, :cond_24

    const-string/jumbo v11, "smimeOwnSignCertAlias"

    goto :goto_27

    :cond_24
    const-string/jumbo v11, "smimeOwnCertificateAlias"

    :goto_27
    aput-object v11, v12, v0
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_11b

    .line 565
    .local v12, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v6, :cond_8b

    .line 566
    :try_start_2b
    invoke-static {v6, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 567
    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 569
    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSMIMEAlias : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 571
    :cond_5c
    iget v0, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 572
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 571
    invoke-virtual {v2, v0, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 573
    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSMIMEAlias : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 574
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 573
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 577
    :cond_8b
    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 578
    const-string v0, "SettingsUtils"

    const-string/jumbo v10, "getSMIMEAlias : get Context with no MUM Enviroment."

    invoke-static {v0, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_95
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v14, v0

    move-object/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 583
    if-eqz v5, :cond_f5

    .line 584
    const-string v0, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAccount row count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_f5

    .line 586
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 587
    if-eqz p4, :cond_e9

    const-string/jumbo v0, "smimeOwnSignCertAlias"

    goto :goto_ec

    .line 588
    :cond_e9
    const-string/jumbo v0, "smimeOwnCertificateAlias"

    .line 587
    :goto_ec
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_f4} :catch_100
    .catchall {:try_start_2b .. :try_end_f4} :catchall_fe

    move-object v4, v0

    .line 595
    :cond_f5
    :try_start_f5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    if-eqz v5, :cond_110

    .line 597
    :goto_fa
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_fd
    .catchall {:try_start_f5 .. :try_end_fd} :catchall_11b

    goto :goto_110

    .line 595
    :catchall_fe
    move-exception v0

    goto :goto_112

    .line 591
    :catch_100
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    :try_start_101
    const-string v10, "SettingsUtils"

    const-string/jumbo v11, "getSMIMEAlias() : failed. "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_fe

    .line 593
    const/4 v4, 0x0

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_10a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_11b

    .line 596
    if-eqz v5, :cond_110

    .line 597
    goto :goto_fa

    .line 600
    :cond_110
    :goto_110
    monitor-exit v3

    return-object v4

    .line 595
    :goto_112
    :try_start_112
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    if-eqz v5, :cond_11a

    .line 597
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_11a
    throw v0
    :try_end_11b
    .catchall {:try_start_112 .. :try_end_11b} :catchall_11b

    .line 552
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "userID":I
    .end local v7    # "containerId":I
    .end local v8    # "token":J
    .end local v12    # "ID_PROJECTION":[Ljava/lang/String;
    .end local p0    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p1    # "accountId":J
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "isSigning":Z
    :catchall_11b
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static getSMIMEModeFromAction(Ljava/lang/String;)I
    .registers 3
    .param p0, "Action"    # Ljava/lang/String;

    .line 854
    const/4 v0, -0x1

    .line 855
    .local v0, "ret":I
    if-eqz p0, :cond_20

    .line 856
    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 858
    const/4 v0, 0x1

    goto :goto_20

    .line 860
    :cond_d
    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 862
    const/4 v0, 0x2

    goto :goto_20

    .line 864
    :cond_17
    const-string v1, "com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 866
    const/4 v0, 0x3

    .line 869
    :cond_20
    :goto_20
    return v0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "caller"    # Ljava/lang/String;

    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, "password":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 712
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 716
    goto :goto_1a

    .line 713
    :catch_10
    move-exception v1

    .line 714
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSecurityPassword() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x0

    .line 717
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return-object v0
.end method

.method public static getSecurityPasswordFocus(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "caller"    # Ljava/lang/String;

    .line 737
    const/4 v0, 0x0

    .line 739
    .local v0, "password":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 740
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    .line 744
    goto :goto_1a

    .line 741
    :catch_10
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSecurityPasswordFocus() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    .line 745
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return-object v0
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .registers 13
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "mEmailBodyTruncationSize"    # I

    .line 757
    const/4 v0, 0x6

    const/16 v1, 0x64

    const/16 v2, 0x32

    const/16 v3, 0x14

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/4 v6, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eqz p0, :cond_2d

    const-string v10, "2.5"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 759
    if-gt p1, v7, :cond_1b

    .line 760
    return v7

    .line 761
    :cond_1b
    if-gt p1, v9, :cond_1e

    .line 762
    return v4

    .line 763
    :cond_1e
    if-gt p1, v5, :cond_21

    .line 764
    return v8

    .line 765
    :cond_21
    if-gt p1, v3, :cond_24

    .line 766
    return v9

    .line 767
    :cond_24
    if-gt p1, v2, :cond_27

    .line 768
    return v0

    .line 769
    :cond_27
    if-gt p1, v1, :cond_2a

    .line 770
    return v6

    .line 772
    :cond_2a
    const/16 v0, 0x8

    return v0

    .line 774
    :cond_2d
    if-gt p1, v8, :cond_31

    .line 775
    const/4 v0, 0x0

    return v0

    .line 776
    :cond_31
    if-gt p1, v9, :cond_35

    .line 777
    const/4 v0, 0x1

    return v0

    .line 778
    :cond_35
    if-gt p1, v6, :cond_38

    .line 779
    return v7

    .line 780
    :cond_38
    if-gt p1, v5, :cond_3b

    .line 781
    return v4

    .line 782
    :cond_3b
    if-gt p1, v3, :cond_3e

    .line 783
    return v8

    .line 784
    :cond_3e
    if-gt p1, v2, :cond_41

    .line 785
    return v9

    .line 786
    :cond_41
    if-gt p1, v1, :cond_44

    .line 787
    return v0

    .line 789
    :cond_44
    return v6
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .registers 10
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 794
    const v0, 0x7fffffff

    const/16 v1, 0x64

    const/16 v2, 0x32

    const/16 v3, 0x14

    const/16 v4, 0xa

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz p0, :cond_23

    const-string v7, "2.5"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 796
    packed-switch p1, :pswitch_data_32

    .line 815
    return v0

    .line 813
    :pswitch_1b
    return v1

    .line 811
    :pswitch_1c
    return v2

    .line 809
    :pswitch_1d
    return v3

    .line 807
    :pswitch_1e
    return v4

    .line 805
    :pswitch_1f
    return v5

    .line 803
    :pswitch_20
    const/4 v0, 0x2

    return v0

    .line 801
    :pswitch_22
    return v6

    .line 819
    :cond_23
    packed-switch p1, :pswitch_data_48

    .line 838
    return v0

    .line 836
    :pswitch_27
    return v1

    .line 834
    :pswitch_28
    return v2

    .line 832
    :pswitch_29
    return v3

    .line 830
    :pswitch_2a
    return v4

    .line 828
    :pswitch_2b
    const/4 v0, 0x7

    return v0

    .line 826
    :pswitch_2d
    return v5

    .line 824
    :pswitch_2e
    const/4 v0, 0x4

    return v0

    .line 822
    :pswitch_30
    return v6

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2e
        :pswitch_2d
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    goto :goto_10

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    if-lez v1, :cond_3

    move-object v0, p0

    :goto_10
    return-object v0

    .line 142
    :catch_11
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "emailAddress"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .line 893
    const/4 v0, 0x1

    .line 894
    .local v0, "ret":Z
    nop

    .line 895
    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 896
    .local v1, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v1, :cond_18

    .line 897
    const/4 v2, 0x0

    invoke-static {v2, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    .line 899
    const/4 v0, 0x0

    .line 901
    :cond_18
    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 872
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 873
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 874
    .local v1, "token":J
    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 876
    :try_start_b
    invoke-interface {v0, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_1d
    .catchall {:try_start_b .. :try_end_f} :catchall_1b

    .line 877
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_16

    .line 878
    const/4 v3, 0x1

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    return v3

    .line 880
    :cond_16
    nop

    .line 885
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    return v3

    .line 885
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_1b
    move-exception v3

    goto :goto_2a

    .line 882
    :catch_1d
    move-exception v4

    .line 883
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1e
    const-string v5, "SettingsUtils"

    const-string v6, "Exception in isPackageInstalled()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 885
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    goto :goto_2e

    .line 885
    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw v3

    .line 888
    :cond_2e
    :goto_2e
    return v3
.end method

.method public static isPersona(ILandroid/content/Context;)Z
    .registers 4
    .param p0, "userId"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .line 844
    const/4 v0, 0x0

    .line 846
    .local v0, "ret":Z
    if-eqz p0, :cond_b

    .line 847
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    return v1

    .line 850
    :cond_b
    return v0
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 8
    .param p0, "emailAddress"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "isValid":Z
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    if-eqz p0, :cond_38

    .line 169
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    .local v1, "len":I
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 171
    .local v3, "firstAt":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 172
    .local v2, "lastAt":I
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 173
    .local v4, "firstDot":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_34

    .line 174
    .local v5, "lastDot":I
    if-lez v3, :cond_31

    if-ne v3, v2, :cond_31

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_31

    if-gt v4, v5, :cond_31

    add-int/lit8 v6, v1, -0x1

    if-ge v5, v6, :cond_31

    const/4 v6, 0x1

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    move v0, v6

    .line 178
    .end local v1    # "len":I
    .end local v2    # "lastAt":I
    .end local v3    # "firstAt":I
    .end local v4    # "firstDot":I
    .end local v5    # "lastDot":I
    goto :goto_38

    .line 176
    :catch_34
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    return v0
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 24
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "id"    # J
    .param p3, "acc"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p4, "isReceive"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .line 469
    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 470
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 472
    .local v3, "c":Landroid/database/Cursor;
    const-string v4, "_id"

    const-string/jumbo v5, "protocol"

    const-string v6, "address"

    const-string/jumbo v7, "port"

    const-string v8, "flags"

    const-string/jumbo v9, "login"

    const-string/jumbo v10, "password"

    const-string v11, "domain"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v14

    .line 478
    .local v14, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_1c
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_154
    .catchall {:try_start_1c .. :try_end_2a} :catchall_150

    move-wide/from16 v4, p1

    :try_start_2c
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 480
    const-string v0, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadHostAuth row count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_148

    .line 482
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_62} :catch_14e
    .catchall {:try_start_2c .. :try_end_62} :catchall_15e

    .line 483
    const-string v0, "domain"

    const-string/jumbo v6, "password"

    const-string/jumbo v7, "login"

    const-string v8, "flags"

    const-string/jumbo v9, "port"

    const-string v10, "address"

    const-string/jumbo v11, "protocol"

    const/16 v12, 0x8

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-eqz p4, :cond_e1

    .line 484
    :try_start_7a
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 485
    nop

    .line 486
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 485
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 487
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 488
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 489
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v8, v15

    if-ne v15, v8, :cond_aa

    move v8, v15

    goto :goto_ab

    :cond_aa
    const/4 v8, 0x0

    :goto_ab
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 490
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v8, v13

    if-ne v13, v8, :cond_b4

    move v8, v15

    goto :goto_b5

    :cond_b4
    const/4 v8, 0x0

    :goto_b5
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 491
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/2addr v8, v12

    if-ne v12, v8, :cond_bd

    goto :goto_be

    :cond_bd
    const/4 v15, 0x0

    :goto_be
    iput-boolean v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 492
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 494
    nop

    .line 495
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 494
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 497
    nop

    .line 498
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 497
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_147

    .line 500
    :cond_e1
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 501
    nop

    .line 502
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 501
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 503
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 504
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 505
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v8, v15

    if-ne v15, v8, :cond_111

    move v8, v15

    goto :goto_112

    :cond_111
    const/4 v8, 0x0

    :goto_112
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 506
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v8, v13

    if-ne v13, v8, :cond_11b

    move v8, v15

    goto :goto_11c

    :cond_11b
    const/4 v8, 0x0

    :goto_11c
    iput-boolean v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 507
    iget v8, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/2addr v8, v12

    if-ne v12, v8, :cond_124

    goto :goto_125

    :cond_124
    const/4 v15, 0x0

    :goto_125
    iput-boolean v15, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 508
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 510
    nop

    .line 511
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 510
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 513
    nop

    .line 514
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 513
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_147} :catch_14e
    .catchall {:try_start_7a .. :try_end_147} :catchall_15e

    .line 516
    :goto_147
    const/4 v2, 0x1

    .line 521
    :cond_148
    if-eqz v3, :cond_15d

    .line 522
    :goto_14a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_15d

    .line 518
    :catch_14e
    move-exception v0

    goto :goto_157

    .line 521
    :catchall_150
    move-exception v0

    move-wide/from16 v4, p1

    goto :goto_15f

    .line 518
    :catch_154
    move-exception v0

    move-wide/from16 v4, p1

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    :goto_157
    :try_start_157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_15e

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_15d

    .line 522
    goto :goto_14a

    .line 524
    :cond_15d
    :goto_15d
    return v2

    .line 521
    :catchall_15e
    move-exception v0

    :goto_15f
    if-eqz v3, :cond_164

    .line 522
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_164
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .registers 12
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    .line 105
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9b

    .line 107
    .local v1, "userID":I
    :try_start_7
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 108
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v3, 0x10000000

    .line 109
    .local v3, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_8d
    .catchall {:try_start_7 .. :try_end_1b} :catchall_9b

    .line 113
    if-eqz v1, :cond_67

    .line 114
    :try_start_1d
    invoke-static {v1, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4f

    .line 115
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 116
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendAccountsChangedBroadcast : USER space   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 118
    :cond_4f
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 119
    const-string v5, "SettingsUtils"

    const-string/jumbo v6, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 123
    :cond_67
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_69} :catch_87
    .catchall {:try_start_1d .. :try_end_69} :catchall_9b

    .line 129
    :goto_69
    nop

    .line 131
    :try_start_6a
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 132
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 135
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v4    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    goto :goto_91

    .line 126
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .restart local v3    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v4    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    :catch_87
    move-exception v5

    .line 127
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8b} :catch_8d
    .catchall {:try_start_6a .. :try_end_8b} :catchall_9b

    .line 128
    monitor-exit v0

    return-void

    .line 133
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v4    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_8d
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_91
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "sendAccountsChangedBroadcast()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_9b

    .line 137
    monitor-exit v0

    return-void

    .line 104
    .end local v1    # "userID":I
    .end local p0    # "containerId":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "callingUid":I
    :catchall_9b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "adminPkgName"    # Ljava/lang/String;

    .line 158
    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 159
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageNameForUid :   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 694
    const/4 v0, 0x0

    const-string v1, "SettingsUtils"

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    .line 699
    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_16

    .line 703
    nop

    .line 704
    const-string/jumbo v0, "setSecurityPassword() success"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v0, 0x1

    return v0

    .line 700
    :catch_16
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setSecurityPassword() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v0

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const-string/jumbo v2, "setSecurityPassword() failed : invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return v0
.end method

.method public static setSecurityPasswordFocus(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    const-string v1, "SettingsUtils"

    if-eqz p0, :cond_1e

    if-nez p1, :cond_8

    goto :goto_1e

    .line 727
    :cond_8
    :try_start_8
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_16

    .line 731
    nop

    .line 732
    const-string/jumbo v0, "setSecurityPasswordFocus() success"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, 0x1

    return v0

    .line 728
    :catch_16
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setSecurityPasswordFocus() failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v0

    .line 723
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1e
    :goto_1e
    const-string/jumbo v2, "setSecurityPasswordFocus() failed : invalid parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v0
.end method

.method public static updateStatus()V
    .registers 0

    .line 609
    return-void
.end method
