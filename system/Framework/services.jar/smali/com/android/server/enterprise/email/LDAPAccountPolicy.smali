.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;
    }
.end annotation


# static fields
.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_BASEDN:Ljava/lang/String; = "basedn"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_HOST:Ljava/lang/String; = "host"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_ISSSL:Ljava/lang/String; = "isssl"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_PORT:Ljava/lang/String; = "port"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_SERVICE:Ljava/lang/String; = "service"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_TRUSTALL:Ljava/lang/String; = "trustall"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERID:Ljava/lang/String; = "user_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERNAME:Ljava/lang/String; = "user_name"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERPASSWORD_ID:Ljava/lang/String; = "user_password_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_iSANONYMOUS:Ljava/lang/String; = "isanonymous"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;

    .line 82
    const-string v0, "LDAPAccountPolicyService"

    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/ILDAPAccountPolicy$Stub;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 85
    :try_start_a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v2, "success to add receiver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2a} :catch_2c

    .line 93
    nop

    .end local v1    # "filter":Landroid/content/IntentFilter;
    goto :goto_32

    .line 91
    :catch_2c
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Regist BroadCast failed : "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;IIJ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    return-void
.end method

.method private enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 78
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_LDAP"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountLDAPType()Ljava/lang/String;
    .registers 2

    .line 290
    const-string v0, "com.samsung.android.ldap"

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 70
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private sendBroadcastCreateLDAPAcctResultIntent(IIJ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "result"    # I
    .param p3, "acctId"    # J

    .line 298
    const-string v0, "LDAPAccountPolicyService"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "new_intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.knox.intent.extra.LDAP_RESULT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v2, "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 301
    const-string v2, "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 304
    .local v2, "token":J
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v4, "sendBroadcastCreateLDAPAcctResultIntent() success to send result Intent 2. "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2e
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2c

    .line 309
    goto :goto_36

    :catchall_2c
    move-exception v0

    goto :goto_3b

    .line 306
    :catch_2e
    move-exception v4

    .line 307
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2f
    const-string/jumbo v5, "sendBroadcastCreateLDAPAcctResultIntent() failed to send result Intent 2. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    .line 309
    nop

    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .line 311
    return-void

    .line 309
    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw v0
.end method

.method private setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 275
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 276
    .local v0, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v1

    .line 277
    .local v1, "callID":J
    const-wide/16 v3, -0x1

    if-nez p2, :cond_22

    .line 278
    return-wide v3

    .line 280
    :cond_22
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "caller":Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_38

    .line 285
    nop

    .line 286
    .end local v5    # "caller":Ljava/lang/String;
    return-wide v1

    .line 282
    :catch_38
    move-exception v5

    .line 283
    .local v5, "ex":Ljava/lang/Exception;
    const-string v6, "LDAPAccountPolicyService"

    const-string/jumbo v7, "setAccountEmailPassword() failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-wide v3
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/LDAPAccount;)V
    .registers 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "ldap"    # Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 117
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object v3, v0

    .line 118
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v3, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v4, v0

    .line 119
    .local v4, "userId":I
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move v5, v0

    .line 121
    .local v5, "containerId":I
    if-nez v2, :cond_1d

    .line 122
    const-string v0, "LDAPAccountPolicyService"

    const-string v6, "createLDAPAccount() : failed. ldap is not vaild."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_ea

    .line 123
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    :cond_1d
    :try_start_1d
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 127
    .local v6, "emailPkageName":Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    const-wide/16 v7, -0x1

    const/4 v9, -0x8

    if-nez v0, :cond_46

    .line 128
    invoke-direct {v1, v4, v9, v7, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 129
    const-string v0, "LDAPAccountPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createLDAPAccount : Error :: Email app is not installed on user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_ea

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_46
    :try_start_46
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    if-eqz v0, :cond_4d

    .line 134
    const/4 v0, 0x1

    iput v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    .line 138
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 139
    .local v10, "token_new":J
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 140
    .local v12, "EmailPackageName":Ljava/lang/String;
    const-string v0, "LDAPAccountPolicyService"

    const-string v13, "createLDAPAccount_new()"

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_ea

    .line 143
    :try_start_5d
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v13

    .line 144
    .local v13, "password_id":J
    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v15, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    iget-wide v7, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    invoke-virtual {v0, v15, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v7, "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

    iget-object v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v7, "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"

    invoke-virtual {v0, v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string v7, "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

    iget v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v7, "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

    iget-boolean v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string/jumbo v8, "ldap"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v7, "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

    iget-boolean v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v7, "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

    iget-object v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v7, "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

    iget-object v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v7, "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

    iget v8, v2, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v7, v1, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v15, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v7, v0, v8, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 157
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "createLDAPAccount_new() : successfully sent intent to Email app. "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_c5} :catch_cc
    .catchall {:try_start_5d .. :try_end_c5} :catchall_ca

    .line 162
    :try_start_c5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_ea

    .line 158
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v13    # "password_id":J
    :catchall_ca
    move-exception v0

    goto :goto_e6

    .line 159
    :catch_cc
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cd
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "createLDAPAccount_new() : unexpected Exception occurs. "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_ca

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_d4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    nop

    .line 166
    const-wide/16 v7, -0x1

    invoke-direct {v1, v4, v9, v7, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->sendBroadcastCreateLDAPAcctResultIntent(IIJ)V

    .line 167
    const-string v0, "LDAPAccountPolicyService"

    const-string v7, "createLDAPAccount() : failed with unknown error."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_d4 .. :try_end_e4} :catchall_ea

    .line 169
    monitor-exit p0

    return-void

    .line 162
    :goto_e6
    :try_start_e6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    throw v0
    :try_end_ea
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_ea

    .line 116
    .end local v3    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v4    # "userId":I
    .end local v5    # "containerId":I
    .end local v6    # "emailPkageName":Ljava/lang/String;
    .end local v10    # "token_new":J
    .end local v12    # "EmailPackageName":Ljava/lang/String;
    .end local p2    # "ldap":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :catchall_ea
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 12
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # J

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object p1, v0

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "ret":Z
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v1

    .line 180
    .local v1, "account":Lcom/samsung/android/knox/accounts/LDAPAccount;
    if-nez v1, :cond_16

    .line 181
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "deleteLDAPAccount() : ldapId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_9a

    .line 182
    monitor-exit p0

    return v0

    .line 184
    .end local p0    # "this":Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    :cond_16
    :try_start_16
    const-string v2, "device_account_policy"

    .line 185
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 186
    .local v2, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v2, :cond_5b

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getAccountLDAPType()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 187
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_9a

    .line 188
    monitor-exit p0

    return v0

    .line 191
    :cond_5b
    :try_start_5b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_9a

    .line 193
    .local v3, "token_new":J
    :try_start_5f
    iget-object v5, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v5
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_65} :catch_6c
    .catchall {:try_start_5f .. :try_end_65} :catchall_6a

    move v0, v5

    .line 198
    :goto_66
    :try_start_66
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_9a

    .line 199
    goto :goto_76

    .line 198
    :catchall_6a
    move-exception v5

    goto :goto_96

    .line 194
    :catch_6c
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6d
    const-string v6, "LDAPAccountPolicyService"

    const-string v7, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_6a

    .line 196
    const/4 v0, 0x0

    goto :goto_66

    .line 200
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_76
    :try_start_76
    const-string v5, "LDAPAccountPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteLDAPAccount() : id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_9a

    .line 201
    monitor-exit p0

    return v0

    .line 198
    :goto_96
    :try_start_96
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    throw v5
    :try_end_9a
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9a

    .line 175
    .end local v0    # "ret":Z
    .end local v1    # "account":Lcom/samsung/android/knox/accounts/LDAPAccount;
    .end local v2    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v3    # "token_new":J
    .end local p1    # "ctxInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p2    # "id":J
    :catchall_9a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllLDAPAccounts(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 10
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/accounts/LDAPAccount;",
            ">;"
        }
    .end annotation

    .line 234
    const-string v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "getAllLDAPAccounts() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 236
    const/4 v1, 0x0

    .line 238
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/accounts/LDAPAccount;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 240
    .local v2, "token_new":J
    :try_start_11
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v4

    .line 241
    .local v4, "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    if-eqz v4, :cond_39

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 243
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 244
    .local v6, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v7

    .line 245
    .local v7, "ldap_acct":Lcom/samsung/android/knox/accounts/LDAPAccount;
    if-eqz v7, :cond_38

    .line 246
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_38} :catch_3f
    .catchall {:try_start_11 .. :try_end_38} :catchall_3d

    .line 248
    .end local v6    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .end local v7    # "ldap_acct":Lcom/samsung/android/knox/accounts/LDAPAccount;
    :cond_38
    goto :goto_23

    .line 254
    .end local v4    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :cond_39
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    goto :goto_48

    .line 254
    :catchall_3d
    move-exception v0

    goto :goto_63

    .line 250
    :catch_3f
    move-exception v4

    .line 251
    .local v4, "e":Ljava/lang/Exception;
    :try_start_40
    const-string/jumbo v5, "getAllLDAPAccounts() : Failed, Exception occurs. "

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_3d

    .line 252
    const/4 v1, 0x0

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_39

    .line 256
    :goto_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAllLDAPAccounts() ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_57

    const/4 v5, 0x1

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v1

    .line 254
    :goto_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    throw v0
.end method

.method public getLDAPAccount(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .registers 10
    .param p1, "ctxInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "id"    # J

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":Lcom/samsung/android/knox/accounts/LDAPAccount;
    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    const-string v2, "LDAPAccountPolicyService"

    if-gez v1, :cond_23

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLDAPAccount() : ldapId is invalid, id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v0

    .line 215
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 217
    .local v3, "token_new":J
    :try_start_27
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v1

    .line 218
    .local v1, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_38
    .catchall {:try_start_27 .. :try_end_31} :catchall_36

    move-object v0, v5

    .line 223
    .end local v1    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    :goto_32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    goto :goto_41

    .line 223
    :catchall_36
    move-exception v1

    goto :goto_64

    .line 219
    :catch_38
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    :try_start_39
    const-string/jumbo v5, "getLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_36

    .line 221
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_32

    .line 225
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLDAPAccount() id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", ret ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    :goto_59
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-object v0

    .line 223
    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 295
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 266
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 268
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 270
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 262
    const-string v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "systemReady()... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method
