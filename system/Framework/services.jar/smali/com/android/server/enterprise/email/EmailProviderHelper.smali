.class public Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "EmailProviderHelper.java"


# static fields
.field private static final EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.mdm.provider"

.field public static final FAIL_SET_ACCOUNT_OBJECT:J = -0x1L

.field private static final LDAP_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.ldap.provider"

.field private static final TAG:Ljava/lang/String; = "EmailProviderHelperService"

.field private static final TAG_MAP_ACCOUNT:Ljava/lang/String; = "A"

.field private static mAccountObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "protection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 66
    move-object v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 67
    return-object v3

    .line 68
    :cond_7
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 69
    .local v4, "userID":I
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 70
    .local v5, "containerId":I
    const/4 v6, 0x0

    .line 71
    .local v6, "emails":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 74
    .local v7, "psToken":J
    :try_start_14
    invoke-static {v5, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_2b

    .line 75
    nop

    .line 76
    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 75
    invoke-virtual {p0, v0, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    move-object v6, v0

    .end local v6    # "emails":Landroid/content/Context;
    .local v0, "emails":Landroid/content/Context;
    goto :goto_3a

    .line 79
    .end local v0    # "emails":Landroid/content/Context;
    .restart local v6    # "emails":Landroid/content/Context;
    :cond_2b
    nop

    .line 80
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 79
    invoke-virtual {p0, v0, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .end local v6    # "emails":Landroid/content/Context;
    .restart local v0    # "emails":Landroid/content/Context;
    move-object v6, v0

    .line 87
    .end local v0    # "emails":Landroid/content/Context;
    .restart local v6    # "emails":Landroid/content/Context;
    :goto_3a
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4c} :catch_52
    .catchall {:try_start_14 .. :try_end_4c} :catchall_50

    .line 91
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    return-object v0

    .line 91
    :catchall_50
    move-exception v0

    goto :goto_60

    .line 88
    :catch_52
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_53
    const-string v9, "EmailProviderHelperService"

    const-string v10, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_50

    .line 91
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    nop

    .line 93
    return-object v3

    .line 91
    :goto_60
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    throw v0
.end method

.method private static createID()J
    .registers 4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const-wide/16 v2, -0x1

    mul-long/2addr v2, v0

    goto :goto_f

    :cond_e
    move-wide v2, v0

    :goto_f
    move-wide v0, v2

    .line 169
    return-wide v0
.end method

.method public static deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 460
    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 461
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 463
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "deleteLDAPAccount"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 464
    if-eqz v2, :cond_49

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 465
    const-string v3, "deleteLDAPAccount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move v1, v3

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLDAPAccount() : ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 469
    :cond_49
    const-string v3, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4e} :catch_5d
    .catchall {:try_start_4 .. :try_end_4e} :catchall_5b

    .line 470
    const/4 v1, 0x0

    .line 476
    :goto_4f
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6d

    :goto_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    :catchall_5b
    move-exception v0

    goto :goto_6e

    .line 472
    :catch_5d
    move-exception v3

    .line 473
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_5e
    const-string v4, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_5b

    .line 474
    const/4 v1, 0x0

    .line 476
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_57

    .line 478
    :cond_6d
    :goto_6d
    return v1

    .line 476
    :goto_6e
    if-eqz v2, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_79

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_79
    throw v0
.end method

.method public static getAccountId(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 21
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "isEAS"    # Z

    .line 182
    const-wide/16 v0, -0x1

    .line 183
    .local v0, "ret":J
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local p2    # "arg1":Ljava/lang/String;
    .local v2, "arg1":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .end local p3    # "arg2":Ljava/lang/String;
    .local v3, "arg2":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .end local p4    # "arg3":Ljava/lang/String;
    .local v4, "arg3":Ljava/lang/String;
    const-string v5, " , arg3 = "

    const-string v6, " , arg2 = "

    const-string v7, "EmailProviderHelperService"

    if-eqz v3, :cond_e8

    if-nez v4, :cond_1a

    goto/16 :goto_e8

    .line 191
    :cond_1a
    const/4 v8, 0x0

    if-eqz p5, :cond_65

    .line 192
    move-object v5, v2

    .line 193
    .local v5, "easDomain":Ljava/lang/String;
    move-object v6, v3

    .line 194
    .local v6, "easUser":Ljava/lang/String;
    if-nez v5, :cond_23

    move-object v7, v6

    goto :goto_37

    :cond_23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\\"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "User":Ljava/lang/String;
    :goto_37
    move-object v9, v4

    .line 196
    .local v9, "activeSyncHost":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v10

    .line 197
    .local v10, "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v10, :cond_63

    .line 198
    array-length v11, v10

    :goto_3f
    if-ge v8, v11, :cond_63

    aget-object v12, v10, v8

    .line 200
    .local v12, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v12, :cond_60

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    if-eqz v13, :cond_60

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60

    iget-object v13, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_60

    .line 201
    iget-wide v0, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    .line 202
    goto :goto_63

    .line 198
    .end local v12    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_60
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 206
    .end local v5    # "easDomain":Ljava/lang/String;
    .end local v6    # "easUser":Ljava/lang/String;
    .end local v7    # "User":Ljava/lang/String;
    .end local v9    # "activeSyncHost":Ljava/lang/String;
    .end local v10    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_63
    :goto_63
    goto/16 :goto_e7

    .line 208
    :cond_65
    if-eqz v2, :cond_c6

    .line 209
    move-object v5, v2

    .line 210
    .local v5, "login":Ljava/lang/String;
    move-object v6, v3

    .line 211
    .local v6, "serverAddress":Ljava/lang/String;
    move-object v7, v4

    .line 212
    .local v7, "protocol":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v9

    .line 213
    .local v9, "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v9, :cond_c5

    .line 214
    array-length v10, v9

    :goto_71
    if-ge v8, v10, :cond_c5

    aget-object v11, v9, v8

    .line 216
    .local v11, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v11, :cond_c2

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9b

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bf

    .line 218
    :cond_9b
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    .line 219
    :cond_bf
    iget-wide v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 220
    goto :goto_c5

    .line 214
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 224
    .end local v5    # "login":Ljava/lang/String;
    .end local v6    # "serverAddress":Ljava/lang/String;
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v9    # "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_c5
    :goto_c5
    goto :goto_e7

    .line 226
    :cond_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountId() : [EMAIL] faild with Invalid input parameters. arg1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_e7
    return-wide v0

    .line 187
    :cond_e8
    :goto_e8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountId() : faild with Invalid input parameters. arg1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-wide v0
.end method

.method private static getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J
    .registers 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 98
    const-string v0, "_id"

    const/4 v1, 0x0

    .line 99
    .local v1, "ret":[J
    const/4 v2, 0x0

    .line 101
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_5
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 102
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3c

    .line 103
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 104
    .local v3, "count":I
    const/4 v4, 0x0

    .line 105
    .local v4, "idx":I
    new-array v5, v3, [J

    move-object v1, v5

    .line 106
    :goto_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 107
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v1, v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_4a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_48

    move v4, v5

    goto :goto_27

    .line 114
    .end local v3    # "count":I
    .end local v5    # "idx":I
    :cond_3c
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5d

    :goto_44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    :catchall_48
    move-exception v0

    goto :goto_5e

    .line 110
    :catch_4a
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4b
    const-string v3, "EmailProviderHelperService"

    const-string/jumbo v4, "getAllAccountIDS() : Failed, Exception occurs. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_48

    .line 112
    const/4 v1, 0x0

    .line 114
    .end local v0    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_44

    .line 116
    :cond_5d
    :goto_5d
    return-object v1

    .line 114
    :goto_5e
    if-eqz v2, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_69
    throw v0
.end method

.method public static getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "ret":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseEmailAccount;>;"
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v2

    .line 298
    .local v2, "accIds":[J
    if-eqz v2, :cond_1e

    .line 299
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-wide v5, v2, v4

    .line 300
    .local v5, "Id":J
    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v7

    .line 301
    .local v7, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v7, :cond_1b

    .line 302
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v5    # "Id":J
    .end local v7    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 306
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 307
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "idx":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 310
    .local v5, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    aput-object v5, v0, v3

    .line 311
    .end local v5    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    move v3, v6

    goto :goto_2f

    .line 313
    .end local v6    # "idx":I
    :cond_41
    return-object v0
.end method

.method public static getAllEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "ret":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseExchangeAccount;>;"
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[J

    move-result-object v2

    .line 383
    .local v2, "accIds":[J
    if-eqz v2, :cond_1e

    .line 384
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-wide v5, v2, v4

    .line 385
    .local v5, "Id":J
    invoke-static {p0, p1, v5, v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v7

    .line 386
    .local v7, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v7, :cond_1b

    .line 387
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v5    # "Id":J
    .end local v7    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 391
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 392
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, "idx":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 395
    .local v5, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    aput-object v5, v0, v3

    .line 396
    .end local v5    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    move v3, v6

    goto :goto_2f

    .line 398
    .end local v6    # "idx":I
    :cond_41
    return-object v0
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation

    .line 431
    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 432
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    const/4 v2, 0x0

    .line 433
    .local v2, "bundle_ldap":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 435
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "getAllLDAPAccounts"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 436
    if-eqz v3, :cond_36

    .line 437
    invoke-interface {v3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object v2, v4

    .line 438
    if-eqz v2, :cond_2f

    .line 439
    const-string v4, "email.ldap.all.account"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v1, v4

    .line 440
    if-nez v1, :cond_3c

    .line 441
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    goto :goto_3c

    .line 444
    :cond_2f
    const-string/jumbo v4, "getAllLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 447
    :cond_36
    const-string/jumbo v4, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_4a
    .catchall {:try_start_5 .. :try_end_3c} :catchall_48

    .line 453
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_5b

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5b

    :goto_44
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5b

    :catchall_48
    move-exception v0

    goto :goto_5c

    .line 449
    :catch_4a
    move-exception v4

    .line 450
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_4b
    const-string/jumbo v5, "getAllLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_48

    .line 451
    const/4 v1, 0x0

    .line 453
    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_5b

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_44

    .line 455
    :cond_5b
    :goto_5b
    return-object v1

    .line 453
    :goto_5c
    if-eqz v3, :cond_67

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_67
    throw v0
.end method

.method public static getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 7
    .param p0, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "Id"    # J

    .line 136
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_35

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v1, :cond_35

    .line 138
    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    return-object v1

    .line 141
    :cond_35
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getEmailAccountObject() : failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getEmailContentUri()Landroid/net/Uri;
    .registers 1

    .line 173
    const-string v0, "content://com.samsung.android.email.mdm.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const/4 v1, 0x0

    .line 238
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const-string v3, "EmailProviderHelperService"

    if-gtz v2, :cond_20

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v0

    .line 243
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "getAccountInfo"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 244
    if-eqz v1, :cond_5a

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 246
    .local v2, "bundle_email":Landroid/os/Bundle;
    if-eqz v2, :cond_53

    .line 247
    const-string v4, "email.account"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 248
    .local v4, "parcel":Landroid/os/Parcelable;
    if-eqz v4, :cond_52

    instance-of v5, v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v5, :cond_52

    .line 249
    move-object v5, v4

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-object v0, v5

    .line 251
    .end local v4    # "parcel":Landroid/os/Parcelable;
    :cond_52
    goto :goto_59

    .line 252
    :cond_53
    const-string/jumbo v4, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v2    # "bundle_email":Landroid/os/Bundle;
    :goto_59
    goto :goto_60

    .line 255
    :cond_5a
    const-string/jumbo v2, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_60} :catch_6e
    .catchall {:try_start_20 .. :try_end_60} :catchall_6c

    .line 261
    :goto_60
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7f

    :goto_68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7f

    :catchall_6c
    move-exception v2

    goto :goto_ad

    .line 257
    :catch_6e
    move-exception v2

    .line 258
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6f
    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_6c

    .line 259
    const/4 v0, 0x0

    .line 261
    .end local v2    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7f

    goto :goto_68

    .line 263
    :cond_7f
    :goto_7f
    if-nez v0, :cond_97

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : Failed, accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 266
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_ac
    return-object v0

    .line 261
    :goto_ad
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_b8
    throw v2
.end method

.method public static getEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/4 v1, 0x0

    .line 323
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const-string v3, "EmailProviderHelperService"

    if-gtz v2, :cond_20

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-object v0

    .line 328
    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "getAccountInfo"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 329
    if-eqz v1, :cond_5a

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 331
    .local v2, "bundle_email":Landroid/os/Bundle;
    if-eqz v2, :cond_53

    .line 332
    const-string v4, "eas.account"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 333
    .local v4, "parcel":Landroid/os/Parcelable;
    if-eqz v4, :cond_52

    instance-of v5, v4, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v5, :cond_52

    .line 334
    move-object v5, v4

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-object v0, v5

    .line 336
    .end local v4    # "parcel":Landroid/os/Parcelable;
    :cond_52
    goto :goto_59

    .line 337
    :cond_53
    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v2    # "bundle_email":Landroid/os/Bundle;
    :goto_59
    goto :goto_60

    .line 340
    :cond_5a
    const-string/jumbo v2, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_60} :catch_6e
    .catchall {:try_start_20 .. :try_end_60} :catchall_6c

    .line 346
    :goto_60
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7f

    :goto_68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7f

    :catchall_6c
    move-exception v2

    goto :goto_ad

    .line 342
    :catch_6e
    move-exception v2

    .line 343
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_6f
    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_6c

    .line 344
    const/4 v0, 0x0

    .line 346
    .end local v2    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7f

    goto :goto_68

    .line 348
    :cond_7f
    :goto_7f
    if-nez v0, :cond_97

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 351
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_ac
    return-object v0

    .line 346
    :goto_ad
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_b8
    throw v2
.end method

.method public static getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 403
    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 404
    .local v1, "ret":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    const/4 v2, 0x0

    .line 406
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "getLDAPAccount"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 407
    if-eqz v2, :cond_44

    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 409
    .local v3, "bundle_ldap":Landroid/os/Bundle;
    if-eqz v3, :cond_3d

    .line 410
    const-string v4, "email.ldap.account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 411
    .local v4, "parcel":Landroid/os/Parcelable;
    if-eqz v4, :cond_3c

    instance-of v5, v4, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    if-eqz v5, :cond_3c

    .line 412
    move-object v5, v4

    check-cast v5, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-object v1, v5

    .line 413
    const-string/jumbo v5, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    invoke-static {v0, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v4    # "parcel":Landroid/os/Parcelable;
    :cond_3c
    goto :goto_43

    .line 416
    :cond_3d
    const-string/jumbo v4, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v3    # "bundle_ldap":Landroid/os/Bundle;
    :goto_43
    goto :goto_4a

    .line 419
    :cond_44
    const-string/jumbo v3, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_58
    .catchall {:try_start_4 .. :try_end_4a} :catchall_56

    .line 425
    :goto_4a
    if-eqz v2, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_69

    :goto_52
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_56
    move-exception v0

    goto :goto_6a

    .line 421
    :catch_58
    move-exception v3

    .line 422
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_59
    const-string/jumbo v4, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_56

    .line 423
    const/4 v1, 0x0

    .line 425
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_69

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_52

    .line 427
    :cond_69
    :goto_69
    return-object v1

    .line 425
    :goto_6a
    if-eqz v2, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_75

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_75
    throw v0
.end method

.method public static getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .registers 7
    .param p0, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "Id"    # J

    .line 127
    sget-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_35

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v1, :cond_35

    .line 129
    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    return-object v1

    .line 132
    :cond_35
    const-string v1, "EmailProviderHelperService"

    const-string/jumbo v2, "getExchangeAccountObject() : failed. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getLDAPContentUri()Landroid/net/Uri;
    .registers 1

    .line 177
    const-string v0, "content://com.samsung.android.email.ldap.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J
    .registers 7
    .param p0, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 156
    if-nez p1, :cond_d

    .line 157
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "setEnterpriseEmailAccountObject() : failed with invalid object. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-wide/16 v0, -0x1

    return-wide v0

    .line 160
    :cond_d
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .line 161
    .local v0, "Id":J
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-wide v0
.end method

.method public static setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J
    .registers 7
    .param p0, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 146
    if-nez p1, :cond_d

    .line 147
    const-string v0, "EmailProviderHelperService"

    const-string/jumbo v1, "setEnterpriseExchangeAccountObject() : failed with invalid object. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-wide/16 v0, -0x1

    return-wide v0

    .line 150
    :cond_d
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .line 151
    .local v0, "Id":J
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-wide v0
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .line 273
    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 274
    .local v1, "ret":Z
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J

    move-result-wide v2

    .line 275
    .local v2, "keyId":J
    const/4 v4, 0x0

    .line 277
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "updateEmailAccount"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    const/4 v5, 0x1

    iget-object v6, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    aput-object v6, v10, v5

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 278
    if-eqz v4, :cond_40

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 279
    const-string/jumbo v5, "updateEmailAccount"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v1, v5

    goto :goto_46

    .line 281
    :cond_40
    const-string/jumbo v5, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_46} :catch_54
    .catchall {:try_start_8 .. :try_end_46} :catchall_52

    .line 287
    :goto_46
    if-eqz v4, :cond_65

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_65

    :goto_4e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :catchall_52
    move-exception v0

    goto :goto_7b

    .line 283
    :catch_54
    move-exception v5

    .line 284
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_55
    const-string/jumbo v6, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    .line 285
    const/4 v1, 0x0

    .line 287
    .end local v5    # "ex":Ljava/lang/Exception;
    if-eqz v4, :cond_65

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_4e

    .line 289
    :cond_65
    :goto_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseEmailAccount() : ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v1

    .line 287
    :goto_7b
    if-eqz v4, :cond_86

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_86

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_86
    throw v0
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .line 358
    const-string v0, "EmailProviderHelperService"

    const/4 v1, 0x0

    .line 359
    .local v1, "ret":Z
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J

    move-result-wide v2

    .line 360
    .local v2, "keyId":J
    const/4 v4, 0x0

    .line 362
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_8
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "updateEmailAccount"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "eas"

    aput-object v6, v10, v5

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 363
    if-eqz v4, :cond_40

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 364
    const-string/jumbo v5, "updateEmailAccount"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move v1, v5

    goto :goto_46

    .line 366
    :cond_40
    const-string/jumbo v5, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_46} :catch_54
    .catchall {:try_start_8 .. :try_end_46} :catchall_52

    .line 372
    :goto_46
    if-eqz v4, :cond_65

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_65

    :goto_4e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_65

    :catchall_52
    move-exception v0

    goto :goto_7b

    .line 368
    :catch_54
    move-exception v5

    .line 369
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_55
    const-string/jumbo v6, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_52

    .line 370
    const/4 v1, 0x0

    .line 372
    .end local v5    # "ex":Ljava/lang/Exception;
    if-eqz v4, :cond_65

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_4e

    .line 374
    :cond_65
    :goto_65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnterpriseExchangeAccount() : ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v1

    .line 372
    :goto_7b
    if-eqz v4, :cond_86

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_86

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_86
    throw v0
.end method
