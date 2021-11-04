.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preCallingUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    return-void
.end method

.method private enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 107
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 108
    .local v0, "containerId":I
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 111
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 112
    .local v1, "callingUid":I
    iget v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    if-eq v2, v1, :cond_48

    .line 113
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 115
    iput v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->preCallingUid:I

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID changed :    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  callingUid   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EmailAccountPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_48
    return-object p1
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Lcom/samsung/android/knox/accounts/Account;
    .registers 8
    .param p1, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;

    .line 1021
    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    .line 1023
    .local v0, "acc":Lcom/samsung/android/knox/accounts/Account;
    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    .line 1024
    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    .line 1025
    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    .line 1026
    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    .line 1027
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    .line 1028
    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    .line 1029
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    .line 1030
    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    .line 1031
    iget v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    .line 1032
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    .line 1033
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    .line 1034
    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    .line 1035
    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    .line 1036
    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    .line 1037
    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    .line 1038
    iget-object v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    .line 1039
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    .line 1040
    iget-boolean v3, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    .line 1042
    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1043
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    const/4 v4, -0x1

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1044
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1045
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1046
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1047
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1048
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1049
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1050
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1051
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1052
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1053
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v5, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1054
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1056
    new-instance v3, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v3}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    .line 1057
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    .line 1058
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    .line 1059
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    .line 1060
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    .line 1061
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    .line 1062
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    .line 1063
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    .line 1064
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-boolean v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-boolean v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    .line 1065
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    .line 1066
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    .line 1067
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    .line 1068
    iget-object v3, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput-wide v1, v3, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    .line 1070
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 97
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .line 477
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_1d

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 481
    const-string/jumbo v0, "pop3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "imap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 482
    const/4 p1, 0x0

    .line 485
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-object p1
.end method

.method private getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .line 708
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 710
    if-eqz p1, :cond_14

    .line 711
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 712
    const-string/jumbo v0, "smtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 713
    const/4 p1, 0x0

    .line 716
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-object p1
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .registers 34
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 131
    const-string v13, "EmailAccountPolicy"

    const-string v14, "addNewAccount() EX"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "Send from SamsungMobile"

    const/16 v20, 0x1

    invoke-virtual/range {v0 .. v20}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .registers 48
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "inComingProtocol"    # Ljava/lang/String;
    .param p4, "inComingServerAddress"    # Ljava/lang/String;
    .param p5, "inComingServerPort"    # I
    .param p6, "inComingServerLogin"    # Ljava/lang/String;
    .param p7, "inComingServerPassword"    # Ljava/lang/String;
    .param p8, "outGoingProtocol"    # Ljava/lang/String;
    .param p9, "outGoingServerAddress"    # Ljava/lang/String;
    .param p10, "outGoingServerPort"    # I
    .param p11, "outGoingServerLogin"    # Ljava/lang/String;
    .param p12, "outGoingServerPassword"    # Ljava/lang/String;
    .param p13, "sendSSL"    # Z
    .param p14, "sendTLS"    # Z
    .param p15, "sendAllCert"    # Z
    .param p16, "recvSSL"    # Z
    .param p17, "recvTLS"    # Z
    .param p18, "recvAllCert"    # Z
    .param p19, "signature"    # Ljava/lang/String;
    .param p20, "isNotify"    # Z

    .line 146
    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v11

    .line 147
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const-string v12, "EmailAccountPolicy"

    const-string v0, ">>>>>>>>>>>>>>>>>\t\taddNewAccount EX "

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v13

    .line 149
    .local v13, "userID":I
    iget v14, v11, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 150
    .local v14, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 151
    .end local p2    # "emailAddress":Ljava/lang/String;
    .local v15, "emailAddress":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 152
    .end local p4    # "inComingServerAddress":Ljava/lang/String;
    .local v10, "inComingServerAddress":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 153
    .end local p9    # "outGoingServerAddress":Ljava/lang/String;
    .local v9, "outGoingServerAddress":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .end local p3    # "inComingProtocol":Ljava/lang/String;
    .local v8, "inComingProtocol":Ljava/lang/String;
    move-object/from16 v0, p8

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .end local p8    # "outGoingProtocol":Ljava/lang/String;
    .local v7, "outGoingProtocol":Ljava/lang/String;
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .end local p11    # "outGoingServerLogin":Ljava/lang/String;
    .local v6, "outGoingServerLogin":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .end local p6    # "inComingServerLogin":Ljava/lang/String;
    .local v5, "inComingServerLogin":Ljava/lang/String;
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .end local p12    # "outGoingServerPassword":Ljava/lang/String;
    .local v4, "outGoingServerPassword":Ljava/lang/String;
    move-object/from16 p1, v4

    .end local v4    # "outGoingServerPassword":Ljava/lang/String;
    .local p1, "outGoingServerPassword":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .end local p7    # "inComingServerPassword":Ljava/lang/String;
    .local v4, "inComingServerPassword":Ljava/lang/String;
    const-wide/16 v16, -0x1

    if-eqz v15, :cond_284

    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_284

    if-eqz v10, :cond_284

    if-eqz v9, :cond_284

    if-eqz v8, :cond_284

    if-eqz v7, :cond_284

    const/4 v0, 0x1

    if-gt v0, v2, :cond_284

    if-gt v0, v3, :cond_284

    if-eqz v6, :cond_284

    if-nez v5, :cond_70

    move-object/from16 v20, p1

    move-object/from16 p3, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object v6, v7

    move-object/from16 p1, v8

    move-object/from16 v25, v9

    move-object/from16 v19, v11

    move/from16 v18, v14

    move-object v14, v10

    goto/16 :goto_296

    .line 169
    :cond_70
    move-object/from16 p2, v9

    .end local v9    # "outGoingServerAddress":Ljava/lang/String;
    .local p2, "outGoingServerAddress":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "emailPkageName":Ljava/lang/String;
    invoke-static {v9, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_93

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p3, v4

    .end local v4    # "inComingServerPassword":Ljava/lang/String;
    .local p3, "inComingServerPassword":Ljava/lang/String;
    const-string v4, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-wide v16

    .line 175
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "inComingServerPassword":Ljava/lang/String;
    :cond_93
    move-object/from16 p3, v4

    .end local v4    # "inComingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v18, 0x0

    iget-object v4, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v21, v4

    .end local p1    # "outGoingServerPassword":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v19, "outGoingServerPassword":Ljava/lang/String;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    move-object v4, v11

    move-object/from16 v22, v5

    .end local v5    # "inComingServerLogin":Ljava/lang/String;
    .local v22, "inComingServerLogin":Ljava/lang/String;
    move-object v5, v0

    move-object/from16 v23, v6

    .end local v6    # "outGoingServerLogin":Ljava/lang/String;
    .local v23, "outGoingServerLogin":Ljava/lang/String;
    move-object v6, v15

    move-object/from16 v24, v7

    .end local v7    # "outGoingProtocol":Ljava/lang/String;
    .local v24, "outGoingProtocol":Ljava/lang/String;
    move-object v7, v10

    move-object/from16 p1, v8

    .end local v8    # "inComingProtocol":Ljava/lang/String;
    .local p1, "inComingProtocol":Ljava/lang/String;
    move-object/from16 v25, p2

    move-object/from16 v26, v9

    .end local v9    # "emailPkageName":Ljava/lang/String;
    .end local p2    # "outGoingServerAddress":Ljava/lang/String;
    .local v25, "outGoingServerAddress":Ljava/lang/String;
    .local v26, "emailPkageName":Ljava/lang/String;
    move/from16 v9, v18

    move/from16 v18, v14

    move-object v14, v10

    .end local v10    # "inComingServerAddress":Ljava/lang/String;
    .local v14, "inComingServerAddress":Ljava/lang/String;
    .local v18, "containerId":I
    move-object/from16 v10, v21

    invoke-static/range {v4 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_c7

    .line 177
    const-string v0, "addNewAccount() EX : Error :: Account already exists."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-wide v16

    .line 181
    :cond_c7
    const-string/jumbo v0, "none"

    .line 182
    .local v0, "sendSecurityStr":Ljava/lang/String;
    const-string/jumbo v4, "none"

    .line 184
    .local v4, "recvSecurityStr":Ljava/lang/String;
    if-eqz p13, :cond_d6

    if-nez p14, :cond_d6

    if-nez p15, :cond_d6

    .line 185
    const-string/jumbo v0, "ssl"

    .line 187
    :cond_d6
    if-nez p13, :cond_df

    if-eqz p14, :cond_df

    if-nez p15, :cond_df

    .line 188
    const-string/jumbo v0, "tls"

    .line 190
    :cond_df
    if-eqz p13, :cond_e8

    if-nez p14, :cond_e8

    if-eqz p15, :cond_e8

    .line 191
    const-string/jumbo v0, "ssl+trustallcerts"

    .line 193
    :cond_e8
    if-nez p13, :cond_f3

    if-eqz p14, :cond_f3

    if-eqz p15, :cond_f3

    .line 194
    const-string/jumbo v0, "tls+trustallcerts"

    move-object v5, v0

    goto :goto_f4

    .line 196
    :cond_f3
    move-object v5, v0

    .end local v0    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "sendSecurityStr":Ljava/lang/String;
    :goto_f4
    if-eqz p16, :cond_fd

    if-nez p17, :cond_fd

    if-nez p18, :cond_fd

    .line 197
    const-string/jumbo v4, "ssl"

    .line 199
    :cond_fd
    if-nez p16, :cond_106

    if-eqz p17, :cond_106

    if-nez p18, :cond_106

    .line 200
    const-string/jumbo v4, "tls"

    .line 202
    :cond_106
    if-eqz p16, :cond_10f

    if-nez p17, :cond_10f

    if-eqz p18, :cond_10f

    .line 203
    const-string/jumbo v4, "ssl+trustallcerts"

    .line 205
    :cond_10f
    if-nez p16, :cond_118

    if-eqz p17, :cond_118

    if-eqz p18, :cond_118

    .line 206
    const-string/jumbo v4, "tls+trustallcerts"

    .line 208
    :cond_118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 210
    .local v8, "token":J
    :try_start_11c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNewAccount() EX : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_137} :catch_250
    .catchall {:try_start_11c .. :try_end_137} :catchall_246

    .line 213
    .local v0, "newIntent":Landroid/content/Intent;
    move-object/from16 v10, v19

    .end local v19    # "outGoingServerPassword":Ljava/lang/String;
    .local v10, "outGoingServerPassword":Ljava/lang/String;
    :try_start_139
    invoke-virtual {v1, v11, v10}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13d} :catch_23c
    .catchall {:try_start_139 .. :try_end_13d} :catchall_232

    move-wide/from16 p2, v16

    .line 214
    .local p2, "accOutgoingID":J
    move-object/from16 v6, v20

    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v6, "inComingServerPassword":Ljava/lang/String;
    :try_start_141
    invoke-virtual {v1, v11, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 p8, v16

    .line 217
    .local p8, "accIncomingID":J
    const-string v7, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_149} :catch_228
    .catchall {:try_start_141 .. :try_end_149} :catchall_21e

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-wide/from16 v10, p8

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p8    # "accIncomingID":J
    .local v10, "accIncomingID":J
    .local v19, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "outGoingServerPassword":Ljava/lang/String;
    :try_start_14f
    invoke-virtual {v0, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    const-string v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v7, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v0, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    const-string v7, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    move-wide/from16 v16, v10

    move-wide/from16 v10, p2

    .end local p2    # "accOutgoingID":J
    .local v10, "accOutgoingID":J
    .local v16, "accIncomingID":J
    invoke-virtual {v0, v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 221
    const-string v7, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_167} :catch_218
    .catchall {:try_start_14f .. :try_end_167} :catchall_211

    move-object/from16 p3, v6

    move-object/from16 v6, p1

    .end local p1    # "inComingProtocol":Ljava/lang/String;
    .local v6, "inComingProtocol":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    :try_start_16b
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v7, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_170} :catch_20b
    .catchall {:try_start_16b .. :try_end_170} :catchall_204

    move-object/from16 p1, v6

    move-object/from16 v6, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local p1    # "inComingProtocol":Ljava/lang/String;
    :try_start_174
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v7, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v0, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v7, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v7, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v7, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_188} :catch_201
    .catchall {:try_start_174 .. :try_end_188} :catchall_27f

    move-object/from16 v2, v25

    .end local v25    # "outGoingServerAddress":Ljava/lang/String;
    .local v2, "outGoingServerAddress":Ljava/lang/String;
    :try_start_18a
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v7, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v7, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v7, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_199} :catch_1fc
    .catchall {:try_start_18a .. :try_end_199} :catchall_1f7

    move-object/from16 v25, v2

    move-object/from16 v2, v22

    .end local v22    # "inComingServerLogin":Ljava/lang/String;
    .local v2, "inComingServerLogin":Ljava/lang/String;
    .restart local v25    # "outGoingServerAddress":Ljava/lang/String;
    :try_start_19d
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v7, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a2} :catch_1f2
    .catchall {:try_start_19d .. :try_end_1a2} :catchall_1ed

    move-object/from16 v22, v2

    move-object/from16 v2, v23

    .end local v23    # "outGoingServerLogin":Ljava/lang/String;
    .local v2, "outGoingServerLogin":Ljava/lang/String;
    .restart local v22    # "inComingServerLogin":Ljava/lang/String;
    :try_start_1a6
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v7, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1ab} :catch_1e8
    .catchall {:try_start_1a6 .. :try_end_1ab} :catchall_1e3

    move-object/from16 v23, v2

    move-object/from16 v2, p19

    .end local v2    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v23    # "outGoingServerLogin":Ljava/lang/String;
    :try_start_1af
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v7, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    move/from16 v2, p20

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v7, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v13}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " addNewAccount_ex() : sent intent to Email app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1e0} :catch_201
    .catchall {:try_start_1af .. :try_end_1e0} :catchall_27f

    .line 241
    nop

    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v10    # "accOutgoingID":J
    .end local v16    # "accIncomingID":J
    goto/16 :goto_25f

    .end local v23    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v2    # "outGoingServerLogin":Ljava/lang/String;
    :catchall_1e3
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v23    # "outGoingServerLogin":Ljava/lang/String;
    goto/16 :goto_280

    .line 237
    .end local v23    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v2    # "outGoingServerLogin":Ljava/lang/String;
    :catch_1e8
    move-exception v0

    move-object/from16 v23, v2

    .end local v2    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v23    # "outGoingServerLogin":Ljava/lang/String;
    goto/16 :goto_259

    .line 241
    .end local v22    # "inComingServerLogin":Ljava/lang/String;
    .local v2, "inComingServerLogin":Ljava/lang/String;
    :catchall_1ed
    move-exception v0

    move-object/from16 v22, v2

    .end local v2    # "inComingServerLogin":Ljava/lang/String;
    .restart local v22    # "inComingServerLogin":Ljava/lang/String;
    goto/16 :goto_280

    .line 237
    .end local v22    # "inComingServerLogin":Ljava/lang/String;
    .restart local v2    # "inComingServerLogin":Ljava/lang/String;
    :catch_1f2
    move-exception v0

    move-object/from16 v22, v2

    .end local v2    # "inComingServerLogin":Ljava/lang/String;
    .restart local v22    # "inComingServerLogin":Ljava/lang/String;
    goto/16 :goto_259

    .line 241
    .end local v25    # "outGoingServerAddress":Ljava/lang/String;
    .local v2, "outGoingServerAddress":Ljava/lang/String;
    :catchall_1f7
    move-exception v0

    move-object/from16 v25, v2

    .end local v2    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v25    # "outGoingServerAddress":Ljava/lang/String;
    goto/16 :goto_280

    .line 237
    .end local v25    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v2    # "outGoingServerAddress":Ljava/lang/String;
    :catch_1fc
    move-exception v0

    move-object/from16 v25, v2

    .end local v2    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v25    # "outGoingServerAddress":Ljava/lang/String;
    goto/16 :goto_259

    :catch_201
    move-exception v0

    goto/16 :goto_259

    .line 241
    .end local p1    # "inComingProtocol":Ljava/lang/String;
    .local v6, "inComingProtocol":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catchall_204
    move-exception v0

    move-object/from16 p1, v6

    move-object/from16 v6, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local p1    # "inComingProtocol":Ljava/lang/String;
    goto/16 :goto_280

    .line 237
    .end local p1    # "inComingProtocol":Ljava/lang/String;
    .local v6, "inComingProtocol":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catch_20b
    move-exception v0

    move-object/from16 p1, v6

    move-object/from16 v6, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local p1    # "inComingProtocol":Ljava/lang/String;
    goto :goto_259

    .line 241
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v6, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catchall_211
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v6, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto/16 :goto_280

    .line 237
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v6, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catch_218
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v6, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_259

    .line 241
    .end local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v20    # "outGoingServerPassword":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v6, "inComingServerPassword":Ljava/lang/String;
    .local v10, "outGoingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catchall_21e
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object/from16 v6, v24

    .end local v10    # "outGoingServerPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v20    # "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_280

    .line 237
    .end local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v20    # "outGoingServerPassword":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v6, "inComingServerPassword":Ljava/lang/String;
    .restart local v10    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catch_228
    move-exception v0

    move-object/from16 p3, v6

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object/from16 v6, v24

    .end local v10    # "outGoingServerPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .restart local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v20    # "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_259

    .line 241
    .end local v6    # "outGoingProtocol":Ljava/lang/String;
    .end local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .restart local v10    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catchall_232
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 p3, v20

    move-object/from16 v6, v24

    move-object/from16 v20, v10

    .end local v10    # "outGoingServerPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v6    # "outGoingProtocol":Ljava/lang/String;
    .restart local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_280

    .line 237
    .end local v6    # "outGoingProtocol":Ljava/lang/String;
    .end local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .restart local v10    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catch_23c
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 p3, v20

    move-object/from16 v6, v24

    move-object/from16 v20, v10

    .end local v10    # "outGoingServerPassword":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v6    # "outGoingProtocol":Ljava/lang/String;
    .restart local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_259

    .line 241
    .end local v6    # "outGoingProtocol":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v19, "outGoingServerPassword":Ljava/lang/String;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catchall_246
    move-exception v0

    move-object/from16 p3, v20

    move-object/from16 v6, v24

    move-object/from16 v20, v19

    move-object/from16 v19, v11

    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v6    # "outGoingProtocol":Ljava/lang/String;
    .local v19, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    goto :goto_280

    .line 237
    .end local v6    # "outGoingProtocol":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v19, "outGoingServerPassword":Ljava/lang/String;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :catch_250
    move-exception v0

    move-object/from16 p3, v20

    move-object/from16 v6, v24

    move-object/from16 v20, v19

    move-object/from16 v19, v11

    .line 238
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v6    # "outGoingProtocol":Ljava/lang/String;
    .local v19, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v20, "outGoingServerPassword":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    :goto_259
    :try_start_259
    const-string v1, "addNewAccount_ex() : "

    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25e
    .catchall {:try_start_259 .. :try_end_25e} :catchall_27f

    .line 241
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_25f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    nop

    .line 243
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<\t\taddNewAccount EX : Broadcasting Email + recvSecurityStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-wide/16 v1, 0x0

    return-wide v1

    .line 241
    :catchall_27f
    move-exception v0

    :goto_280
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw v0

    .line 160
    .end local v18    # "containerId":I
    .end local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v20    # "outGoingServerPassword":Ljava/lang/String;
    .end local v22    # "inComingServerLogin":Ljava/lang/String;
    .end local v23    # "outGoingServerLogin":Ljava/lang/String;
    .end local v25    # "outGoingServerAddress":Ljava/lang/String;
    .end local v26    # "emailPkageName":Ljava/lang/String;
    .end local p3    # "inComingServerPassword":Ljava/lang/String;
    .local v4, "inComingServerPassword":Ljava/lang/String;
    .local v5, "inComingServerLogin":Ljava/lang/String;
    .local v6, "outGoingServerLogin":Ljava/lang/String;
    .restart local v7    # "outGoingProtocol":Ljava/lang/String;
    .local v8, "inComingProtocol":Ljava/lang/String;
    .local v9, "outGoingServerAddress":Ljava/lang/String;
    .local v10, "inComingServerAddress":Ljava/lang/String;
    .restart local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v14, "containerId":I
    .local p1, "outGoingServerPassword":Ljava/lang/String;
    :cond_284
    move-object/from16 v20, p1

    move-object/from16 p3, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object v6, v7

    move-object/from16 p1, v8

    move-object/from16 v25, v9

    move-object/from16 v19, v11

    move/from16 v18, v14

    move-object v14, v10

    .line 165
    .end local v4    # "inComingServerPassword":Ljava/lang/String;
    .end local v5    # "inComingServerLogin":Ljava/lang/String;
    .end local v7    # "outGoingProtocol":Ljava/lang/String;
    .end local v8    # "inComingProtocol":Ljava/lang/String;
    .end local v9    # "outGoingServerAddress":Ljava/lang/String;
    .end local v10    # "inComingServerAddress":Ljava/lang/String;
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v6, "outGoingProtocol":Ljava/lang/String;
    .local v14, "inComingServerAddress":Ljava/lang/String;
    .restart local v18    # "containerId":I
    .restart local v19    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v20    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v22    # "inComingServerLogin":Ljava/lang/String;
    .restart local v23    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v25    # "outGoingServerAddress":Ljava/lang/String;
    .local p1, "inComingProtocol":Ljava/lang/String;
    .restart local p3    # "inComingServerPassword":Ljava/lang/String;
    :goto_296
    const-string v0, "addNewAccount() EX : Error :: Invalid input parameters."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-wide v16
.end method

.method public addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .registers 37
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "account"    # Lcom/samsung/android/knox/accounts/EmailAccount;

    .line 1140
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v10

    .line 1141
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v10, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    const-string v11, "EmailAccountPolicy"

    const-string v0, ">>>>>>>>>>>>>>>>>\t\taddNewAccount NEW "

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    .line 1143
    .local v12, "userID":I
    iget v13, v10, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1146
    .local v13, "containerId":I
    const-wide/16 v14, -0x1

    if-nez v2, :cond_1f

    .line 1148
    const-string v0, "addNewAccount() NEW : Error :: Invalid Account."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-wide v14

    .line 1153
    :cond_1f
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1154
    .local v9, "emailAddress":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1155
    .local v8, "inComingServerAddress":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1156
    .local v7, "outGoingServerAddress":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1157
    .local v6, "inComingProtocol":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    .local v5, "outGoingProtocol":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "inComingServerLogin":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, "outGoingServerLogin":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1161
    .local v14, "inComingServerPassword":Ljava/lang/String;
    iget-object v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1162
    .local v15, "outGoingServerPassword":Ljava/lang/String;
    move-object/from16 p1, v14

    .end local v14    # "inComingServerPassword":Ljava/lang/String;
    .local p1, "inComingServerPassword":Ljava/lang/String;
    iget v14, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    .line 1163
    .local v14, "inComingServerPort":I
    move-object/from16 v18, v15

    .end local v15    # "outGoingServerPassword":Ljava/lang/String;
    .local v18, "outGoingServerPassword":Ljava/lang/String;
    iget v15, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    .line 1164
    .local v15, "outGoingServerPort":I
    if-eqz v9, :cond_2ff

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    if-eqz v8, :cond_2ff

    if-eqz v7, :cond_2ff

    if-eqz v6, :cond_2ff

    if-eqz v5, :cond_2ff

    const/4 v0, 0x1

    if-gt v0, v14, :cond_2ff

    if-gt v0, v15, :cond_2ff

    if-eqz v3, :cond_2ff

    if-nez v4, :cond_8b

    move-object/from16 v20, p1

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object v5, v7

    move-object/from16 v27, v8

    move-object/from16 p1, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move-object v13, v4

    move-object v12, v9

    goto/16 :goto_312

    .line 1173
    :cond_8b
    move-object/from16 v19, v4

    .end local v4    # "inComingServerLogin":Ljava/lang/String;
    .local v19, "inComingServerLogin":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 1174
    .local v4, "emailPkageName":Ljava/lang/String;
    invoke-static {v4, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    .end local v3    # "outGoingServerLogin":Ljava/lang/String;
    .local v20, "outGoingServerLogin":Ljava/lang/String;
    const-string v3, "addNewAccount() EX : Error :: Email app is not installed on user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-wide/16 v16, -0x1

    return-wide v16

    .line 1179
    .end local v20    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v3    # "outGoingServerLogin":Ljava/lang/String;
    :cond_b0
    move-object/from16 v20, v3

    .end local v3    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v20    # "outGoingServerLogin":Ljava/lang/String;
    const/4 v0, 0x0

    const/16 v21, 0x0

    iget-object v3, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move/from16 v22, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v3

    .end local v20    # "outGoingServerLogin":Ljava/lang/String;
    .local v12, "outGoingServerLogin":Ljava/lang/String;
    .local v22, "userID":I
    move-object v3, v10

    move/from16 v23, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v4

    .end local v4    # "emailPkageName":Ljava/lang/String;
    .local v13, "inComingServerLogin":Ljava/lang/String;
    .local v19, "emailPkageName":Ljava/lang/String;
    .local v23, "containerId":I
    move-object v4, v0

    move-object/from16 v24, v5

    .end local v5    # "outGoingProtocol":Ljava/lang/String;
    .local v24, "outGoingProtocol":Ljava/lang/String;
    move-object v5, v9

    move-object/from16 v25, v6

    .end local v6    # "inComingProtocol":Ljava/lang/String;
    .local v25, "inComingProtocol":Ljava/lang/String;
    move-object v6, v8

    move-object/from16 v26, v7

    .end local v7    # "outGoingServerAddress":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    move-object/from16 v7, v25

    move-object/from16 v27, v8

    .end local v8    # "inComingServerAddress":Ljava/lang/String;
    .local v27, "inComingServerAddress":Ljava/lang/String;
    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object v12, v9

    .end local v9    # "emailAddress":Ljava/lang/String;
    .local v12, "emailAddress":Ljava/lang/String;
    .local v21, "outGoingServerLogin":Ljava/lang/String;
    move-object/from16 v9, v20

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_ea

    .line 1181
    const-string v0, "addNewAccount() NEW : Error :: Account already exists."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-wide/16 v3, -0x1

    return-wide v3

    .line 1185
    :cond_ea
    const-string/jumbo v0, "none"

    .line 1186
    .local v0, "sendSecurityStr":Ljava/lang/String;
    const-string/jumbo v3, "none"

    .line 1188
    .local v3, "recvSecurityStr":Ljava/lang/String;
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-eqz v4, :cond_ff

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v4, :cond_ff

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_ff

    .line 1189
    const-string/jumbo v0, "ssl"

    .line 1191
    :cond_ff
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-nez v4, :cond_10e

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v4, :cond_10e

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-nez v4, :cond_10e

    .line 1192
    const-string/jumbo v0, "tls"

    .line 1194
    :cond_10e
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-eqz v4, :cond_11d

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-nez v4, :cond_11d

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_11d

    .line 1195
    const-string/jumbo v0, "ssl+trustallcerts"

    .line 1197
    :cond_11d
    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    if-nez v4, :cond_12e

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    if-eqz v4, :cond_12e

    iget-boolean v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    if-eqz v4, :cond_12e

    .line 1198
    const-string/jumbo v0, "tls+trustallcerts"

    move-object v4, v0

    goto :goto_12f

    .line 1200
    :cond_12e
    move-object v4, v0

    .end local v0    # "sendSecurityStr":Ljava/lang/String;
    .local v4, "sendSecurityStr":Ljava/lang/String;
    :goto_12f
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-eqz v0, :cond_13e

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v0, :cond_13e

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v0, :cond_13e

    .line 1201
    const-string/jumbo v3, "ssl"

    .line 1203
    :cond_13e
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-nez v0, :cond_14d

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v0, :cond_14d

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-nez v0, :cond_14d

    .line 1204
    const-string/jumbo v3, "tls"

    .line 1206
    :cond_14d
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-eqz v0, :cond_15c

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-nez v0, :cond_15c

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v0, :cond_15c

    .line 1207
    const-string/jumbo v3, "ssl+trustallcerts"

    .line 1209
    :cond_15c
    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    if-nez v0, :cond_16b

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    if-eqz v0, :cond_16b

    iget-boolean v0, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    if-eqz v0, :cond_16b

    .line 1210
    const-string/jumbo v3, "tls+trustallcerts"

    .line 1212
    :cond_16b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1214
    .local v7, "token":J
    :try_start_16f
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.CREATE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_176} :catch_2cb
    .catchall {:try_start_16f .. :try_end_176} :catchall_2c1

    .line 1216
    .local v0, "newIntent":Landroid/content/Intent;
    move-object/from16 v9, v18

    .end local v18    # "outGoingServerPassword":Ljava/lang/String;
    .local v9, "outGoingServerPassword":Ljava/lang/String;
    :try_start_178
    invoke-virtual {v1, v10, v9}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v16
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_17c} :catch_2b5
    .catchall {:try_start_178 .. :try_end_17c} :catchall_2a9

    move-wide/from16 v28, v16

    .line 1217
    .local v28, "accOutgoingID":J
    move-object/from16 v5, p1

    .end local p1    # "inComingServerPassword":Ljava/lang/String;
    .local v5, "inComingServerPassword":Ljava/lang/String;
    :try_start_180
    invoke-virtual {v1, v10, v5}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v32, v30

    .line 1220
    .local v32, "accIncomingID":J
    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_188} :catch_29d
    .catchall {:try_start_180 .. :try_end_188} :catchall_290

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move-wide/from16 v9, v32

    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .end local v32    # "accIncomingID":J
    .local v9, "accIncomingID":J
    .restart local v18    # "outGoingServerPassword":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :try_start_18e
    invoke-virtual {v0, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1221
    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const-string v6, "com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL"

    invoke-virtual {v0, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1223
    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL"

    move-wide/from16 v30, v9

    move-wide/from16 v9, v28

    .end local v28    # "accOutgoingID":J
    .local v9, "accOutgoingID":J
    .local v30, "accIncomingID":J
    invoke-virtual {v0, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1224
    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1a6} :catch_288
    .catchall {:try_start_18e .. :try_end_1a6} :catchall_27f

    move-object/from16 v20, v5

    move-object/from16 v5, v25

    .end local v25    # "inComingProtocol":Ljava/lang/String;
    .local v5, "inComingProtocol":Ljava/lang/String;
    .local v20, "inComingServerPassword":Ljava/lang/String;
    :try_start_1aa
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_SERVICE_INTERNAL"
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1af} :catch_276
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_26d

    move-object/from16 v25, v5

    move-object/from16 v5, v24

    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v5, "outGoingProtocol":Ljava/lang/String;
    .restart local v25    # "inComingProtocol":Ljava/lang/String;
    :try_start_1b3
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b8} :catch_264
    .catchall {:try_start_1b3 .. :try_end_1b8} :catchall_25b

    move-object/from16 v24, v5

    move-object/from16 v5, v27

    .end local v27    # "inComingServerAddress":Ljava/lang/String;
    .local v5, "inComingServerAddress":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    :try_start_1bc
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_SECURITY_INTERNAL"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_PORT_INTERNAL"

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    const-string v6, "com.samsung.android.knox.intent.extra.SEND_HOST_INTERNAL"
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1cb} :catch_252
    .catchall {:try_start_1bc .. :try_end_1cb} :catchall_249

    move-object/from16 v27, v5

    move-object/from16 v5, v26

    .end local v26    # "outGoingServerAddress":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v27    # "inComingServerAddress":Ljava/lang/String;
    :try_start_1cf
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const-string v6, "com.samsung.android.knox.intent.extra.SEND_SECURITY_INTERNAL"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v6, "com.samsung.android.knox.intent.extra.SEND_PORT_INTERNAL"

    invoke-virtual {v0, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1232
    const-string v6, "com.samsung.android.knox.intent.extra.SENDER_NAME_INTERNAL"

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    const-string v6, "com.samsung.android.knox.intent.extra.OUTGOING_SENDER_NAME_INTERNAL"
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1e3} :catch_244
    .catchall {:try_start_1cf .. :try_end_1e3} :catchall_23f

    move-object/from16 v26, v4

    move-object/from16 v4, v21

    .end local v21    # "outGoingServerLogin":Ljava/lang/String;
    .local v4, "outGoingServerLogin":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    :try_start_1e7
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    const-string v6, "com.samsung.android.knox.intent.extra.SIGNATURE_INTERNAL"
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ec} :catch_23a
    .catchall {:try_start_1e7 .. :try_end_1ec} :catchall_235

    move-object/from16 v21, v4

    .end local v4    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v21    # "outGoingServerLogin":Ljava/lang/String;
    :try_start_1ee
    iget-object v4, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v4, "com.samsung.android.knox.intent.extra.EXTRA_NOTIFY_INTERNAL"

    iget-boolean v6, v2, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1236
    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v4, v1, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1ee .. :try_end_205} :catch_232
    .catchall {:try_start_1ee .. :try_end_205} :catchall_2fa

    move/from16 v1, v22

    .end local v22    # "userID":I
    .local v1, "userID":I
    :try_start_207
    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20a} :catch_22d
    .catchall {:try_start_207 .. :try_end_20a} :catchall_228

    move/from16 v22, v1

    .end local v1    # "userID":I
    .restart local v22    # "userID":I
    :try_start_20c
    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v4, v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addNewAccount() NEW : sent intent to Email app : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_225} :catch_232
    .catchall {:try_start_20c .. :try_end_225} :catchall_2fa

    .line 1243
    nop

    .end local v0    # "newIntent":Landroid/content/Intent;
    .end local v9    # "accOutgoingID":J
    .end local v30    # "accIncomingID":J
    goto/16 :goto_2da

    .end local v22    # "userID":I
    .restart local v1    # "userID":I
    :catchall_228
    move-exception v0

    move/from16 v22, v1

    .end local v1    # "userID":I
    .restart local v22    # "userID":I
    goto/16 :goto_2fb

    .line 1240
    .end local v22    # "userID":I
    .restart local v1    # "userID":I
    :catch_22d
    move-exception v0

    move/from16 v22, v1

    .end local v1    # "userID":I
    .restart local v22    # "userID":I
    goto/16 :goto_2d4

    :catch_232
    move-exception v0

    goto/16 :goto_2d4

    .line 1243
    .end local v21    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v4    # "outGoingServerLogin":Ljava/lang/String;
    :catchall_235
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v21    # "outGoingServerLogin":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v21    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v4    # "outGoingServerLogin":Ljava/lang/String;
    :catch_23a
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v21    # "outGoingServerLogin":Ljava/lang/String;
    goto/16 :goto_2d4

    .line 1243
    .end local v26    # "sendSecurityStr":Ljava/lang/String;
    .local v4, "sendSecurityStr":Ljava/lang/String;
    :catchall_23f
    move-exception v0

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v26    # "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v26    # "sendSecurityStr":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    :catch_244
    move-exception v0

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v26    # "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2d4

    .line 1243
    .end local v27    # "inComingServerAddress":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerAddress":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catchall_249
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .restart local v27    # "inComingServerAddress":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v27    # "inComingServerAddress":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerAddress":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catch_252
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .restart local v27    # "inComingServerAddress":Ljava/lang/String;
    goto/16 :goto_2d4

    .line 1243
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingProtocol":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catchall_25b
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingProtocol":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catch_264
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2d4

    .line 1243
    .end local v25    # "inComingProtocol":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingProtocol":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catchall_26d
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v25    # "inComingProtocol":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v25    # "inComingProtocol":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingProtocol":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catch_276
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v25    # "inComingProtocol":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2d4

    .line 1243
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerPassword":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catchall_27f
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto/16 :goto_2fb

    .line 1240
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerPassword":Ljava/lang/String;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catch_288
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    goto :goto_2d4

    .line 1243
    .end local v18    # "outGoingServerPassword":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerPassword":Ljava/lang/String;
    .local v9, "outGoingServerPassword":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catchall_290
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v9    # "outGoingServerPassword":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v18    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto/16 :goto_2fb

    .line 1240
    .end local v18    # "outGoingServerPassword":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .end local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .local v5, "inComingServerPassword":Ljava/lang/String;
    .restart local v9    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    :catch_29d
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v9    # "outGoingServerPassword":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .restart local v18    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .restart local p1    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d4

    .line 1243
    .end local v5    # "outGoingServerAddress":Ljava/lang/String;
    .end local v18    # "outGoingServerPassword":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v9    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    .local p1, "inComingServerPassword":Ljava/lang/String;
    :catchall_2a9
    move-exception v0

    move-object/from16 v20, p1

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v9    # "outGoingServerPassword":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v5    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v18    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2fb

    .line 1240
    .end local v5    # "outGoingServerAddress":Ljava/lang/String;
    .end local v18    # "outGoingServerPassword":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v9    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    .local p1, "inComingServerPassword":Ljava/lang/String;
    :catch_2b5
    move-exception v0

    move-object/from16 v20, p1

    move-object/from16 v18, v9

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v9    # "outGoingServerPassword":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v5    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v18    # "outGoingServerPassword":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2d4

    .line 1243
    .end local v5    # "outGoingServerAddress":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    .local p1, "inComingServerPassword":Ljava/lang/String;
    :catchall_2c1
    move-exception v0

    move-object/from16 v20, p1

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .restart local v5    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    goto :goto_2fb

    .line 1240
    .end local v5    # "outGoingServerAddress":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v4    # "sendSecurityStr":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v26, "outGoingServerAddress":Ljava/lang/String;
    .local p1, "inComingServerPassword":Ljava/lang/String;
    :catch_2cb
    move-exception v0

    move-object/from16 v20, p1

    move-object/from16 p1, v10

    move-object/from16 v5, v26

    move-object/from16 v26, v4

    .line 1241
    .end local v4    # "sendSecurityStr":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v5    # "outGoingServerAddress":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .local v26, "sendSecurityStr":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_2d4
    :try_start_2d4
    const-string v1, "addNewAccount() NEW :  failed. "

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d9
    .catchall {:try_start_2d4 .. :try_end_2d9} :catchall_2fa

    .line 1243
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2da
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    nop

    .line 1245
    const-string v0, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<<<<<<<<<<<<<<\t\taddNewAccount NEW : Broadcasting Email +  recvSecurityStr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-wide/16 v9, 0x0

    return-wide v9

    .line 1243
    :catchall_2fa
    move-exception v0

    :goto_2fb
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    throw v0

    .line 1164
    .end local v19    # "emailPkageName":Ljava/lang/String;
    .end local v20    # "inComingServerPassword":Ljava/lang/String;
    .end local v21    # "outGoingServerLogin":Ljava/lang/String;
    .end local v22    # "userID":I
    .end local v23    # "containerId":I
    .end local v24    # "outGoingProtocol":Ljava/lang/String;
    .end local v25    # "inComingProtocol":Ljava/lang/String;
    .end local v26    # "sendSecurityStr":Ljava/lang/String;
    .end local v27    # "inComingServerAddress":Ljava/lang/String;
    .local v3, "outGoingServerLogin":Ljava/lang/String;
    .local v4, "inComingServerLogin":Ljava/lang/String;
    .local v5, "outGoingProtocol":Ljava/lang/String;
    .restart local v6    # "inComingProtocol":Ljava/lang/String;
    .local v7, "outGoingServerAddress":Ljava/lang/String;
    .restart local v8    # "inComingServerAddress":Ljava/lang/String;
    .local v9, "emailAddress":Ljava/lang/String;
    .restart local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v12, "userID":I
    .local v13, "containerId":I
    .local p1, "inComingServerPassword":Ljava/lang/String;
    :cond_2ff
    move-object/from16 v20, p1

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object v5, v7

    move-object/from16 v27, v8

    move-object/from16 p1, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move-object v13, v4

    move-object v12, v9

    .line 1169
    .end local v3    # "outGoingServerLogin":Ljava/lang/String;
    .end local v4    # "inComingServerLogin":Ljava/lang/String;
    .end local v6    # "inComingProtocol":Ljava/lang/String;
    .end local v7    # "outGoingServerAddress":Ljava/lang/String;
    .end local v8    # "inComingServerAddress":Ljava/lang/String;
    .end local v9    # "emailAddress":Ljava/lang/String;
    .end local v10    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    .local v5, "outGoingServerAddress":Ljava/lang/String;
    .local v12, "emailAddress":Ljava/lang/String;
    .local v13, "inComingServerLogin":Ljava/lang/String;
    .restart local v20    # "inComingServerPassword":Ljava/lang/String;
    .restart local v21    # "outGoingServerLogin":Ljava/lang/String;
    .restart local v22    # "userID":I
    .restart local v23    # "containerId":I
    .restart local v24    # "outGoingProtocol":Ljava/lang/String;
    .restart local v25    # "inComingProtocol":Ljava/lang/String;
    .restart local v27    # "inComingServerAddress":Ljava/lang/String;
    .local p1, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :goto_312
    const-string v0, "addNewAccount() NEW : Error :: Invalid input parameters."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 969
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 970
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 971
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 972
    .local v1, "userID":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 973
    .local v2, "containerId":I
    const/4 v3, 0x0

    .line 975
    .local v3, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v4

    .line 976
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const-string v5, "EmailAccountPolicy"

    if-nez v4, :cond_2c

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount_new() : No exist accId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return v3

    .line 980
    :cond_2c
    iget-object v6, v4, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v7, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccount_new() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return v3

    .line 984
    :cond_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 987
    .local v6, "token":J
    :try_start_52
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.knox.intent.action.DELETE_EMAILACCOUNT_INTERNAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 988
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v9, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    invoke-virtual {v8, v9, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 992
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v11, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_71} :catch_75
    .catchall {:try_start_52 .. :try_end_71} :catchall_73

    .line 995
    const/4 v3, 0x1

    .end local v8    # "newIntent":Landroid/content/Intent;
    goto :goto_7c

    .line 1000
    :catchall_73
    move-exception v5

    goto :goto_81

    .line 996
    :catch_75
    move-exception v8

    .line 997
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_76
    const-string v9, "deleteAccount_new() : failed. "

    invoke-static {v5, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_73

    .line 998
    const/4 v3, 0x0

    .line 1000
    .end local v8    # "ex":Ljava/lang/Exception;
    :goto_7c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    nop

    .line 1002
    return v3

    .line 1000
    :goto_81
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    throw v5
.end method

.method public getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 952
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getAccountDetails() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 955
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v0, :cond_28

    .line 956
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v1

    return-object v1

    .line 958
    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailId"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;

    .line 940
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 941
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1080
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "getAllEmailAccounts()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/accounts/Account;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 1083
    .local v2, "accountlist":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v2, :cond_2b

    .line 1084
    array-length v0, v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v0, :cond_31

    aget-object v4, v2, v3

    .line 1085
    .local v4, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v4, :cond_28

    .line 1086
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    .end local v4    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1089
    :cond_2b
    const-string/jumbo v3, "getAllEmailAccounts_new( ): ids is empty "

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/accounts/Account;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/accounts/Account;

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    return-object v0
.end method

.method public getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .line 1268
    const-string v0, "EmailAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1269
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1270
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 1272
    .local v2, "password":Ljava/lang/String;
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1273
    .local v3, "caller":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1274
    const-string/jumbo v4, "getSecurityInComingServerPassword() success"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 1278
    nop

    .end local v3    # "caller":Ljava/lang/String;
    goto :goto_35

    .line 1275
    :catch_2d
    move-exception v3

    .line 1276
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "getSecurityInComingServerPassword() failed "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1277
    const/4 v2, 0x0

    .line 1279
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_35
    return-object v2
.end method

.method public getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "callID"    # J

    .line 1252
    const-string v0, "EmailAccountPolicy"

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1253
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1254
    .local v1, "containerId":I
    const/4 v2, 0x0

    .line 1256
    .local v2, "password":Ljava/lang/String;
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "O#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, "caller":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1258
    const-string/jumbo v4, "getSecurityOutGoingServerPassword() success"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 1262
    nop

    .end local v3    # "caller":Ljava/lang/String;
    goto :goto_35

    .line 1259
    :catch_2d
    move-exception v3

    .line 1260
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "getSecurityOutGoingServerPassword() failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1261
    const/4 v2, 0x0

    .line 1263
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_35
    return-object v2
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 1322
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1120
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1126
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 1137
    return-void
.end method

.method public removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1097
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1098
    .local v0, "adminUid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1099
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 1100
    .local v2, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1103
    .local v3, "token":J
    :try_start_10
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.DELETE_NOT_VALIDATED_EMAILACCOUNT_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v5, "newIntent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    const-string v6, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string v6, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_39} :catch_3c
    .catchall {:try_start_10 .. :try_end_39} :catchall_3a

    .line 1113
    .end local v5    # "newIntent":Landroid/content/Intent;
    goto :goto_46

    :catchall_3a
    move-exception v5

    goto :goto_4b

    .line 1110
    :catch_3c
    move-exception v5

    .line 1111
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3d
    const-string v6, "EmailAccountPolicy"

    const-string/jumbo v7, "removePendingAccount() : failed. "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_3a

    .line 1113
    nop

    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_46
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    return-void

    .line 1113
    :goto_4b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v5
.end method

.method public sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1011
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1012
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1013
    .local v0, "adminUid":I
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1014
    .local v1, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1015
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1016
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    return-void
.end method

.method public setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 258
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    .line 261
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const-string v2, "EmailAccountPolicy"

    if-nez v1, :cond_29

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v0

    .line 265
    :cond_29
    if-nez p2, :cond_33

    .line 266
    const-string/jumbo v3, "setAccountName_new() : accountName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v2, 0x0

    return v2

    .line 269
    :cond_33
    iput-object p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAccountName ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v0
.end method

.method public setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlwaysVibrateOnEmailNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 404
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 405
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAlwaysVibrateOnEmailNotification_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v2

    .line 409
    :cond_3f
    if-eqz p2, :cond_47

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 411
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_49

    .line 413
    :cond_47
    iput-boolean v2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 415
    :goto_49
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "accId"    # J

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAsDefaultAccount :  userID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",   accId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 926
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_44

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAsDefaultAccount_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v1, 0x0

    return v1

    .line 930
    :cond_44
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 931
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 313
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setEmailAddress() : deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 498
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 499
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingProtocol()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 503
    const/4 v1, 0x0

    if-nez p2, :cond_1a

    .line 504
    const-string/jumbo v2, "setInComingProtocol() : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v1

    .line 507
    :cond_1a
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 508
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v2, :cond_38

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingProtocol_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v1

    .line 512
    :cond_38
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingProtocol returned  protocol : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .line 604
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 605
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAcceptAllCertificates()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    .line 607
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v1, :cond_2b

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x0

    return v0

    .line 611
    :cond_2b
    iput-boolean p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 526
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerAddress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 530
    const-wide/16 v1, -0x1

    if-nez p2, :cond_1b

    .line 531
    const-string/jumbo v3, "setInComingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-wide v1

    .line 534
    :cond_1b
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .line 535
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v3, :cond_39

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerAddress_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-wide v1

    .line 539
    :cond_39
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-wide v1, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    :cond_5a
    return-wide v1
.end method

.method public setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 625
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 626
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerLogin() : deprecated. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 629
    const-wide/16 v1, -0x1

    if-nez p2, :cond_1b

    .line 630
    const-string/jumbo v3, "setInComingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-wide v1

    .line 634
    :cond_1b
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 635
    invoke-static {p1, p3, p4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 637
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_39

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerLogin() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-wide v1

    .line 641
    :cond_39
    const-string/jumbo v4, "setInComingServerLogin deprecated "

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 645
    return-wide v1
.end method

.method public setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 658
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 659
    .local v0, "containerId":I
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 660
    const/4 v1, 0x0

    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_16

    .line 661
    const-string/jumbo v3, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return v1

    .line 665
    :cond_16
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .line 666
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v3, :cond_34

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInComingServerPassword_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v1

    .line 670
    :cond_34
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 684
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPathPrefix() : deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 687
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 688
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    .line 690
    .local v1, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPathPrefix() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return v2

    .line 695
    :cond_2f
    iput-object p2, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 698
    return v2
.end method

.method public setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 554
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerPort()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    if-gez p2, :cond_16

    .line 557
    const-string/jumbo v2, "setInComingServerPort() : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v1

    .line 561
    :cond_16
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 562
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v2, :cond_34

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setInComingServerPort_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v1

    .line 566
    :cond_34
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerPort returned  port : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 581
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setInComingServerSSL()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v1

    .line 584
    .local v1, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v1, :cond_2b

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    return v0

    .line 588
    :cond_2b
    iput-boolean p2, v1, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 726
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingProtocol : deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 730
    const/4 v1, 0x0

    if-nez p2, :cond_1a

    .line 731
    const-string/jumbo v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v1

    .line 735
    :cond_1a
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 736
    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 738
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_38

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingProtocol() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v1

    .line 743
    :cond_38
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 746
    return v1
.end method

.method public setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 824
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_3a

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerAcceptAllCertificates_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v1, 0x0

    return v1

    .line 828
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerAcceptAllCertificates returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "serverAddress"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 750
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 751
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 753
    const-wide/16 v0, -0x1

    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_15

    .line 754
    const-string/jumbo v3, "setOutGoingServerAddress() : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-wide v0

    .line 758
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .line 759
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v3, :cond_33

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerAddress_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-wide v0

    .line 763
    :cond_33
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerAddress() returned  serverAddress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-wide v0, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    :cond_54
    return-wide v0
.end method

.method public setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 844
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 846
    const-string v0, "EmailAccountPolicy"

    const-wide/16 v1, -0x1

    if-nez p2, :cond_15

    .line 847
    const-string/jumbo v3, "setOutGoingServerLogin() : Error :: Invalid input parameter."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-wide v1

    .line 851
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 852
    invoke-static {p1, p3, p4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v3

    .line 854
    .local v3, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v3, :cond_33

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerLogin() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-wide v1

    .line 859
    :cond_33
    iput-object p2, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 862
    return-wide v1
.end method

.method public setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 873
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 874
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 876
    .local v0, "containerId":I
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 877
    const/4 v1, 0x0

    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_16

    .line 878
    const-string/jumbo v3, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return v1

    .line 881
    :cond_16
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .line 882
    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v3, :cond_34

    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOutGoingServerPassword_new() : No exist accId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v1

    .line 886
    :cond_34
    iput-object p2, v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "pathPrefix"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 898
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 899
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setOutGoingServerPathPrefix() : deprecated. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 902
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 903
    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v1

    .line 905
    .local v1, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v2, 0x0

    if-nez v1, :cond_2f

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPathPrefix() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v2

    .line 910
    :cond_2f
    iput-object p2, v1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 913
    return v2
.end method

.method public setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "port"    # I
    .param p3, "accId"    # J

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 772
    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-gez p2, :cond_10

    .line 773
    const-string/jumbo v2, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v0

    .line 777
    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 778
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v2, :cond_2e

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutGoingServerPort_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v0

    .line 782
    :cond_2e
    iput p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerPort returned  port : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .line 796
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOutGoingServerSSL() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmailAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 800
    .local v0, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v0, :cond_3a

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerSSL_new() : No exist accId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    return v1

    .line 804
    :cond_3a
    iput-boolean p2, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOutGoingServerSSL returned  port : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v1

    return v1
.end method

.method public setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 1304
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1305
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1306
    .local v0, "callID":J
    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_1b

    .line 1307
    const-string/jumbo v3, "setSecurityInComingServerPassword() : password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1311
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1312
    .local v3, "caller":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1313
    const-string/jumbo v4, "setSecurityInComingServerPassword() success"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_39
    .catchall {:try_start_1b .. :try_end_35} :catchall_37

    .line 1318
    nop

    .end local v3    # "caller":Ljava/lang/String;
    return-wide v0

    :catchall_37
    move-exception v2

    goto :goto_41

    .line 1314
    :catch_39
    move-exception v3

    .line 1315
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3a
    const-string/jumbo v4, "setSecurityInComingServerPassword() failed"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 1316
    nop

    .line 1318
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_41
    return-wide v0
.end method

.method public setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .line 1284
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1285
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1286
    .local v0, "callID":J
    const-string v2, "EmailAccountPolicy"

    if-nez p2, :cond_1b

    .line 1287
    const-string/jumbo v3, "setSecurityOutGoingServerPassword() : password is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1291
    :cond_1b
    :try_start_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "O#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    .local v3, "caller":Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1293
    const-string/jumbo v4, "setSecurityOutGoingServerPassword() success"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_35} :catch_39
    .catchall {:try_start_1b .. :try_end_35} :catchall_37

    .line 1298
    nop

    .end local v3    # "caller":Ljava/lang/String;
    return-wide v0

    :catchall_37
    move-exception v2

    goto :goto_41

    .line 1294
    :catch_39
    move-exception v3

    .line 1295
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3a
    const-string/jumbo v4, "setSecurityOutGoingServerPassword() failed"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 1296
    nop

    .line 1298
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_41
    return-wide v0
.end method

.method public setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 352
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 354
    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_14

    .line 355
    const-string/jumbo v2, "setSenderName() : senderName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v0

    .line 359
    :cond_14
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 360
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v2, :cond_32

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEmailAddress_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v0

    .line 364
    :cond_32
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 379
    const/4 v0, 0x0

    const-string v1, "EmailAccountPolicy"

    if-nez p2, :cond_10

    .line 380
    const-string/jumbo v2, "setSignature() : signature is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v0

    .line 384
    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p3, p4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 385
    .local v2, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-nez v2, :cond_2e

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSignature_new() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v0

    .line 389
    :cond_2e
    iput-object p2, v2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->updateEnterpriseEmailAccount(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z

    move-result v0

    return v0
.end method

.method public setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 466
    const-string v0, "EmailAccountPolicy"

    const-string/jumbo v1, "setSilentVibrateOnEmailNotification() : deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 328
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 329
    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 330
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v1, 0x0

    const-string v2, "EmailAccountPolicy"

    if-nez v0, :cond_25

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncInterval() : No exist accId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v1

    .line 335
    :cond_25
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 337
    const-string/jumbo v3, "setSyncInterval() : deprecated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v1
.end method

.method public systemReady()V
    .registers 1

    .line 1132
    return-void
.end method
