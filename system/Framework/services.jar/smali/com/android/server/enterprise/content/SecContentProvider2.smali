.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final ENTERPRISELICENSE:I = 0x15

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 147
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 148
    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseLicenseService"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 3567
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3568
    .local v0, "callerName":Ljava/lang/String;
    if-nez v0, :cond_f

    const-string v1, "fail to get caller name"

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method private getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .registers 2

    .line 3591
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_11

    .line 3592
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 3594
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method

.method private populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;
    .registers 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .line 3522
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3523
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3524
    return-object v0
.end method

.method private queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 3213
    nop

    .line 3214
    const-string v0, "device_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 3215
    .local v0, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    const/4 v1, 0x0

    if-eqz v0, :cond_77

    if-eqz p1, :cond_77

    .line 3216
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7117b61

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2b

    const v4, 0x4fb7d6e9    # 6.1686298E9f

    if-eq v3, v4, :cond_20

    :cond_1f
    goto :goto_35

    :cond_20
    const-string/jumbo v3, "isAccountAdditionAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v2, v6

    goto :goto_35

    :cond_2b
    const-string/jumbo v3, "isAccountRemovalAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v2, v5

    :goto_35
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v2, :cond_59

    if-eq v2, v6, :cond_3c

    .line 3240
    return-object v1

    .line 3229
    :cond_3c
    if-eqz p2, :cond_58

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v4, :cond_45

    goto :goto_58

    .line 3232
    :cond_45
    aget-object v1, p2, v5

    aget-object v2, p2, v6

    aget-object v3, p2, v3

    .line 3233
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3232
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3236
    .local v1, "result":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 3238
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    goto :goto_75

    .line 3230
    .end local v1    # "result":Z
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :cond_58
    :goto_58
    return-object v1

    .line 3218
    :cond_59
    if-eqz p2, :cond_76

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v4, :cond_62

    goto :goto_76

    .line 3221
    :cond_62
    aget-object v1, p2, v5

    aget-object v2, p2, v6

    aget-object v3, p2, v3

    .line 3222
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3221
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3225
    .restart local v1    # "result":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 3227
    .restart local v2    # "mCursor":Landroid/database/MatrixCursor;
    nop

    .line 3243
    :goto_75
    return-object v2

    .line 3219
    .end local v1    # "result":Z
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :cond_76
    :goto_76
    return-object v1

    .line 3245
    :cond_77
    return-object v1
.end method

.method private queryDualSim(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 3080
    nop

    .line 3081
    const-string v0, "dualsim_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .line 3082
    .local v0, "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    const/4 v1, 0x0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    .line 3083
    const-string/jumbo v2, "getpreferredsimslot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 3084
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    .line 3086
    .local v1, "result":I
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3090
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    new-array v3, v3, [Ljava/lang/Integer;

    .line 3091
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 3090
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3094
    return-object v2

    .line 3096
    .end local v1    # "result":I
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :cond_37
    return-object v1

    .line 3099
    :cond_38
    return-object v1
.end method

.method private queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3106
    nop

    .line 3107
    const-string v0, "email_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 3108
    .local v0, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    const/4 v1, 0x0

    if-eqz v0, :cond_fb

    if-eqz p1, :cond_fb

    .line 3109
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_fc

    :cond_1a
    goto :goto_46

    :sswitch_1b
    const-string/jumbo v3, "getSecurityIncomingServerPassword"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v2, v7

    goto :goto_46

    :sswitch_26
    const-string/jumbo v3, "getSecurityOutgoingServerPassword"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v2, v6

    goto :goto_46

    :sswitch_31
    const-string/jumbo v3, "setSecurityInComingServerPassword"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v2, v5

    goto :goto_46

    :sswitch_3c
    const-string/jumbo v3, "setSecurityOutGoingServerPassword"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v2, v4

    :goto_46
    if-eqz v2, :cond_cf

    if-eq v2, v6, :cond_a4

    if-eq v2, v5, :cond_7a

    if-eq v2, v4, :cond_4f

    .line 3168
    return-object v1

    .line 3155
    :cond_4f
    if-eqz p2, :cond_79

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v6, :cond_58

    goto :goto_79

    .line 3158
    :cond_58
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, p2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 3162
    .local v1, "long_res":J
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3163
    .local v3, "mCursor":Landroid/database/MatrixCursor;
    new-array v4, v6, [Ljava/lang/String;

    .line 3164
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 3163
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3166
    goto/16 :goto_f9

    .line 3156
    .end local v1    # "long_res":J
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_79
    :goto_79
    return-object v1

    .line 3141
    :cond_7a
    if-eqz p2, :cond_a3

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v6, :cond_83

    goto :goto_a3

    .line 3144
    :cond_83
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, p2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v1

    .line 3148
    .restart local v1    # "long_res":J
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3149
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    new-array v4, v6, [Ljava/lang/String;

    .line 3150
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 3149
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3152
    goto :goto_f9

    .line 3142
    .end local v1    # "long_res":J
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_a3
    :goto_a3
    return-object v1

    .line 3125
    :cond_a4
    if-eqz p2, :cond_ce

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_ad

    goto :goto_ce

    .line 3129
    :cond_ad
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, p2, v7

    .line 3132
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3130
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v1

    .line 3135
    .local v1, "outServer":Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v7

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 3136
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3139
    goto :goto_f9

    .line 3126
    .end local v1    # "outServer":Ljava/lang/String;
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_ce
    :goto_ce
    return-object v1

    .line 3111
    :cond_cf
    if-eqz p2, :cond_fa

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_d8

    goto :goto_fa

    .line 3115
    :cond_d8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, p2, v7

    .line 3118
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3116
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v1

    .line 3119
    .local v1, "incServer":Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v7

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v3, v2

    .line 3120
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3123
    nop

    .line 3171
    .end local v1    # "incServer":Ljava/lang/String;
    :goto_f9
    return-object v3

    .line 3112
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_fa
    :goto_fa
    return-object v1

    .line 3173
    :cond_fb
    return-object v1

    :sswitch_data_fc
    .sparse-switch
        -0x5ed62634 -> :sswitch_3c
        0x655a3d46 -> :sswitch_31
        0x705941e0 -> :sswitch_26
        0x7378391a -> :sswitch_1b
    .end sparse-switch
.end method

.method private queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 3307
    nop

    .line 3309
    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 3310
    .local v0, "enterpriseLicenseService":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 3311
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x60245cde

    const/4 v5, 0x0

    if-eq v3, v4, :cond_18

    :cond_17
    goto :goto_22

    :cond_18
    const-string/jumbo v3, "isServiceAvailable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move v2, v5

    :goto_22
    if-eqz v2, :cond_2c

    .line 3321
    const-string v2, "SecContentProvider2"

    const-string v3, "ENTERPRISELICENSEPOLICY : return null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    return-object v1

    .line 3313
    :cond_2c
    if-eqz p2, :cond_44

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_36

    goto :goto_44

    .line 3316
    :cond_36
    aget-object v1, p2, v5

    aget-object v2, p2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 3318
    .local v1, "result":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 3319
    .local v2, "cursor":Landroid/database/MatrixCursor;
    nop

    .line 3325
    return-object v2

    .line 3314
    .end local v1    # "result":Z
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    :cond_44
    :goto_44
    return-object v1

    .line 3327
    :cond_45
    return-object v1
.end method

.method private queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 3180
    nop

    .line 3181
    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 3182
    .local v0, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    if-eqz p1, :cond_5f

    .line 3183
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7cedec35

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2c

    const v4, 0x30468cc8

    if-eq v3, v4, :cond_21

    :cond_20
    goto :goto_36

    :cond_21
    const-string/jumbo v3, "isNFCStateChangeAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, v6

    goto :goto_36

    :cond_2c
    const-string/jumbo v3, "getCurrentLockScreenString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, v5

    :goto_36
    if-eqz v2, :cond_44

    if-eq v2, v6, :cond_3b

    .line 3201
    return-object v1

    .line 3194
    :cond_3b
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v1

    .line 3197
    .local v1, "result":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 3199
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    goto :goto_5e

    .line 3185
    .end local v1    # "result":Z
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :cond_44
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    .line 3188
    .local v1, "current":Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3189
    .restart local v2    # "mCursor":Landroid/database/MatrixCursor;
    new-array v3, v6, [Ljava/lang/String;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3192
    nop

    .line 3204
    .end local v1    # "current":Ljava/lang/String;
    :goto_5e
    return-object v2

    .line 3206
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :cond_5f
    return-object v1
.end method

.method private queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3002
    nop

    .line 3004
    const-string/jumbo v0, "multi_user_manager_service"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 3005
    .local v0, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    const/4 v1, 0x0

    if-eqz v0, :cond_d3

    .line 3006
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_d4

    :cond_19
    goto :goto_45

    :sswitch_1a
    const-string/jumbo v3, "multipleUsersSupported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v4

    goto :goto_45

    :sswitch_25
    const-string/jumbo v3, "multipleUsersAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v7

    goto :goto_45

    :sswitch_30
    const-string/jumbo v3, "isUserRemovalAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v5

    goto :goto_45

    :sswitch_3b
    const-string/jumbo v3, "isUserCreationAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v6

    :goto_45
    if-eqz v2, :cond_a2

    if-eq v2, v6, :cond_81

    if-eq v2, v5, :cond_60

    if-eq v2, v4, :cond_4e

    .line 3068
    return-object v1

    .line 3059
    :cond_4e
    :try_start_4e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_57} :catch_5e

    .line 3063
    .local v1, "result":Z
    nop

    .line 3064
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 3066
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d0

    .line 3061
    .end local v1    # "result":Z
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    :catch_5e
    move-exception v2

    .line 3062
    .local v2, "e":Landroid/os/RemoteException;
    return-object v1

    .line 3042
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_60
    const/4 v2, 0x0

    .line 3043
    .local v2, "arg":Z
    if-eqz p2, :cond_6f

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_6f

    .line 3044
    aget-object v3, p2, v7

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3048
    :cond_6f
    :try_start_6f
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_78} :catch_7f

    .line 3052
    .restart local v1    # "result":Z
    nop

    .line 3054
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3056
    .local v3, "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v3

    goto :goto_d0

    .line 3050
    .end local v1    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :catch_7f
    move-exception v3

    .line 3051
    .local v3, "e":Landroid/os/RemoteException;
    return-object v1

    .line 3027
    .end local v2    # "arg":Z
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_81
    const/4 v2, 0x0

    .line 3028
    .restart local v2    # "arg":Z
    if-eqz p2, :cond_90

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_90

    .line 3029
    aget-object v3, p2, v7

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3032
    :cond_90
    :try_start_90
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_a0

    .line 3036
    .restart local v1    # "result":Z
    nop

    .line 3038
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3040
    .local v3, "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v3

    goto :goto_d0

    .line 3034
    .end local v1    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :catch_a0
    move-exception v3

    .line 3035
    .local v3, "e":Ljava/lang/Exception;
    return-object v1

    .line 3008
    .end local v2    # "arg":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a2
    const/4 v2, 0x0

    .line 3009
    .restart local v2    # "arg":Z
    if-eqz p2, :cond_b1

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_b1

    .line 3010
    aget-object v3, p2, v7

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3014
    :cond_b1
    :try_start_b1
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v1
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_ba} :catch_d1

    .line 3018
    .local v1, "res":I
    nop

    .line 3020
    new-instance v3, Landroid/database/MatrixCursor;

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3021
    .local v3, "mCursor":Landroid/database/MatrixCursor;
    new-array v4, v6, [Ljava/lang/Integer;

    .line 3022
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 3021
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3025
    move-object v2, v3

    .line 3071
    .end local v1    # "res":I
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    :goto_d0
    return-object v2

    .line 3016
    .local v2, "arg":Z
    :catch_d1
    move-exception v3

    .line 3017
    .local v3, "e":Landroid/os/RemoteException;
    return-object v1

    .line 3073
    .end local v2    # "arg":Z
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_d3
    return-object v1

    :sswitch_data_d4
    .sparse-switch
        -0xa355b0c -> :sswitch_3b
        -0x7ddb46f -> :sswitch_30
        0x9914b0 -> :sswitch_25
        0x274445b6 -> :sswitch_1a
    .end sparse-switch
.end method

.method private queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 15
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3332
    const/4 v0, 0x0

    .line 3335
    .local v0, "cursor":Landroid/database/MatrixCursor;
    nop

    .line 3337
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 3338
    .local v1, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    const/4 v2, 0x0

    if-eqz v1, :cond_321

    .line 3339
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string/jumbo v7, "getDisclaimerText"

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_322

    :cond_1d
    goto/16 :goto_116

    :sswitch_1f
    const-string v4, "checkEnableUseOfPacketData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v5

    goto/16 :goto_116

    :sswitch_2a
    const-string/jumbo v4, "isOutgoingSmsAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x6

    goto/16 :goto_116

    :sswitch_36
    const-string v4, "canIncomingCall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xe

    goto/16 :goto_116

    :sswitch_42
    const-string/jumbo v4, "isLimitNumberOfSmsEnabled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x5

    goto/16 :goto_116

    :sswitch_4e
    const-string/jumbo v4, "isSimLockedByAdmin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x10

    goto/16 :goto_116

    :sswitch_5b
    const-string v4, "canOutgoingSms"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x7

    goto/16 :goto_116

    :sswitch_66
    const-string/jumbo v4, "isDataAllowedFromSimSlot2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x14

    goto/16 :goto_116

    :sswitch_73
    const-string/jumbo v4, "isDataAllowedFromSimSlot1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x13

    goto/16 :goto_116

    :sswitch_80
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x11

    goto/16 :goto_116

    :sswitch_8a
    const-string v4, "canOutgoingCall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xf

    goto/16 :goto_116

    :sswitch_96
    const-string v4, "canIncomingSms"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x4

    goto/16 :goto_116

    :sswitch_a1
    const-string/jumbo v4, "isCopyContactToSimAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v9

    goto/16 :goto_116

    :sswitch_ad
    const-string/jumbo v4, "isIncomingMmsAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x8

    goto :goto_116

    :sswitch_b9
    const-string/jumbo v4, "isBlockSmsWithStorageEnabled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v8

    goto :goto_116

    :sswitch_c4
    const-string/jumbo v4, "isRCSEnabled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x12

    goto :goto_116

    :sswitch_d0
    const-string/jumbo v4, "isCallerIDDisplayAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xc

    goto :goto_116

    :sswitch_dc
    const-string/jumbo v4, "getEmergencyCallOnly"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xb

    goto :goto_116

    :sswitch_e8
    const-string/jumbo v4, "isOutgoingMmsAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xa

    goto :goto_116

    :sswitch_f4
    const-string/jumbo v4, "isIncomingSmsAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0x9

    goto :goto_116

    :sswitch_100
    const-string/jumbo v4, "isWapPushAllowed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v3, 0xd

    goto :goto_116

    :sswitch_10c
    const-string/jumbo v4, "isBlockMmsWithStorageEnabled"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v3, v6

    :goto_116
    const-string v4, "SecurityException: "

    const-string v10, "SecContentProvider2"

    packed-switch v3, :pswitch_data_378

    .line 3510
    const-string/jumbo v3, "return null"

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    return-object v2

    .line 3498
    :pswitch_124
    const/4 v2, 0x1

    .line 3500
    .local v2, "result":Z
    :try_start_125
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_12c

    .line 3501
    const/4 v2, 0x0

    .line 3503
    :cond_12c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataAllowedFromSimSlot(1) result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Ljava/lang/SecurityException; {:try_start_125 .. :try_end_141} :catch_142

    .line 3506
    goto :goto_155

    .line 3504
    :catch_142
    move-exception v3

    .line 3505
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_155
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3508
    goto/16 :goto_320

    .line 3486
    .end local v2    # "result":Z
    :pswitch_15b
    const/4 v2, 0x1

    .line 3488
    .restart local v2    # "result":Z
    :try_start_15c
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v3

    if-nez v3, :cond_163

    .line 3489
    const/4 v2, 0x0

    .line 3491
    :cond_163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataAllowedFromSimSlot(0) result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catch Ljava/lang/SecurityException; {:try_start_15c .. :try_end_178} :catch_179

    .line 3494
    goto :goto_18c

    .line 3492
    :catch_179
    move-exception v3

    .line 3493
    .restart local v3    # "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_18c
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3496
    goto/16 :goto_320

    .line 3464
    .end local v2    # "result":Z
    :pswitch_192
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 3465
    .local v3, "argLength":I
    if-eqz p2, :cond_1c7

    if-ge v3, v6, :cond_19b

    goto :goto_1c7

    .line 3469
    :cond_19b
    aget-object v2, p2, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3470
    .local v2, "feature":I
    aget-object v4, p2, v8

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3471
    .local v4, "showMsg":Z
    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3474
    .local v5, "simSlotId":I
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v6, v2, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v6

    .line 3476
    .local v6, "result":Z
    if-eqz v6, :cond_1c1

    .line 3478
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v7, v2, v4, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v6

    .line 3482
    :cond_1c1
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3484
    goto/16 :goto_320

    .line 3466
    .end local v2    # "feature":I
    .end local v4    # "showMsg":Z
    .end local v5    # "simSlotId":I
    .end local v6    # "result":Z
    :cond_1c7
    :goto_1c7
    return-object v2

    .line 3447
    .end local v3    # "argLength":I
    :pswitch_1c8
    const/4 v2, 0x0

    .line 3448
    .local v2, "returnString":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3453
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v3

    .line 3456
    new-array v3, v8, [Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3460
    goto/16 :goto_320

    .line 3440
    .end local v2    # "returnString":Ljava/lang/String;
    :pswitch_1e5
    if-eqz p2, :cond_1fa

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1ee

    goto :goto_1fa

    .line 3443
    :cond_1ee
    aget-object v2, p2, v9

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v2

    .line 3444
    .local v2, "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3445
    goto/16 :goto_320

    .line 3441
    .end local v2    # "result":Z
    :cond_1fa
    :goto_1fa
    return-object v2

    .line 3433
    :pswitch_1fb
    if-eqz p2, :cond_210

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_204

    goto :goto_210

    .line 3436
    :cond_204
    aget-object v2, p2, v9

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v2

    .line 3437
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3438
    goto/16 :goto_320

    .line 3434
    .end local v2    # "result":Z
    :cond_210
    :goto_210
    return-object v2

    .line 3426
    :pswitch_211
    if-eqz p2, :cond_226

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_21a

    goto :goto_226

    .line 3429
    :cond_21a
    aget-object v2, p2, v9

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v2

    .line 3430
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3431
    goto/16 :goto_320

    .line 3427
    .end local v2    # "result":Z
    :cond_226
    :goto_226
    return-object v2

    .line 3421
    :pswitch_227
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3423
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3424
    goto/16 :goto_320

    .line 3416
    .end local v2    # "result":Z
    :pswitch_236
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3418
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3419
    goto/16 :goto_320

    .line 3411
    .end local v2    # "result":Z
    :pswitch_245
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 3413
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3414
    goto/16 :goto_320

    .line 3406
    .end local v2    # "result":Z
    :pswitch_254
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3408
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3409
    goto/16 :goto_320

    .line 3400
    .end local v2    # "result":Z
    :pswitch_263
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3403
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3404
    goto/16 :goto_320

    .line 3394
    .end local v2    # "result":Z
    :pswitch_272
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3397
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3398
    goto/16 :goto_320

    .line 3386
    .end local v2    # "result":Z
    :pswitch_281
    if-eqz p2, :cond_296

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_28a

    goto :goto_296

    .line 3390
    :cond_28a
    aget-object v2, p2, v9

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v2

    .line 3391
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3392
    goto/16 :goto_320

    .line 3387
    .end local v2    # "result":Z
    :cond_296
    :goto_296
    return-object v2

    .line 3381
    :pswitch_297
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3383
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3384
    goto/16 :goto_320

    .line 3375
    .end local v2    # "result":Z
    :pswitch_2a6
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3377
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3378
    goto :goto_320

    .line 3367
    .end local v2    # "result":Z
    :pswitch_2b4
    if-eqz p2, :cond_2c8

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_2bd

    goto :goto_2c8

    .line 3371
    :cond_2bd
    aget-object v2, p2, v9

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v2

    .line 3372
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3373
    goto :goto_320

    .line 3368
    .end local v2    # "result":Z
    :cond_2c8
    :goto_2c8
    return-object v2

    .line 3362
    :pswitch_2c9
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3364
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3365
    goto :goto_320

    .line 3353
    .end local v2    # "result":Z
    :pswitch_2d7
    const/4 v2, 0x0

    .line 3354
    .local v2, "arg":Z
    if-eqz p2, :cond_2e6

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2e6

    .line 3355
    aget-object v3, p2, v9

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3358
    :cond_2e6
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    .line 3359
    .local v3, "result":Z
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3360
    goto :goto_320

    .line 3348
    .end local v2    # "arg":Z
    .end local v3    # "result":Z
    :pswitch_2ef
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3350
    .local v2, "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3351
    goto :goto_320

    .line 3341
    .end local v2    # "result":Z
    :pswitch_2fd
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 3343
    .restart local v2    # "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCopyContactToSimAllowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 3346
    nop

    .line 3514
    .end local v2    # "result":Z
    :goto_320
    return-object v0

    .line 3516
    :cond_321
    return-object v2

    :sswitch_data_322
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_10c
        -0x75b6adce -> :sswitch_100
        -0x516c3a61 -> :sswitch_f4
        -0x4b848555 -> :sswitch_e8
        -0x45f6c0db -> :sswitch_dc
        -0x3f23242a -> :sswitch_d0
        -0x36ade6b7 -> :sswitch_c4
        -0x308af1de -> :sswitch_b9
        -0xb24e11b -> :sswitch_ad
        0x1134efad -> :sswitch_a1
        0x1410b963 -> :sswitch_96
        0x14e927da -> :sswitch_8a
        0x174ab65e -> :sswitch_80
        0x30fbd25a -> :sswitch_73
        0x30fbd25b -> :sswitch_66
        0x42bd705d -> :sswitch_5b
        0x617af081 -> :sswitch_4e
        0x6b27fd59 -> :sswitch_42
        0x6dfeff94 -> :sswitch_36
        0x6e342165 -> :sswitch_2a
        0x7be8d885 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_378
    .packed-switch 0x0
        :pswitch_2fd
        :pswitch_2ef
        :pswitch_2d7
        :pswitch_2c9
        :pswitch_2b4
        :pswitch_2a6
        :pswitch_297
        :pswitch_281
        :pswitch_272
        :pswitch_263
        :pswitch_254
        :pswitch_245
        :pswitch_236
        :pswitch_227
        :pswitch_211
        :pswitch_1fb
        :pswitch_1e5
        :pswitch_1c8
        :pswitch_192
        :pswitch_15b
        :pswitch_124
    .end packed-switch
.end method

.method private queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 12
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 3253
    nop

    .line 3254
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 3255
    .local v0, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    const/4 v1, 0x0

    if-eqz v0, :cond_bd

    .line 3256
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_be

    :cond_19
    goto :goto_44

    :sswitch_1a
    const-string/jumbo v3, "isUserChangeProfilesAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v5

    goto :goto_44

    :sswitch_25
    const-string/jumbo v3, "isUserSetAlwaysOnAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v4

    goto :goto_44

    :sswitch_30
    const-string/jumbo v3, "isUserAddProfilesAllowed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v6

    goto :goto_44

    :sswitch_3b
    const-string v3, "checkRacoonSecurity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v2, v7

    :goto_44
    if-eqz v2, :cond_a4

    if-eq v2, v6, :cond_87

    if-eq v2, v5, :cond_6a

    if-eq v2, v4, :cond_4d

    .line 3295
    return-object v1

    .line 3286
    :cond_4d
    const/4 v1, 0x0

    .line 3287
    .local v1, "arg":Z
    if-eqz p2, :cond_5c

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5c

    .line 3288
    aget-object v2, p2, v7

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3290
    :cond_5c
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 3292
    .local v2, "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3293
    .local v3, "mCursor":Landroid/database/MatrixCursor;
    goto :goto_bb

    .line 3277
    .end local v1    # "arg":Z
    .end local v2    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_6a
    const/4 v1, 0x0

    .line 3278
    .restart local v1    # "arg":Z
    if-eqz p2, :cond_79

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_79

    .line 3279
    aget-object v2, p2, v7

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3281
    :cond_79
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 3283
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3284
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    goto :goto_bb

    .line 3267
    .end local v1    # "arg":Z
    .end local v2    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_87
    const/4 v1, 0x0

    .line 3268
    .restart local v1    # "arg":Z
    if-eqz p2, :cond_96

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_96

    .line 3269
    aget-object v2, p2, v7

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3271
    :cond_96
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 3273
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3274
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    goto :goto_bb

    .line 3258
    .end local v1    # "arg":Z
    .end local v2    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_a4
    if-eqz p2, :cond_bc

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_ad

    goto :goto_bc

    .line 3261
    :cond_ad
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v2

    .line 3263
    .restart local v2    # "result":Z
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v3

    .line 3265
    .restart local v3    # "mCursor":Landroid/database/MatrixCursor;
    nop

    .line 3298
    :goto_bb
    return-object v3

    .line 3259
    .end local v2    # "result":Z
    .end local v3    # "mCursor":Landroid/database/MatrixCursor;
    :cond_bc
    :goto_bc
    return-object v1

    .line 3300
    :cond_bd
    return-object v1

    :sswitch_data_be
    .sparse-switch
        0x20839282 -> :sswitch_3b
        0x20e4e472 -> :sswitch_30
        0x528665ad -> :sswitch_25
        0x75693779 -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 3574
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3580
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 3530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3535
    .local v0, "callingUid":I
    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4c

    const/16 v2, 0x12

    if-eq v1, v2, :cond_40

    const/16 v2, 0xe

    const-string v4, "SecContentProvider2"

    if-eq v1, v2, :cond_2f

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1e

    goto :goto_77

    .line 3557
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3558
    const-string v1, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 3551
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3552
    const-string v1, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    goto :goto_77

    .line 3537
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3538
    goto :goto_77

    .line 3540
    :cond_4c
    nop

    .line 3541
    const-string v1, "eas_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 3542
    .local v1, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v1, :cond_77

    .line 3543
    const-string v2, "API"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3544
    .local v2, "api":Ljava/lang/String;
    if-eqz v2, :cond_77

    const-string/jumbo v4, "setAccountEmailPassword"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 3545
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v5, "password"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 3563
    .end local v1    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v2    # "api":Ljava/lang/String;
    :cond_77
    :goto_77
    return-object v3
.end method

.method public onCreate()Z
    .registers 2

    .line 173
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 37
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 180
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 181
    .local v5, "callingUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 184
    .local v6, "userId":I
    const/4 v7, 0x0

    .line 189
    .local v7, "knoxCustomService":Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    const/4 v8, 0x0

    .line 190
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    const/4 v9, 0x0

    .line 192
    .local v9, "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query(), uri = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v10, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " selection = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "SecContentProvider2"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "called from "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v16, 0xd

    const/16 v17, 0xb

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x4

    const/16 v22, -0x1

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v11, :cond_1c90

    if-eq v0, v15, :cond_1b80

    if-eq v0, v14, :cond_1b7b

    if-eq v0, v13, :cond_1b76

    const/4 v13, 0x6

    if-eq v0, v13, :cond_1a04

    const/4 v13, 0x7

    if-eq v0, v13, :cond_19ff

    const-string v13, "Failed talking with KnoxCustomManager service"

    packed-switch v0, :pswitch_data_238e

    move/from16 v23, v6

    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 1691
    :pswitch_81
    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2273
    :pswitch_86
    nop

    .line 2274
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 2275
    .local v0, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v0, :cond_557

    if-eqz v3, :cond_557

    .line 2276
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_23a8

    :cond_9b
    goto/16 :goto_19d

    :sswitch_9d
    const-string/jumbo v13, "isWifiScanningAllowed"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0x14

    goto/16 :goto_19f

    :sswitch_aa
    const-string/jumbo v13, "getAllowUserProfiles"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/4 v13, 0x7

    goto/16 :goto_19f

    :sswitch_b6
    const-string/jumbo v13, "getAllSsidBlacklist"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0x11

    goto/16 :goto_19f

    :sswitch_c3
    const-string/jumbo v13, "isWifiApSettingUserModificationAllowed"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0xe

    goto/16 :goto_19f

    :sswitch_d0
    const-string/jumbo v13, "getAutomaticConnectionToWifi"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v18

    goto/16 :goto_19f

    :sswitch_dd
    const-string/jumbo v13, "getMinimumRequiredSecurity"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/4 v13, 0x5

    goto/16 :goto_19f

    :sswitch_e9
    const-string/jumbo v13, "getPromptCredentialsEnabled"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0xc

    goto/16 :goto_19f

    :sswitch_f6
    const-string/jumbo v13, "getAllowUserPolicyChanges"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v21

    goto/16 :goto_19f

    :sswitch_103
    const-string/jumbo v13, "getNetworkSSIDList"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move v13, v15

    goto/16 :goto_19f

    :sswitch_10f
    const-string v13, "edmAddOrUpdate"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move v13, v12

    goto/16 :goto_19f

    :sswitch_11a
    const-string/jumbo v13, "isWifiSsidRestrictionActive"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0x13

    goto/16 :goto_19f

    :sswitch_127
    const-string/jumbo v13, "getBlockedNetworks"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move v13, v14

    goto/16 :goto_19f

    :sswitch_133
    const-string/jumbo v13, "isOpenWifiApAllowed"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0x10

    goto :goto_19f

    :sswitch_13f
    const-string/jumbo v13, "getPasswordHidden"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v17

    goto :goto_19f

    :sswitch_14b
    const-string/jumbo v13, "getAllSsidWhitelist"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0x12

    goto :goto_19f

    :sswitch_157
    const-string/jumbo v13, "isEnterpriseNetwork"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v16

    goto :goto_19f

    :sswitch_163
    const-string/jumbo v13, "showToastFromWifiModule"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v19

    goto :goto_19f

    :sswitch_16f
    const-string/jumbo v13, "getAllowUserProfilesForAllUsers"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move/from16 v13, v20

    goto :goto_19f

    :sswitch_17b
    const-string/jumbo v13, "getWifiSsidRestrictionList"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/4 v13, 0x6

    goto :goto_19f

    :sswitch_186
    const-string/jumbo v13, "removeNetworkConfiguration"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    move v13, v11

    goto :goto_19f

    :sswitch_191
    const-string/jumbo v13, "isWifiStateChangeAllowed"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9b

    const/16 v13, 0xf

    goto :goto_19f

    :goto_19d
    move/from16 v13, v22

    :goto_19f
    packed-switch v13, :pswitch_data_23fe

    .line 2533
    const/4 v2, 0x0

    return-object v2

    .line 2527
    :pswitch_1a4
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2530
    .local v10, "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2531
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2521
    .end local v10    # "result":Z
    :pswitch_1b5
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2524
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2525
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2500
    .end local v10    # "result":Z
    :pswitch_1c6
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v13

    .line 2503
    .local v13, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Landroid/database/MatrixCursor;

    new-array v15, v11, [Ljava/lang/String;

    aput-object v3, v15, v12

    invoke-direct {v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v14

    .line 2505
    if-eqz v13, :cond_212

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_212

    .line 2507
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1e5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_211

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2508
    .local v15, "value3":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v15, v12, v11

    invoke-virtual {v8, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2512
    .end local v15    # "value3":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_1e5

    :cond_211
    goto :goto_270

    .line 2515
    :cond_212
    const/4 v10, 0x0

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2519
    goto :goto_270

    .line 2479
    .end local v13    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_21b
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v11

    .line 2482
    .local v11, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v14, v13

    invoke-direct {v12, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    .line 2484
    if-eqz v11, :cond_267

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_267

    .line 2486
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_23c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_266

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2487
    .local v13, "value2":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v15, v14

    invoke-virtual {v8, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2491
    .end local v13    # "value2":Ljava/lang/String;
    goto :goto_23c

    :cond_266
    goto :goto_270

    .line 2494
    :cond_267
    const/4 v10, 0x0

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2498
    nop

    .line 2536
    .end local v11    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_270
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2473
    :pswitch_274
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2476
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2477
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2467
    .end local v10    # "result":Z
    :pswitch_285
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2470
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2471
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2461
    .end local v10    # "result":Z
    :pswitch_296
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2464
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2465
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2453
    .end local v10    # "result":Z
    :pswitch_2a7
    if-eqz v4, :cond_2bf

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-gtz v10, :cond_2b0

    goto :goto_2bf

    .line 2455
    :cond_2b0
    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v10

    .line 2458
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2459
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2454
    .end local v10    # "result":Z
    :cond_2bf
    :goto_2bf
    const/4 v10, 0x0

    return-object v10

    .line 2447
    :pswitch_2c1
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2450
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2451
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2440
    .end local v10    # "result":Z
    :pswitch_2d2
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2443
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2445
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2434
    .end local v10    # "result":Z
    :pswitch_2e3
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 2437
    .restart local v10    # "result":Z
    invoke-direct {v1, v3, v10}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2438
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2413
    .end local v10    # "result":Z
    :pswitch_2f4
    if-eqz v4, :cond_32c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_2fe

    goto :goto_32c

    .line 2415
    :cond_2fe
    const/4 v10, 0x0

    aget-object v12, v4, v10

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2417
    .local v10, "msgId":I
    if-eqz v10, :cond_30f

    if-eq v10, v11, :cond_30b

    .line 2425
    const/4 v11, 0x0

    return-object v11

    .line 2422
    :cond_30b
    const v11, 0x10403d9

    .line 2423
    .local v11, "resId":I
    goto :goto_313

    .line 2419
    .end local v11    # "resId":I
    :cond_30f
    const v11, 0x10403d8

    .line 2420
    .restart local v11    # "resId":I
    nop

    .line 2428
    :goto_313
    iget-object v12, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    .line 2429
    .local v12, "toast":Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 2431
    new-instance v14, Landroid/database/MatrixCursor;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    aput-object v3, v15, v13

    invoke-direct {v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v14

    .line 2432
    move/from16 v23, v6

    goto/16 :goto_554

    .line 2414
    .end local v10    # "msgId":I
    .end local v11    # "resId":I
    .end local v12    # "toast":Landroid/widget/Toast;
    :cond_32c
    :goto_32c
    const/4 v10, 0x0

    return-object v10

    .line 2391
    :pswitch_32e
    iget-object v10, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 2392
    .local v10, "userManager":Landroid/os/UserManager;
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    .line 2395
    .local v11, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "getAllowUserProfilesForAllUsers_Key"

    const-string/jumbo v14, "getAllowUserProfilesForAllUsers_Value"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    .line 2402
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_351
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_38d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 2403
    .local v13, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 2404
    .local v14, "key":I
    new-instance v15, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v15, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v15

    .line 2406
    .local v15, "value":Z
    move/from16 v23, v6

    const/4 v2, 0x2

    .end local v6    # "userId":I
    .local v23, "userId":I
    new-array v6, v2, [Ljava/lang/Object;

    .line 2407
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v6, v16

    .line 2408
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v6, v16

    .line 2406
    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2410
    .end local v13    # "i":Landroid/content/pm/UserInfo;
    move-object/from16 v2, p1

    move/from16 v6, v23

    const/4 v15, 0x2

    goto :goto_351

    .line 2411
    .end local v14    # "key":I
    .end local v15    # "value":Z
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :cond_38d
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    goto/16 :goto_554

    .line 2381
    .end local v10    # "userManager":Landroid/os/UserManager;
    .end local v11    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_391
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    if-eqz v4, :cond_3ba

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_39d

    goto :goto_3ba

    .line 2383
    :cond_39d
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2384
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x1

    aget-object v10, v4, v10

    .line 2385
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2383
    invoke-virtual {v0, v2, v6, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v2

    .line 2388
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2389
    goto/16 :goto_554

    .line 2382
    .end local v2    # "result":Z
    :cond_3ba
    :goto_3ba
    const/4 v2, 0x0

    return-object v2

    .line 2356
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_3bc
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    if-eqz v4, :cond_421

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_3c9

    const/4 v2, 0x0

    goto :goto_422

    .line 2359
    :cond_3c9
    const/4 v2, 0x0

    aget-object v11, v4, v2

    .line 2360
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2359
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getWifiSsidRestrictionList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v11

    .line 2363
    .local v11, "ssidRestrictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    new-array v13, v6, [Ljava/lang/String;

    aput-object v3, v13, v2

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    .line 2365
    if-eqz v11, :cond_417

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_417

    .line 2367
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_415

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2368
    .local v6, "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WIFIPOLICY_WIFISSIDRESTRICTIONLIST_METHOD = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2372
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_3eb

    :cond_415
    goto/16 :goto_554

    .line 2375
    :cond_417
    const/4 v2, 0x0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2379
    goto/16 :goto_554

    .line 2356
    .end local v11    # "ssidRestrictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_421
    const/4 v2, 0x0

    .line 2357
    :goto_422
    return-object v2

    .line 2347
    .end local v23    # "userId":I
    .local v6, "userId":I
    :pswitch_423
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    .line 2350
    .local v2, "minRequiredSecurity":I
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2351
    new-array v6, v10, [Ljava/lang/Integer;

    .line 2352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v12

    .line 2351
    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2354
    goto/16 :goto_554

    .line 2341
    .end local v2    # "minRequiredSecurity":I
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_447
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2344
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2345
    goto/16 :goto_554

    .line 2320
    .end local v2    # "result":Z
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_458
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 2323
    .local v2, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v6, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2325
    if-eqz v2, :cond_4a7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4a7

    .line 2327
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_47b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2328
    .local v11, "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WIFIPOLICY_BLOCKEDNETWORKS_METHOD = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2332
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_47b

    :cond_4a5
    goto/16 :goto_554

    .line 2335
    :cond_4a7
    const/4 v6, 0x0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2339
    goto/16 :goto_554

    .line 2299
    .end local v2    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_4b1
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 2302
    .local v2, "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v6, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2304
    if-eqz v2, :cond_4ff

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4ff

    .line 2306
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4fe

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2307
    .restart local v11    # "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WIFIPOLICY_NETWORKSSIDLIST_METHOD = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2311
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_4d4

    :cond_4fe
    goto :goto_554

    .line 2314
    :cond_4ff
    const/4 v6, 0x0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2318
    goto :goto_554

    .line 2291
    .end local v2    # "ssidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_508
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    if-eqz v4, :cond_525

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_514

    goto :goto_525

    .line 2293
    :cond_514
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2296
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2297
    goto :goto_554

    .line 2292
    .end local v2    # "result":Z
    :cond_525
    :goto_525
    const/4 v2, 0x0

    return-object v2

    .line 2278
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_527
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    if-eqz v4, :cond_555

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_533

    goto :goto_555

    .line 2280
    :cond_533
    const/4 v2, 0x0

    aget-object v6, v4, v2

    .line 2281
    .local v6, "configString":Ljava/lang/String;
    if-eqz v6, :cond_554

    .line 2282
    invoke-static {v6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    .line 2283
    .local v10, "configByteArray":[B
    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v10, v11}, Lcom/android/server/enterprise/utils/Utils;->unmarshall([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 2284
    .local v11, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v12, 0x1

    aget-object v13, v4, v12

    invoke-virtual {v0, v11, v13}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 2287
    new-instance v13, Landroid/database/MatrixCursor;

    new-array v12, v12, [Ljava/lang/String;

    aput-object v3, v12, v2

    invoke-direct {v13, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v13

    .line 2536
    .end local v6    # "configString":Ljava/lang/String;
    .end local v10    # "configByteArray":[B
    .end local v11    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_554
    :goto_554
    return-object v8

    .line 2279
    :cond_555
    :goto_555
    const/4 v2, 0x0

    return-object v2

    .line 2275
    .end local v23    # "userId":I
    .local v6, "userId":I
    :cond_557
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2902
    .end local v0    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_55c
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_561
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2979
    :pswitch_566
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2983
    :pswitch_56b
    invoke-direct {v1, v3, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 798
    :pswitch_570
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    .line 799
    if-eqz v7, :cond_d1c

    if-eqz v3, :cond_d1c

    .line 803
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_242c

    :cond_581
    goto/16 :goto_795

    :sswitch_583
    const-string/jumbo v0, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0xc

    goto/16 :goto_797

    :sswitch_590
    const-string/jumbo v0, "getVolumeButtonRotationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v19

    goto/16 :goto_797

    :sswitch_59d
    const-string/jumbo v0, "getSealedHideNotificationMessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x6

    goto/16 :goto_797

    :sswitch_5a9
    const-string/jumbo v0, "getSealedPowerDialogCustomItemsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x2

    goto/16 :goto_797

    :sswitch_5b5
    const-string/jumbo v0, "getSettingsEnabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1d

    goto/16 :goto_797

    :sswitch_5c2
    const-string/jumbo v0, "getLoadingLogoPath"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x26

    goto/16 :goto_797

    :sswitch_5cf
    const-string/jumbo v0, "getRecentLongPressMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v20

    goto/16 :goto_797

    :sswitch_5dc
    const-string/jumbo v0, "getWifiAutoSwitchThreshold"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0xe

    goto/16 :goto_797

    :sswitch_5e9
    const-string/jumbo v0, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v17

    goto/16 :goto_797

    :sswitch_5f6
    const-string/jumbo v0, "getToastGravityYOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x16

    goto/16 :goto_797

    :sswitch_603
    const-string/jumbo v0, "getToastShowPackageNameState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x12

    goto/16 :goto_797

    :sswitch_610
    const-string/jumbo v0, "getToastGravity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x14

    goto/16 :goto_797

    :sswitch_61d
    const-string/jumbo v0, "getSealedHardKeyIntentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1b

    goto/16 :goto_797

    :sswitch_62a
    const-string/jumbo v0, "getSealedNotificationMessagesState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x0

    goto/16 :goto_797

    :sswitch_636
    const-string/jumbo v0, "getUsbConnectionTypeInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1f

    goto/16 :goto_797

    :sswitch_643
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x25

    goto/16 :goto_797

    :sswitch_650
    const-string/jumbo v0, "getToastEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x11

    goto/16 :goto_797

    :sswitch_65d
    const-string/jumbo v0, "getAppBlockDownloadState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x17

    goto/16 :goto_797

    :sswitch_66a
    const-string/jumbo v0, "getToastGravityXOffset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x15

    goto/16 :goto_797

    :sswitch_677
    const-string/jumbo v0, "getAutoCallNumberDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x23

    goto/16 :goto_797

    :sswitch_684
    const-string/jumbo v0, "getUsbConnectionType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x20

    goto/16 :goto_797

    :sswitch_691
    const-string/jumbo v0, "getAppBlockDownloadNamespaces"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x18

    goto/16 :goto_797

    :sswitch_69e
    const-string/jumbo v0, "isDexAutoOpenLastApp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x28

    goto/16 :goto_797

    :sswitch_6ab
    const-string/jumbo v0, "getToastGravityEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x13

    goto/16 :goto_797

    :sswitch_6b8
    const-string/jumbo v0, "getAutoCallPickupState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x21

    goto/16 :goto_797

    :sswitch_6c5
    const-string/jumbo v0, "getAutoCallNumberAnswerMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x24

    goto/16 :goto_797

    :sswitch_6d2
    const-string/jumbo v0, "getSealedPowerDialogItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x1

    goto/16 :goto_797

    :sswitch_6de
    const-string/jumbo v0, "getExtendedCallInfoState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v21

    goto/16 :goto_797

    :sswitch_6eb
    const-string/jumbo v0, "getEthernetConfigurationType"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1a

    goto/16 :goto_797

    :sswitch_6f8
    const-string/jumbo v0, "getSealedVolumeKeyAppsList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1e

    goto/16 :goto_797

    :sswitch_705
    const-string/jumbo v0, "getSealedVolumeKeyAppState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x1c

    goto/16 :goto_797

    :sswitch_712
    const-string/jumbo v0, "getLockScreenHiddenItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x10

    goto/16 :goto_797

    :sswitch_71f
    const-string/jumbo v0, "getAirGestureOptionState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x27

    goto/16 :goto_797

    :sswitch_72c
    const-string/jumbo v0, "getSealedPowerDialogCustomItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move v11, v14

    goto :goto_797

    :sswitch_737
    const-string/jumbo v0, "getWifiAutoSwitchState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v16

    goto :goto_797

    :sswitch_743
    const-string/jumbo v0, "getSettingsHiddenState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x5

    goto :goto_797

    :sswitch_74e
    const-string/jumbo v0, "getWifiAutoSwitchDelay"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0xf

    goto :goto_797

    :sswitch_75a
    const-string/jumbo v0, "getRecentLongPressActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/4 v11, 0x7

    goto :goto_797

    :sswitch_765
    const-string/jumbo v0, "getEthernetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x19

    goto :goto_797

    :sswitch_771
    const-string/jumbo v0, "getAutoCallNumberList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x22

    goto :goto_797

    :sswitch_77d
    const-string/jumbo v0, "getDexHDMIAutoEnter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const/16 v11, 0x29

    goto :goto_797

    :sswitch_789
    const-string/jumbo v0, "getGearNotificationState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    move/from16 v11, v18

    goto :goto_797

    :goto_795
    move/from16 v11, v22

    :goto_797
    packed-switch v11, :pswitch_data_24d6

    .line 1679
    const/4 v0, 0x0

    return-object v0

    .line 1661
    :pswitch_79c
    const/4 v2, -0x1

    .line 1664
    .local v2, "returnState":I
    :try_start_79d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v0
    :try_end_7a1
    .catch Landroid/os/RemoteException; {:try_start_79d .. :try_end_7a1} :catch_7a3

    move v2, v0

    .line 1667
    goto :goto_7a9

    .line 1665
    :catch_7a3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1666
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7a9
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1672
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1673
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1672
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1676
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1641
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_7c1
    const/4 v2, -0x1

    .line 1644
    .restart local v2    # "returnState":I
    :try_start_7c2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v0
    :try_end_7c6
    .catch Landroid/os/RemoteException; {:try_start_7c2 .. :try_end_7c6} :catch_7c8

    move v2, v0

    .line 1647
    goto :goto_7ce

    .line 1645
    :catch_7c8
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1651
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7ce
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1652
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1653
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1652
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1656
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1623
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_7e6
    const/4 v11, 0x0

    const/4 v2, 0x1

    .line 1626
    .local v2, "returnState":Z
    :try_start_7e8
    invoke-interface {v7, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v0
    :try_end_7ec
    .catch Landroid/os/RemoteException; {:try_start_7e8 .. :try_end_7ec} :catch_7ee

    move v2, v0

    .line 1629
    goto :goto_7f4

    .line 1627
    :catch_7ee
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7f4
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1636
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1603
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_7fa
    const/4 v2, 0x0

    .line 1606
    .local v2, "returnString":Ljava/lang/String;
    :try_start_7fb
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v0
    :try_end_7ff
    .catch Landroid/os/RemoteException; {:try_start_7fb .. :try_end_7ff} :catch_801

    move-object v2, v0

    .line 1609
    goto :goto_807

    .line 1607
    :catch_801
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_807
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1614
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v11

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1618
    .end local v2    # "returnString":Ljava/lang/String;
    goto/16 :goto_d1b

    .line 1573
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_81b
    const/4 v2, 0x0

    .line 1576
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_81c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_820
    .catch Landroid/os/RemoteException; {:try_start_81c .. :try_end_820} :catch_822

    move-object v2, v0

    .line 1579
    goto :goto_828

    .line 1577
    :catch_822
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1581
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_828
    nop

    .line 1587
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1589
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_856

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_856

    .line 1591
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_840
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_856

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1592
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1595
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_840

    .line 1598
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_856
    goto/16 :goto_d1b

    .line 1544
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_858
    if-eqz v4, :cond_887

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_861

    goto :goto_887

    .line 1553
    :cond_861
    const/4 v2, -0x1

    .line 1556
    .local v2, "returnState":I
    const/4 v6, 0x0

    :try_start_863
    aget-object v0, v4, v6

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v0
    :try_end_869
    .catch Landroid/os/RemoteException; {:try_start_863 .. :try_end_869} :catch_86b

    move v2, v0

    .line 1559
    goto :goto_86f

    .line 1557
    :catch_86b
    move-exception v0

    .line 1558
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_86f
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1564
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1564
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1568
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1545
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_887
    :goto_887
    nop

    .line 1550
    const/4 v0, 0x0

    return-object v0

    .line 1516
    :pswitch_88a
    if-eqz v4, :cond_8b9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_893

    goto :goto_8b9

    .line 1525
    :cond_893
    const/4 v2, -0x1

    .line 1528
    .restart local v2    # "returnState":I
    const/4 v6, 0x0

    :try_start_895
    aget-object v0, v4, v6

    invoke-interface {v7, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v0
    :try_end_89b
    .catch Landroid/os/RemoteException; {:try_start_895 .. :try_end_89b} :catch_89d

    move v2, v0

    .line 1531
    goto :goto_8a1

    .line 1529
    :catch_89d
    move-exception v0

    .line 1530
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8a1
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1536
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1536
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1540
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1517
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_8b9
    :goto_8b9
    nop

    .line 1522
    const/4 v0, 0x0

    return-object v0

    .line 1487
    :pswitch_8bc
    const/4 v2, 0x0

    .line 1490
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_8bd
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v0
    :try_end_8c1
    .catch Landroid/os/RemoteException; {:try_start_8bd .. :try_end_8c1} :catch_8c3

    move-object v2, v0

    .line 1493
    goto :goto_8c9

    .line 1491
    :catch_8c3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8c9
    nop

    .line 1501
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1503
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_8f7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8f7

    .line 1505
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8e1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1506
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1509
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_8e1

    .line 1512
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8f7
    goto/16 :goto_d1b

    .line 1467
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_8f9
    const/4 v2, -0x1

    .line 1470
    .local v2, "returnState":I
    :try_start_8fa
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v0
    :try_end_8fe
    .catch Landroid/os/RemoteException; {:try_start_8fa .. :try_end_8fe} :catch_900

    move v2, v0

    .line 1473
    goto :goto_906

    .line 1471
    :catch_900
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1472
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_906
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1478
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1478
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1482
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1447
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_91e
    const/4 v2, 0x0

    .line 1450
    .restart local v2    # "returnState":I
    :try_start_91f
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v0
    :try_end_923
    .catch Landroid/os/RemoteException; {:try_start_91f .. :try_end_923} :catch_925

    move v2, v0

    .line 1453
    goto :goto_92b

    .line 1451
    :catch_925
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_92b
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1458
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1459
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1458
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1462
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1427
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_943
    const/4 v2, 0x0

    .line 1430
    .restart local v2    # "returnState":I
    :try_start_944
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v0
    :try_end_948
    .catch Landroid/os/RemoteException; {:try_start_944 .. :try_end_948} :catch_94a

    move v2, v0

    .line 1433
    goto :goto_950

    .line 1431
    :catch_94a
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_950
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1438
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1438
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1442
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1397
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_968
    const/4 v2, 0x0

    .line 1400
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_969
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v0
    :try_end_96d
    .catch Landroid/os/RemoteException; {:try_start_969 .. :try_end_96d} :catch_96f

    move-object v2, v0

    .line 1403
    goto :goto_975

    .line 1401
    :catch_96f
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_975
    nop

    .line 1411
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1413
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_9a3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9a3

    .line 1415
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_98d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1416
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1419
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_98d

    .line 1422
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9a3
    goto/16 :goto_d1b

    .line 1377
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_9a5
    const/4 v2, 0x0

    .line 1380
    .local v2, "returnState":I
    :try_start_9a6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v0
    :try_end_9aa
    .catch Landroid/os/RemoteException; {:try_start_9a6 .. :try_end_9aa} :catch_9ac

    move v2, v0

    .line 1383
    goto :goto_9b2

    .line 1381
    :catch_9ac
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9b2
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1388
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1388
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1392
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1359
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_9ca
    const/4 v2, 0x0

    .line 1362
    .local v2, "returnState":Z
    :try_start_9cb
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v0
    :try_end_9cf
    .catch Landroid/os/RemoteException; {:try_start_9cb .. :try_end_9cf} :catch_9d1

    move v2, v0

    .line 1365
    goto :goto_9d7

    .line 1363
    :catch_9d1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1369
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9d7
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1372
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1341
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_9dd
    const/4 v2, 0x0

    .line 1344
    .restart local v2    # "returnState":Z
    :try_start_9de
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v0
    :try_end_9e2
    .catch Landroid/os/RemoteException; {:try_start_9de .. :try_end_9e2} :catch_9e4

    move v2, v0

    .line 1347
    goto :goto_9ea

    .line 1345
    :catch_9e4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9ea
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1354
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1321
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_9f0
    const/4 v2, 0x0

    .line 1324
    .local v2, "returnState":I
    :try_start_9f1
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v0
    :try_end_9f5
    .catch Landroid/os/RemoteException; {:try_start_9f1 .. :try_end_9f5} :catch_9f7

    move v2, v0

    .line 1327
    goto :goto_9fd

    .line 1325
    :catch_9f7
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9fd
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1332
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1332
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1336
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1304
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_a15
    const/4 v2, 0x1

    .line 1307
    .local v2, "returnState":Z
    :try_start_a16
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v0
    :try_end_a1a
    .catch Landroid/os/RemoteException; {:try_start_a16 .. :try_end_a1a} :catch_a1c

    move v2, v0

    .line 1310
    goto :goto_a22

    .line 1308
    :catch_a1c
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a22
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1316
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1274
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_a28
    const/4 v2, 0x0

    .line 1277
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_a29
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v0
    :try_end_a2d
    .catch Landroid/os/RemoteException; {:try_start_a29 .. :try_end_a2d} :catch_a2f

    move-object v2, v0

    .line 1280
    goto :goto_a35

    .line 1278
    :catch_a2f
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a35
    nop

    .line 1288
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1290
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_a63

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a63

    .line 1292
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a63

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1293
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1296
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_a4d

    .line 1299
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a63
    goto/16 :goto_d1b

    .line 1256
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_a65
    const/4 v2, 0x0

    .line 1259
    .local v2, "returnState":Z
    :try_start_a66
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v0
    :try_end_a6a
    .catch Landroid/os/RemoteException; {:try_start_a66 .. :try_end_a6a} :catch_a6c

    move v2, v0

    .line 1262
    goto :goto_a72

    .line 1260
    :catch_a6c
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a72
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1269
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1236
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_a78
    const/4 v2, 0x0

    .line 1239
    .local v2, "returnState":I
    :try_start_a79
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v0
    :try_end_a7d
    .catch Landroid/os/RemoteException; {:try_start_a79 .. :try_end_a7d} :catch_a7f

    move v2, v0

    .line 1242
    goto :goto_a85

    .line 1240
    :catch_a7f
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a85
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1247
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1247
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1251
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1216
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_a9d
    const/4 v2, 0x0

    .line 1219
    .restart local v2    # "returnState":I
    :try_start_a9e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v0
    :try_end_aa2
    .catch Landroid/os/RemoteException; {:try_start_a9e .. :try_end_aa2} :catch_aa4

    move v2, v0

    .line 1222
    goto :goto_aaa

    .line 1220
    :catch_aa4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_aaa
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1227
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1227
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1231
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1196
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ac2
    const/4 v2, 0x0

    .line 1199
    .restart local v2    # "returnState":I
    :try_start_ac3
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v0
    :try_end_ac7
    .catch Landroid/os/RemoteException; {:try_start_ac3 .. :try_end_ac7} :catch_ac9

    move v2, v0

    .line 1202
    goto :goto_acf

    .line 1200
    :catch_ac9
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_acf
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1207
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1207
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1211
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1178
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ae7
    const/4 v2, 0x0

    .line 1181
    .local v2, "returnState":Z
    :try_start_ae8
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v0
    :try_end_aec
    .catch Landroid/os/RemoteException; {:try_start_ae8 .. :try_end_aec} :catch_aee

    move v2, v0

    .line 1184
    goto :goto_af4

    .line 1182
    :catch_aee
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_af4
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1191
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1160
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_afa
    const/4 v2, 0x0

    .line 1163
    .restart local v2    # "returnState":Z
    :try_start_afb
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v0
    :try_end_aff
    .catch Landroid/os/RemoteException; {:try_start_afb .. :try_end_aff} :catch_b01

    move v2, v0

    .line 1166
    goto :goto_b07

    .line 1164
    :catch_b01
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b07
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1173
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1142
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_b0d
    const/4 v2, 0x1

    .line 1145
    .restart local v2    # "returnState":Z
    :try_start_b0e
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v0
    :try_end_b12
    .catch Landroid/os/RemoteException; {:try_start_b0e .. :try_end_b12} :catch_b14

    move v2, v0

    .line 1148
    goto :goto_b1a

    .line 1146
    :catch_b14
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b1a
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1155
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1122
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_b20
    const/4 v2, 0x0

    .line 1125
    .local v2, "returnState":I
    :try_start_b21
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v0
    :try_end_b25
    .catch Landroid/os/RemoteException; {:try_start_b21 .. :try_end_b25} :catch_b27

    move v2, v0

    .line 1128
    goto :goto_b2d

    .line 1126
    :catch_b27
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b2d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1133
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1133
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1137
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1102
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_b45
    const/16 v2, 0x14

    .line 1105
    .restart local v2    # "returnState":I
    :try_start_b47
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I

    move-result v0
    :try_end_b4b
    .catch Landroid/os/RemoteException; {:try_start_b47 .. :try_end_b4b} :catch_b4d

    move v2, v0

    .line 1108
    goto :goto_b53

    .line 1106
    :catch_b4d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b53
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1113
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1113
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1117
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1082
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_b6b
    const/16 v2, -0xc8

    .line 1085
    .restart local v2    # "returnState":I
    :try_start_b6d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I

    move-result v0
    :try_end_b71
    .catch Landroid/os/RemoteException; {:try_start_b6d .. :try_end_b71} :catch_b73

    move v2, v0

    .line 1088
    goto :goto_b79

    .line 1086
    :catch_b73
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1087
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b79
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1093
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 1094
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 1093
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1097
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 1064
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_b91
    const/4 v2, 0x0

    .line 1067
    .local v2, "returnState":Z
    :try_start_b92
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z

    move-result v0
    :try_end_b96
    .catch Landroid/os/RemoteException; {:try_start_b92 .. :try_end_b96} :catch_b98

    move v2, v0

    .line 1070
    goto :goto_b9e

    .line 1068
    :catch_b98
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b9e
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1077
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1046
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ba4
    const/4 v2, 0x0

    .line 1049
    .restart local v2    # "returnState":Z
    :try_start_ba5
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v0
    :try_end_ba9
    .catch Landroid/os/RemoteException; {:try_start_ba5 .. :try_end_ba9} :catch_bab

    move v2, v0

    .line 1052
    goto :goto_bb1

    .line 1050
    :catch_bab
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bb1
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1059
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1028
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_bb7
    const/4 v2, 0x0

    .line 1031
    .restart local v2    # "returnState":Z
    :try_start_bb8
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0
    :try_end_bbc
    .catch Landroid/os/RemoteException; {:try_start_bb8 .. :try_end_bbc} :catch_bbe

    move v2, v0

    .line 1034
    goto :goto_bc4

    .line 1032
    :catch_bbe
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bc4
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1041
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 1010
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_bca
    const/4 v2, 0x1

    .line 1013
    .restart local v2    # "returnState":Z
    :try_start_bcb
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v0
    :try_end_bcf
    .catch Landroid/os/RemoteException; {:try_start_bcb .. :try_end_bcf} :catch_bd1

    move v2, v0

    .line 1016
    goto :goto_bd7

    .line 1014
    :catch_bd1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bd7
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1023
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 992
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_bdd
    const/4 v2, 0x0

    .line 995
    .restart local v2    # "returnState":Z
    :try_start_bde
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v0
    :try_end_be2
    .catch Landroid/os/RemoteException; {:try_start_bde .. :try_end_be2} :catch_be4

    move v2, v0

    .line 998
    goto :goto_bea

    .line 996
    :catch_be4
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bea
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 1005
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 972
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_bf0
    const/4 v2, -0x1

    .line 975
    .local v2, "returnState":I
    :try_start_bf1
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v0
    :try_end_bf5
    .catch Landroid/os/RemoteException; {:try_start_bf1 .. :try_end_bf5} :catch_bf7

    move v2, v0

    .line 978
    goto :goto_bfd

    .line 976
    :catch_bf7
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bfd
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 983
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 984
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 983
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 987
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 952
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_c15
    const/4 v2, 0x0

    .line 955
    .local v2, "returnString":Ljava/lang/String;
    :try_start_c16
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_c1a
    .catch Landroid/os/RemoteException; {:try_start_c16 .. :try_end_c1a} :catch_c1c

    move-object v2, v0

    .line 958
    goto :goto_c22

    .line 956
    :catch_c1c
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 957
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c22
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 963
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v11

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 967
    .end local v2    # "returnString":Ljava/lang/String;
    goto/16 :goto_d1b

    .line 932
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_c36
    const/4 v2, -0x1

    .line 935
    .local v2, "returnState":I
    :try_start_c37
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result v0
    :try_end_c3b
    .catch Landroid/os/RemoteException; {:try_start_c37 .. :try_end_c3b} :catch_c3d

    move v2, v0

    .line 938
    goto :goto_c43

    .line 936
    :catch_c3d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 937
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c43
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 943
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 944
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 943
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 947
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 912
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_c5b
    const/4 v2, 0x0

    .line 915
    .restart local v2    # "returnState":I
    :try_start_c5c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v0
    :try_end_c60
    .catch Landroid/os/RemoteException; {:try_start_c5c .. :try_end_c60} :catch_c62

    move v2, v0

    .line 918
    goto :goto_c68

    .line 916
    :catch_c62
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c68
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 923
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 924
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 923
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 927
    .end local v2    # "returnState":I
    goto/16 :goto_d1b

    .line 894
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_c80
    const/4 v2, 0x0

    .line 897
    .local v2, "returnState":Z
    :try_start_c81
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v0
    :try_end_c85
    .catch Landroid/os/RemoteException; {:try_start_c81 .. :try_end_c85} :catch_c87

    move v2, v0

    .line 900
    goto :goto_c8d

    .line 898
    :catch_c87
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c8d
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 907
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_d1b

    .line 864
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_c93
    const/4 v2, 0x0

    .line 867
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    :try_start_c94
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0
    :try_end_c98
    .catch Landroid/os/RemoteException; {:try_start_c94 .. :try_end_c98} :catch_c9a

    move-object v2, v0

    .line 870
    goto :goto_ca0

    .line 868
    :catch_c9a
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ca0
    nop

    .line 878
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 880
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_cd2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_cd2

    .line 882
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_cb8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cd2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/custom/PowerItem;

    .line 883
    .local v8, "value":Lcom/samsung/android/knox/custom/PowerItem;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    .line 884
    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    .line 883
    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 886
    .end local v8    # "value":Lcom/samsung/android/knox/custom/PowerItem;
    goto :goto_cb8

    .line 889
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/custom/PowerItem;>;"
    :cond_cd2
    goto :goto_d1b

    .line 846
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_cd3
    const/4 v2, 0x0

    .line 849
    .local v2, "returnState":Z
    :try_start_cd4
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v0
    :try_end_cd8
    .catch Landroid/os/RemoteException; {:try_start_cd4 .. :try_end_cd8} :catch_cda

    move v2, v0

    .line 852
    goto :goto_ce0

    .line 850
    :catch_cda
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ce0
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 859
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto :goto_d1b

    .line 826
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ce5
    const/4 v2, -0x1

    .line 829
    .local v2, "returnState":I
    :try_start_ce6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result v0
    :try_end_cea
    .catch Landroid/os/RemoteException; {:try_start_ce6 .. :try_end_cea} :catch_cec

    move v2, v0

    .line 832
    goto :goto_cf2

    .line 830
    :catch_cec
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cf2
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 837
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 838
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 837
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 841
    .end local v2    # "returnState":I
    goto :goto_d1b

    .line 808
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_d09
    const/4 v2, 0x1

    .line 811
    .local v2, "returnState":Z
    :try_start_d0a
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result v0
    :try_end_d0e
    .catch Landroid/os/RemoteException; {:try_start_d0a .. :try_end_d0e} :catch_d10

    move v2, v0

    .line 814
    goto :goto_d16

    .line 812
    :catch_d10
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d16
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 821
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    nop

    .line 1682
    :goto_d1b
    return-object v0

    .line 1684
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_d1c
    goto/16 :goto_1213

    .line 204
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :pswitch_d1e
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_1212

    if-eqz v3, :cond_1212

    .line 209
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_252e

    :cond_d2f
    goto/16 :goto_e80

    :sswitch_d31
    const-string/jumbo v0, "getSealedUsbNetAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v17

    goto/16 :goto_e82

    :sswitch_d3e
    const-string/jumbo v0, "getSealedStatusBarClockState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x7

    goto/16 :goto_e82

    :sswitch_d4a
    const-string/jumbo v0, "getPowerMenuLockedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x19

    goto/16 :goto_e82

    :sswitch_d57
    const-string/jumbo v0, "getVolumePanelEnabledState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x13

    goto/16 :goto_e82

    :sswitch_d64
    const-string/jumbo v0, "getStatusBarTextSize"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x17

    goto/16 :goto_e82

    :sswitch_d71
    const-string/jumbo v0, "getSealedStatusBarMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x6

    goto/16 :goto_e82

    :sswitch_d7d
    const-string/jumbo v0, "getLTESettingState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0xf

    goto/16 :goto_e82

    :sswitch_d8a
    const-string/jumbo v0, "getScreenWakeupOnPowerState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0xe

    goto/16 :goto_e82

    :sswitch_d97
    const-string/jumbo v0, "getSealedStatusBarIconsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v20

    goto/16 :goto_e82

    :sswitch_da4
    const-string/jumbo v0, "setSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x0

    goto/16 :goto_e82

    :sswitch_db0
    const-string/jumbo v0, "getVolumeControlStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x14

    goto/16 :goto_e82

    :sswitch_dbd
    const-string/jumbo v0, "getSealedUsbNetState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v18

    goto/16 :goto_e82

    :sswitch_dca
    const-string/jumbo v0, "getStatusBarText"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x15

    goto/16 :goto_e82

    :sswitch_dd7
    const-string/jumbo v0, "getSealedUsbMassStorageState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v19

    goto/16 :goto_e82

    :sswitch_de4
    const-string/jumbo v0, "getPowerSavingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0xc

    goto/16 :goto_e82

    :sswitch_df1
    const-string/jumbo v0, "getUltraPowerSavingPackages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x1a

    goto/16 :goto_e82

    :sswitch_dfe
    const-string/jumbo v0, "getTorchOnVolumeButtonsState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x18

    goto/16 :goto_e82

    :sswitch_e0b
    const-string/jumbo v0, "getInfraredState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x11

    goto/16 :goto_e82

    :sswitch_e18
    const-string/jumbo v0, "getStatusBarTextStyle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x16

    goto :goto_e82

    :sswitch_e24
    const-string/jumbo v0, "getSealedExitUI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v21

    goto :goto_e82

    :sswitch_e30
    const-string/jumbo v0, "getSealedHomeActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x5

    goto :goto_e82

    :sswitch_e3b
    const-string/jumbo v0, "getCallScreenDisabledItems"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x10

    goto :goto_e82

    :sswitch_e47
    const-string/jumbo v0, "getSensorDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/16 v11, 0x12

    goto :goto_e82

    :sswitch_e53
    const-string/jumbo v0, "getSealedState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x1

    goto :goto_e82

    :sswitch_e5e
    const-string/jumbo v0, "getSealedPowerDialogOptionMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    const/4 v11, 0x2

    goto :goto_e82

    :sswitch_e69
    const-string/jumbo v0, "getSealedModeString"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move v11, v14

    goto :goto_e82

    :sswitch_e74
    const-string/jumbo v0, "getChargingLEDState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2f

    move/from16 v11, v16

    goto :goto_e82

    :goto_e80
    move/from16 v11, v22

    :goto_e82
    packed-switch v11, :pswitch_data_259c

    .line 785
    const/4 v0, 0x0

    return-object v0

    .line 757
    :pswitch_e87
    const/4 v2, 0x0

    .line 760
    .local v2, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e88
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v0
    :try_end_e8c
    .catch Landroid/os/RemoteException; {:try_start_e88 .. :try_end_e8c} :catch_e8e

    move-object v2, v0

    .line 763
    goto :goto_e94

    .line 761
    :catch_e8e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e94
    nop

    .line 771
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v10, v6

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 773
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    if-eqz v2, :cond_ec2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ec2

    .line 775
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_eac
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ec2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 776
    .local v8, "value":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 779
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_eac

    .line 782
    .end local v2    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ec2
    goto/16 :goto_120e

    .line 740
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .local v8, "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ec4
    const/4 v2, 0x1

    .line 742
    .local v2, "returnState":Z
    :try_start_ec5
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v0
    :try_end_ec9
    .catch Landroid/os/RemoteException; {:try_start_ec5 .. :try_end_ec9} :catch_ecb

    move v2, v0

    .line 745
    goto :goto_ed1

    .line 743
    :catch_ecb
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ed1
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 752
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 728
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ed7
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "torchlight_enable"

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_ee9

    const/4 v11, 0x1

    goto :goto_eea

    :cond_ee9
    const/4 v11, 0x0

    :goto_eea
    move v0, v11

    .line 732
    .local v0, "returnState":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 735
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 708
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ef1
    const/4 v2, 0x0

    .line 711
    .local v2, "returnState":I
    :try_start_ef2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v0
    :try_end_ef6
    .catch Landroid/os/RemoteException; {:try_start_ef2 .. :try_end_ef6} :catch_ef8

    move v2, v0

    .line 714
    goto :goto_efe

    .line 712
    :catch_ef8
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_efe
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 719
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 720
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 719
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 723
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 688
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_f16
    const/4 v2, 0x0

    .line 691
    .restart local v2    # "returnState":I
    :try_start_f17
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v0
    :try_end_f1b
    .catch Landroid/os/RemoteException; {:try_start_f17 .. :try_end_f1b} :catch_f1d

    move v2, v0

    .line 694
    goto :goto_f23

    .line 692
    :catch_f1d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 693
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f23
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 699
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 699
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 703
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 668
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_f3b
    const/4 v2, 0x0

    .line 671
    .local v2, "returnString":Ljava/lang/String;
    :try_start_f3c
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v0
    :try_end_f40
    .catch Landroid/os/RemoteException; {:try_start_f3c .. :try_end_f40} :catch_f42

    move-object v2, v0

    .line 674
    goto :goto_f48

    .line 672
    :catch_f42
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f48
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 679
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v11

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 683
    .end local v2    # "returnString":Ljava/lang/String;
    goto/16 :goto_120e

    .line 648
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_f5c
    const/4 v2, 0x0

    .line 651
    .local v2, "returnState":I
    :try_start_f5d
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v0
    :try_end_f61
    .catch Landroid/os/RemoteException; {:try_start_f5d .. :try_end_f61} :catch_f63

    move v2, v0

    .line 654
    goto :goto_f69

    .line 652
    :catch_f63
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f69
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 659
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 660
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 659
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 663
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 631
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_f81
    const/4 v2, 0x1

    .line 633
    .local v2, "returnState":Z
    :try_start_f82
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v0
    :try_end_f86
    .catch Landroid/os/RemoteException; {:try_start_f82 .. :try_end_f86} :catch_f88

    move v2, v0

    .line 636
    goto :goto_f8e

    .line 634
    :catch_f88
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f8e
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 643
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 611
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_f94
    const/4 v2, 0x0

    .line 614
    .local v2, "returnState":I
    :try_start_f95
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v0
    :try_end_f99
    .catch Landroid/os/RemoteException; {:try_start_f95 .. :try_end_f99} :catch_f9b

    move v2, v0

    .line 617
    goto :goto_fa1

    .line 615
    :catch_f9b
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_fa1
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 622
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 623
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 622
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 626
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 595
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_fb9
    const/4 v2, 0x1

    .line 597
    .local v2, "returnState":Z
    :try_start_fba
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v0
    :try_end_fbe
    .catch Landroid/os/RemoteException; {:try_start_fba .. :try_end_fbe} :catch_fc0

    move v2, v0

    .line 600
    goto :goto_fc6

    .line 598
    :catch_fc0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_fc6
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 606
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 574
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_fcc
    const/4 v2, 0x0

    .line 577
    .local v2, "returnState":I
    :try_start_fcd
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v0
    :try_end_fd1
    .catch Landroid/os/RemoteException; {:try_start_fcd .. :try_end_fd1} :catch_fd3

    move v2, v0

    .line 580
    goto :goto_fd9

    .line 578
    :catch_fd3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_fd9
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 585
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 586
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 585
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 589
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 558
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_ff1
    const/4 v2, 0x0

    .line 560
    .local v2, "returnState":Z
    :try_start_ff2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v0
    :try_end_ff6
    .catch Landroid/os/RemoteException; {:try_start_ff2 .. :try_end_ff6} :catch_ff8

    move v2, v0

    .line 563
    goto :goto_ffe

    .line 561
    :catch_ff8
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ffe
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 569
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 541
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1004
    const/4 v2, 0x1

    .line 543
    .restart local v2    # "returnState":Z
    :try_start_1005
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v0
    :try_end_1009
    .catch Landroid/os/RemoteException; {:try_start_1005 .. :try_end_1009} :catch_100b

    move v2, v0

    .line 546
    goto :goto_1011

    .line 544
    :catch_100b
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1011
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 553
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 529
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1017
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "led_indicator_charing"

    const/4 v6, 0x1

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1029

    const/4 v11, 0x1

    goto :goto_102a

    :cond_1029
    const/4 v11, 0x0

    :goto_102a
    move v0, v11

    .line 533
    .local v0, "returnState":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 536
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 494
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1031
    const/4 v0, 0x0

    .line 496
    .local v0, "returnState":I
    iget-object v2, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "ultra_powersaving_mode"

    const/4 v10, 0x0

    invoke-static {v2, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 497
    .local v2, "ultraSetting":I
    if-eqz v2, :cond_1044

    .line 498
    const/4 v0, 0x2

    goto :goto_1058

    .line 500
    :cond_1044
    const/4 v6, 0x0

    .line 504
    .local v6, "globalSetting":I
    iget-object v10, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "psm_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 507
    if-nez v6, :cond_1057

    .line 508
    const/4 v0, 0x0

    goto :goto_1058

    .line 510
    :cond_1057
    const/4 v0, 0x1

    .line 516
    .end local v6    # "globalSetting":I
    :goto_1058
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 517
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v6, "mCursor":Landroid/database/MatrixCursor;
    new-array v8, v10, [Ljava/lang/Integer;

    .line 518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v12

    .line 517
    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 522
    .end local v0    # "returnState":I
    .end local v2    # "ultraSetting":I
    move-object v0, v6

    goto/16 :goto_120e

    .line 462
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1071
    if-eqz v4, :cond_10a2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_107a

    goto :goto_10a2

    .line 471
    :cond_107a
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "paramAddressType":I
    const/4 v6, 0x0

    .line 477
    .local v6, "returnString":Ljava/lang/String;
    :try_start_1082
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1086
    .catch Landroid/os/RemoteException; {:try_start_1082 .. :try_end_1086} :catch_1088

    move-object v6, v0

    .line 480
    goto :goto_108e

    .line 478
    :catch_1088
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_108e
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v0, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 485
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v6, v8, v12

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 489
    .end local v2    # "paramAddressType":I
    .end local v6    # "returnString":Ljava/lang/String;
    goto/16 :goto_120e

    .line 463
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_10a2
    :goto_10a2
    nop

    .line 468
    const/4 v0, 0x0

    return-object v0

    .line 446
    :pswitch_10a5
    const/4 v2, 0x0

    .line 448
    .local v2, "returnState":Z
    :try_start_10a6
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v0
    :try_end_10aa
    .catch Landroid/os/RemoteException; {:try_start_10a6 .. :try_end_10aa} :catch_10ac

    move v2, v0

    .line 451
    goto :goto_10b2

    .line 449
    :catch_10ac
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10b2
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 457
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 428
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_10b8
    const/4 v2, 0x1

    .line 431
    .restart local v2    # "returnState":Z
    :try_start_10b9
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v0
    :try_end_10bd
    .catch Landroid/os/RemoteException; {:try_start_10b9 .. :try_end_10bd} :catch_10bf

    move v2, v0

    .line 434
    goto :goto_10c5

    .line 432
    :catch_10bf
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10c5
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 441
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 411
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_10cb
    const/4 v2, 0x1

    .line 413
    .restart local v2    # "returnState":Z
    :try_start_10cc
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v0
    :try_end_10d0
    .catch Landroid/os/RemoteException; {:try_start_10cc .. :try_end_10d0} :catch_10d2

    move v2, v0

    .line 416
    goto :goto_10d8

    .line 414
    :catch_10d2
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10d8
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 423
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 393
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_10de
    const/4 v2, 0x1

    .line 396
    .restart local v2    # "returnState":Z
    :try_start_10df
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v0
    :try_end_10e3
    .catch Landroid/os/RemoteException; {:try_start_10df .. :try_end_10e3} :catch_10e5

    move v2, v0

    .line 399
    goto :goto_10eb

    .line 397
    :catch_10e5
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10eb
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 406
    .end local v2    # "returnState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_120e

    .line 373
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_10f1
    const/4 v2, 0x2

    .line 376
    .local v2, "returnState":I
    :try_start_10f2
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v0
    :try_end_10f6
    .catch Landroid/os/RemoteException; {:try_start_10f2 .. :try_end_10f6} :catch_10f8

    move v2, v0

    .line 379
    goto :goto_10fe

    .line 377
    :catch_10f8
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10fe
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 384
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 384
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 388
    .end local v2    # "returnState":I
    goto/16 :goto_120e

    .line 353
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1116
    const/4 v2, 0x0

    .line 356
    .local v2, "returnString":Ljava/lang/String;
    :try_start_1117
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_111b
    .catch Landroid/os/RemoteException; {:try_start_1117 .. :try_end_111b} :catch_111d

    move-object v2, v0

    .line 359
    goto :goto_1123

    .line 357
    :catch_111d
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1123
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 364
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v11

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 368
    .end local v2    # "returnString":Ljava/lang/String;
    goto/16 :goto_120e

    .line 320
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_1137
    if-eqz v4, :cond_1168

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1140

    goto :goto_1168

    .line 330
    :cond_1140
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 331
    .local v2, "paramStringType":I
    const/4 v6, 0x0

    .line 336
    .restart local v6    # "returnString":Ljava/lang/String;
    :try_start_1148
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v0
    :try_end_114c
    .catch Landroid/os/RemoteException; {:try_start_1148 .. :try_end_114c} :catch_114e

    move-object v6, v0

    .line 339
    goto :goto_1154

    .line 337
    :catch_114e
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1154
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v0, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 344
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v6, v8, v12

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 348
    .end local v2    # "paramStringType":I
    .end local v6    # "returnString":Ljava/lang/String;
    goto/16 :goto_120e

    .line 321
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1168
    :goto_1168
    nop

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 288
    :pswitch_116b
    if-eqz v4, :cond_119c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1174

    goto :goto_119c

    .line 297
    :cond_1174
    const/4 v2, 0x0

    aget-object v0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 298
    .restart local v2    # "paramStringType":I
    const/4 v6, 0x0

    .line 303
    .restart local v6    # "returnString":Ljava/lang/String;
    :try_start_117c
    invoke-interface {v7, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1180
    .catch Landroid/os/RemoteException; {:try_start_117c .. :try_end_1180} :catch_1182

    move-object v6, v0

    .line 306
    goto :goto_1188

    .line 304
    :catch_1182
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1188
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v0, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 311
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v6, v8, v12

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 315
    .end local v2    # "paramStringType":I
    .end local v6    # "returnString":Ljava/lang/String;
    goto/16 :goto_120e

    .line 289
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_119c
    :goto_119c
    nop

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 268
    :pswitch_119f
    const/4 v2, 0x2

    .line 271
    .local v2, "returnState":I
    :try_start_11a0
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result v0
    :try_end_11a4
    .catch Landroid/os/RemoteException; {:try_start_11a0 .. :try_end_11a4} :catch_11a6

    move v2, v0

    .line 274
    goto :goto_11ac

    .line 272
    :catch_11a6
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11ac
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 279
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/Integer;

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v11

    .line 279
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 283
    .end local v2    # "returnState":I
    goto :goto_120e

    .line 250
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_11c3
    const/4 v2, 0x0

    .line 253
    .local v2, "proKioskState":Z
    :try_start_11c4
    invoke-interface {v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v0
    :try_end_11c8
    .catch Landroid/os/RemoteException; {:try_start_11c4 .. :try_end_11c8} :catch_11ca

    move v2, v0

    .line 256
    goto :goto_11d2

    .line 254
    :catch_11ca
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "Failed talking with knoxCustomManager service"

    invoke-static {v10, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11d2
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 263
    .end local v2    # "proKioskState":Z
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    goto :goto_120e

    .line 214
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :pswitch_11d7
    if-eqz v4, :cond_120f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_11e1

    goto :goto_120f

    .line 224
    :cond_11e1
    const/4 v6, 0x0

    aget-object v0, v4, v6

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 226
    .local v6, "paramState":Z
    aget-object v11, v4, v2

    .line 230
    .local v11, "paramPasscode":Ljava/lang/String;
    const/4 v2, -0x1

    .line 233
    .local v2, "returnState":I
    :try_start_11eb
    invoke-interface {v7, v6, v11}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v0
    :try_end_11ef
    .catch Landroid/os/RemoteException; {:try_start_11eb .. :try_end_11ef} :catch_11f1

    move v2, v0

    .line 236
    goto :goto_11f7

    .line 234
    :catch_11f1
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v10, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11f7
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v0, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 241
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v0, "mCursor":Landroid/database/MatrixCursor;
    new-array v8, v10, [Ljava/lang/Integer;

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v13

    .line 241
    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 245
    .end local v2    # "returnState":I
    .end local v6    # "paramState":Z
    .end local v11    # "paramPasscode":Ljava/lang/String;
    nop

    .line 788
    :goto_120e
    return-object v0

    .line 215
    .end local v0    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_120f
    :goto_120f
    nop

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 792
    :cond_1212
    nop

    .line 2994
    :goto_1213
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2540
    .end local v23    # "userId":I
    .local v6, "userId":I
    :pswitch_1216
    move/from16 v23, v6

    .line 2541
    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2542
    .local v0, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v0, :cond_14f5

    .line 2543
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_25d6

    :cond_122a
    goto/16 :goto_12de

    :sswitch_122c
    const-string/jumbo v2, "isNightClockAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v19

    goto/16 :goto_12e0

    :sswitch_1239
    const-string/jumbo v2, "isInformationStreamAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/16 v14, 0xc

    goto/16 :goto_12e0

    :sswitch_1246
    const-string/jumbo v2, "isAirCommandModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    goto/16 :goto_12e0

    :sswitch_1251
    const-string/jumbo v2, "isAppsEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v16

    goto/16 :goto_12e0

    :sswitch_125e
    const-string/jumbo v2, "isNavigationBarHidden"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x0

    goto/16 :goto_12e0

    :sswitch_126a
    const-string/jumbo v2, "getKioskHomePackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v20

    goto/16 :goto_12e0

    :sswitch_1277
    const-string/jumbo v2, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x2

    goto :goto_12e0

    :sswitch_1282
    const-string/jumbo v2, "isAirViewModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v21

    goto :goto_12e0

    :sswitch_128e
    const-string/jumbo v2, "getBlockedHwKeysCache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x5

    goto :goto_12e0

    :sswitch_1299
    const-string/jumbo v2, "isMultiWindowModeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x1

    goto :goto_12e0

    :sswitch_12a4
    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x7

    goto :goto_12e0

    :sswitch_12af
    const-string/jumbo v2, "isPeopleEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v18

    goto :goto_12e0

    :sswitch_12bb
    const-string/jumbo v2, "isEdgeAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/16 v14, 0xe

    goto :goto_12e0

    :sswitch_12c7
    const-string/jumbo v2, "isEdgeLightingAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    move/from16 v14, v17

    goto :goto_12e0

    :sswitch_12d3
    const-string/jumbo v2, "isTaskManagerAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_122a

    const/4 v14, 0x6

    goto :goto_12e0

    :goto_12de
    move/from16 v14, v22

    :goto_12e0
    packed-switch v14, :pswitch_data_2614

    goto/16 :goto_14f4

    .line 2706
    :pswitch_12e5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2709
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    goto/16 :goto_14f4

    .line 2697
    .end local v2    # "result":Z
    :pswitch_12f0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2700
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2702
    goto/16 :goto_14f4

    .line 2689
    .end local v2    # "result":Z
    :pswitch_12fb
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2692
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2693
    goto/16 :goto_14f4

    .line 2680
    .end local v2    # "result":Z
    :pswitch_1306
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2683
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2685
    goto/16 :goto_14f4

    .line 2671
    .end local v2    # "result":Z
    :pswitch_1311
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2674
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2676
    goto/16 :goto_14f4

    .line 2662
    .end local v2    # "result":Z
    :pswitch_131c
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2665
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2667
    goto/16 :goto_14f4

    .line 2651
    .end local v2    # "result":Z
    :pswitch_1327
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2655
    .local v2, "homePkg":Ljava/lang/String;
    new-instance v6, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getKioskHomePackage"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2657
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2658
    goto/16 :goto_14f4

    .line 2628
    .end local v2    # "homePkg":Ljava/lang/String;
    :pswitch_1348
    if-nez v4, :cond_1354

    .line 2629
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_139a

    .line 2633
    .end local v2    # "result":Z
    :cond_1354
    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 2636
    .local v2, "param0":Ljava/lang/String;
    array-length v6, v4

    const/4 v11, 0x2

    if-lt v6, v11, :cond_1377

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const-string v11, "emergency"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1377

    .line 2637
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    .line 2638
    .local v6, "result":Z
    const-string/jumbo v11, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_139a

    .line 2640
    .end local v6    # "result":Z
    :cond_1377
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v6, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v6

    .line 2641
    .restart local v6    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isKioskModeEnabled param UID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2644
    .end local v6    # "result":Z
    .local v2, "result":Z
    :goto_139a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isKioskModeEnabled return = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2648
    goto/16 :goto_14f4

    .line 2616
    .end local v2    # "result":Z
    :pswitch_13b5
    if-eqz v4, :cond_13d4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_13be

    goto :goto_13d4

    .line 2619
    :cond_13be
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2620
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2619
    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 2623
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2625
    goto/16 :goto_14f4

    .line 2617
    .end local v2    # "result":Z
    :cond_13d4
    :goto_13d4
    const/4 v2, 0x0

    return-object v2

    .line 2607
    :pswitch_13d6
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    .line 2610
    .local v2, "resultMap":Ljava/lang/Object;
    new-instance v6, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getBlockedHwKeysCache"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2612
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2613
    goto/16 :goto_14f4

    .line 2592
    .end local v2    # "resultMap":Ljava/lang/Object;
    :pswitch_13f2
    if-nez v4, :cond_13fe

    .line 2593
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_1429

    .line 2597
    .end local v2    # "result":Z
    :cond_13fe
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v6, 0x0

    aget-object v11, v4, v6

    .line 2598
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2597
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2599
    .restart local v2    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirViewModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :goto_1429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2604
    goto/16 :goto_14f4

    .line 2576
    .end local v2    # "result":Z
    :pswitch_1444
    if-nez v4, :cond_1450

    .line 2577
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_147b

    .line 2581
    .end local v2    # "result":Z
    :cond_1450
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    const/4 v6, 0x0

    aget-object v11, v4, v6

    .line 2582
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v2, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2581
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2583
    .restart local v2    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isAirCommandModeAllowed uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :goto_147b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2589
    goto :goto_14f4

    .line 2566
    .end local v2    # "result":Z
    :pswitch_1495
    if-eqz v4, :cond_14c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_149f

    goto :goto_14c4

    .line 2569
    :cond_149f
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v2

    .line 2570
    .restart local v2    # "result":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2573
    goto :goto_14f4

    .line 2567
    .end local v2    # "result":Z
    :cond_14c4
    :goto_14c4
    const/4 v2, 0x0

    return-object v2

    .line 2554
    :pswitch_14c6
    if-eqz v4, :cond_14e4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_14cf

    goto :goto_14e4

    .line 2557
    :cond_14cf
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2558
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2557
    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    .line 2561
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2563
    goto :goto_14f4

    .line 2555
    .end local v2    # "result":Z
    :cond_14e4
    :goto_14e4
    const/4 v2, 0x0

    return-object v2

    .line 2545
    :pswitch_14e6
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2549
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2551
    nop

    .line 2713
    .end local v2    # "result":Z
    :goto_14f4
    return-object v8

    .line 2542
    :cond_14f5
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2107
    .end local v0    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .end local v23    # "userId":I
    .local v6, "userId":I
    :pswitch_14f8
    move/from16 v23, v6

    .line 2108
    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2109
    .local v0, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v0, :cond_181d

    if-eqz v3, :cond_181d

    .line 2110
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2636

    :cond_150d
    goto/16 :goto_15b6

    :sswitch_150f
    const-string/jumbo v2, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x7

    goto/16 :goto_15b8

    :sswitch_151b
    const-string/jumbo v2, "getMaxCalendarAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x5

    goto/16 :goto_15b8

    :sswitch_1527
    const-string/jumbo v2, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x6

    goto/16 :goto_15b8

    :sswitch_1533
    const-string/jumbo v2, "getForceSMIMECertificateForSigning"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v20

    goto/16 :goto_15b8

    :sswitch_1540
    const-string/jumbo v2, "isIncomingAttachmentsAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move v15, v14

    goto/16 :goto_15b8

    :sswitch_154c
    const-string/jumbo v2, "getForceSMIMECertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x2

    goto :goto_15b8

    :sswitch_1557
    const-string/jumbo v2, "getAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v18

    goto :goto_15b8

    :sswitch_1563
    const-string/jumbo v2, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x1

    goto :goto_15b8

    :sswitch_156e
    const-string/jumbo v2, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v19

    goto :goto_15b8

    :sswitch_157a
    const-string/jumbo v2, "getAccountCertificatePassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v17

    goto :goto_15b8

    :sswitch_1586
    const-string/jumbo v2, "getRequiredSignedMIMEMessages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/4 v15, 0x0

    goto :goto_15b8

    :sswitch_1591
    const-string/jumbo v2, "getMaxEmailAgeFilter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    const/16 v15, 0xc

    goto :goto_15b8

    :sswitch_159d
    const-string/jumbo v2, "setAccountEmailPassword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v16

    goto :goto_15b8

    :sswitch_15a9
    const-string/jumbo v2, "getIncomingAttachmentSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150d

    move/from16 v15, v21

    goto/16 :goto_15b8

    :goto_15b6
    move/from16 v15, v22

    :goto_15b8
    packed-switch v15, :pswitch_data_2670

    .line 2265
    const/4 v2, 0x0

    const-string/jumbo v6, "return null"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    return-object v2

    .line 2253
    :pswitch_15c3
    if-eqz v4, :cond_15ef

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_15cd

    goto :goto_15ef

    .line 2255
    :cond_15cd
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v0, v2, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v11

    .line 2259
    .local v11, "long_res":J
    new-instance v2, Landroid/database/MatrixCursor;

    new-array v13, v6, [Ljava/lang/String;

    aput-object v3, v13, v10

    invoke-direct {v2, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2260
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    new-array v6, v6, [Ljava/lang/String;

    .line 2261
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v10

    .line 2260
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2263
    goto/16 :goto_181a

    .line 2254
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    .end local v11    # "long_res":J
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_15ef
    :goto_15ef
    const/4 v2, 0x0

    return-object v2

    .line 2241
    :pswitch_15f1
    if-eqz v4, :cond_1623

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_15fa

    goto :goto_1623

    .line 2243
    :cond_15fa
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2244
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2243
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    .line 2247
    .local v2, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2248
    new-array v10, v11, [Ljava/lang/Integer;

    .line 2249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 2248
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2251
    move-object v2, v8

    goto/16 :goto_181a

    .line 2242
    .end local v2    # "res":I
    :cond_1623
    :goto_1623
    const/4 v2, 0x0

    return-object v2

    .line 2229
    :pswitch_1625
    if-eqz v4, :cond_1653

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_162e

    goto :goto_1653

    .line 2231
    :cond_162e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2232
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2231
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    .line 2235
    .local v2, "certPasswd":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2236
    new-array v10, v11, [Ljava/lang/String;

    aput-object v2, v10, v6

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2239
    move-object v2, v8

    goto/16 :goto_181a

    .line 2230
    .end local v2    # "certPasswd":Ljava/lang/String;
    :cond_1653
    :goto_1653
    const/4 v2, 0x0

    return-object v2

    .line 2217
    :pswitch_1655
    if-eqz v4, :cond_1683

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_165e

    goto :goto_1683

    .line 2219
    :cond_165e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2220
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2219
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v2

    .line 2223
    .local v2, "passwd":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2224
    new-array v10, v11, [Ljava/lang/String;

    aput-object v2, v10, v6

    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2227
    move-object v2, v8

    goto/16 :goto_181a

    .line 2218
    .end local v2    # "passwd":Ljava/lang/String;
    :cond_1683
    :goto_1683
    const/4 v2, 0x0

    return-object v2

    .line 2207
    :pswitch_1685
    if-eqz v4, :cond_16a5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_168e

    goto :goto_16a5

    .line 2209
    :cond_168e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2210
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2209
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2213
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2215
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v6, "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    goto/16 :goto_181a

    .line 2208
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_16a5
    :goto_16a5
    const/4 v2, 0x0

    return-object v2

    .line 2197
    :pswitch_16a7
    if-eqz v4, :cond_16c7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_16b0

    goto :goto_16c7

    .line 2199
    :cond_16b0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2200
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2199
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2203
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2205
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    goto/16 :goto_181a

    .line 2198
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_16c7
    :goto_16c7
    const/4 v2, 0x0

    return-object v2

    .line 2185
    :pswitch_16c9
    if-eqz v4, :cond_16fb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_16d2

    goto :goto_16fb

    .line 2187
    :cond_16d2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2188
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2187
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    .line 2191
    .local v2, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2192
    new-array v10, v11, [Ljava/lang/Integer;

    .line 2193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 2192
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2195
    move-object v2, v8

    goto/16 :goto_181a

    .line 2186
    .end local v2    # "res":I
    :cond_16fb
    :goto_16fb
    const/4 v2, 0x0

    return-object v2

    .line 2173
    :pswitch_16fd
    if-eqz v4, :cond_172f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1706

    goto :goto_172f

    .line 2175
    :cond_1706
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2176
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2175
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    .line 2179
    .restart local v2    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2180
    new-array v10, v11, [Ljava/lang/Integer;

    .line 2181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 2180
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2183
    move-object v2, v8

    goto/16 :goto_181a

    .line 2174
    .end local v2    # "res":I
    :cond_172f
    :goto_172f
    const/4 v2, 0x0

    return-object v2

    .line 2161
    :pswitch_1731
    if-eqz v4, :cond_1763

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_173a

    goto :goto_1763

    .line 2163
    :cond_173a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2164
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2163
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    .line 2167
    .restart local v2    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2168
    new-array v10, v11, [Ljava/lang/Integer;

    .line 2169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 2168
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2171
    move-object v2, v8

    goto/16 :goto_181a

    .line 2162
    .end local v2    # "res":I
    :cond_1763
    :goto_1763
    const/4 v2, 0x0

    return-object v2

    .line 2149
    :pswitch_1765
    if-eqz v4, :cond_1797

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_176e

    goto :goto_1797

    .line 2151
    :cond_176e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2152
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2151
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v2

    .line 2155
    .restart local v2    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2156
    new-array v10, v11, [Ljava/lang/Integer;

    .line 2157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 2156
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2159
    move-object v2, v8

    goto/16 :goto_181a

    .line 2150
    .end local v2    # "res":I
    :cond_1797
    :goto_1797
    const/4 v2, 0x0

    return-object v2

    .line 2139
    :pswitch_1799
    if-eqz v4, :cond_17b8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_17a2

    goto :goto_17b8

    .line 2141
    :cond_17a2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2142
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2141
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2145
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2147
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    goto :goto_181a

    .line 2140
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_17b8
    :goto_17b8
    const/4 v2, 0x0

    return-object v2

    .line 2130
    :pswitch_17ba
    if-eqz v4, :cond_17d9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_17c3

    goto :goto_17d9

    .line 2132
    :cond_17c3
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2133
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2132
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2136
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2137
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    goto :goto_181a

    .line 2131
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_17d9
    :goto_17d9
    const/4 v2, 0x0

    return-object v2

    .line 2121
    :pswitch_17db
    if-eqz v4, :cond_17fa

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_17e4

    goto :goto_17fa

    .line 2123
    :cond_17e4
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2124
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2123
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2127
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2128
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    goto :goto_181a

    .line 2122
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_17fa
    :goto_17fa
    const/4 v2, 0x0

    return-object v2

    .line 2112
    :pswitch_17fc
    if-eqz v4, :cond_181b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1805

    goto :goto_181b

    .line 2114
    :cond_1805
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2115
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2114
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2118
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2119
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    move-object v2, v6

    .line 2269
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .local v2, "mCursor":Landroid/database/MatrixCursor;
    :goto_181a
    return-object v2

    .line 2113
    .end local v2    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_181b
    :goto_181b
    const/4 v2, 0x0

    return-object v2

    .line 2109
    :cond_181d
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2718
    .end local v0    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v23    # "userId":I
    .local v6, "userId":I
    :pswitch_1820
    move/from16 v23, v6

    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v2

    .line 2719
    .local v2, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v2, :cond_19fc

    if-eqz v3, :cond_19fc

    .line 2720
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2690

    :cond_1831
    goto/16 :goto_18ac

    :sswitch_1833
    const-string/jumbo v0, "isAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    move/from16 v19, v14

    goto/16 :goto_18ae

    :sswitch_1840
    const-string/jumbo v0, "getRemoveWarning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x2

    goto :goto_18ae

    :sswitch_184c
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x5

    goto :goto_18ae

    :sswitch_1858
    const-string/jumbo v0, "setActiveAdmin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    move/from16 v19, v21

    goto :goto_18ae

    :sswitch_1864
    const-string/jumbo v0, "isMdmAdminPresent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    move/from16 v19, v20

    goto :goto_18ae

    :sswitch_1870
    const-string/jumbo v0, "getEnterpriseSdkVer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    goto :goto_18ae

    :sswitch_187a
    const-string/jumbo v0, "getAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x0

    goto :goto_18ae

    :sswitch_1886
    const-string/jumbo v0, "updateAdminPermissions"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x7

    goto :goto_18ae

    :sswitch_1892
    const-string/jumbo v0, "getActiveAdmins"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x1

    goto/16 :goto_18ae

    :sswitch_189f
    const-string/jumbo v0, "setAdminRemovable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1831

    const/16 v19, 0x6

    goto/16 :goto_18ae

    :goto_18ac
    move/from16 v19, v22

    :goto_18ae
    packed-switch v19, :pswitch_data_26ba

    :pswitch_18b1
    goto/16 :goto_19fb

    .line 2809
    :pswitch_18b3
    const-string v0, "30"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2810
    .local v0, "mdm_config_version":I
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2811
    new-array v6, v10, [Ljava/lang/Integer;

    .line 2812
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v12

    .line 2811
    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19fb

    .line 2800
    .end local v0    # "mdm_config_version":I
    :pswitch_18d2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2802
    .local v10, "token":J
    :try_start_18d6
    invoke-virtual {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v0

    .line 2803
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6
    :try_end_18de
    .catchall {:try_start_18d6 .. :try_end_18de} :catchall_18e5

    move-object v8, v6

    .line 2805
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2806
    nop

    .line 2807
    goto/16 :goto_19fb

    .line 2805
    .end local v0    # "result":Z
    :catchall_18e5
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2806
    throw v0

    .line 2788
    .end local v10    # "token":J
    :pswitch_18ea
    if-eqz v4, :cond_190c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_18f4

    goto :goto_190c

    .line 2790
    :cond_18f4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    .line 2791
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v6, v4, v6

    .line 2790
    invoke-virtual {v2, v0, v10, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 2793
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2795
    goto/16 :goto_19fb

    .line 2789
    .end local v0    # "result":Z
    :cond_190c
    :goto_190c
    const/4 v0, 0x0

    return-object v0

    .line 2778
    :pswitch_190e
    if-eqz v4, :cond_192b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-ge v0, v6, :cond_1919

    goto/16 :goto_192b

    .line 2781
    :cond_1919
    const/4 v6, 0x0

    :try_start_191a
    aget-object v0, v4, v6

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_1923
    .catch Landroid/os/RemoteException; {:try_start_191a .. :try_end_1923} :catch_1925

    .line 2785
    goto/16 :goto_19fb

    .line 2782
    :catch_1925
    move-exception v0

    .line 2784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2786
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_19fb

    .line 2779
    :cond_192b
    :goto_192b
    const/4 v0, 0x0

    return-object v0

    .line 2767
    :pswitch_192d
    if-eqz v4, :cond_1950

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_1937

    goto :goto_1950

    .line 2770
    :cond_1937
    const/4 v6, 0x0

    :try_start_1938
    aget-object v0, v4, v6

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 2771
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2770
    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1948
    .catch Landroid/os/RemoteException; {:try_start_1938 .. :try_end_1948} :catch_194a

    .line 2775
    goto/16 :goto_19fb

    .line 2772
    :catch_194a
    move-exception v0

    .line 2774
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2776
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_19fb

    .line 2768
    :cond_1950
    :goto_1950
    const/4 v0, 0x0

    return-object v0

    .line 2759
    :pswitch_1952
    if-eqz v4, :cond_196e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-ge v0, v6, :cond_195d

    goto/16 :goto_196e

    .line 2761
    :cond_195d
    const/4 v6, 0x0

    aget-object v0, v4, v6

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2763
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2765
    goto/16 :goto_19fb

    .line 2760
    .end local v0    # "result":Z
    :cond_196e
    :goto_196e
    const/4 v0, 0x0

    return-object v0

    .line 2748
    :pswitch_1970
    if-eqz v4, :cond_1993

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_197a

    goto :goto_1993

    .line 2751
    :cond_197a
    const/4 v10, 0x0

    :try_start_197b
    aget-object v0, v4, v10

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    aget-object v6, v4, v6

    .line 2752
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallback;

    .line 2751
    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_198c
    .catch Landroid/os/RemoteException; {:try_start_197b .. :try_end_198c} :catch_198e

    .line 2756
    goto/16 :goto_19fb

    .line 2753
    :catch_198e
    move-exception v0

    .line 2755
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2757
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_19fb

    .line 2749
    :cond_1993
    :goto_1993
    const/4 v0, 0x0

    return-object v0

    .line 2730
    :pswitch_1995
    if-eqz v4, :cond_19db

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_199e

    goto :goto_19db

    .line 2732
    :cond_199e
    const/4 v6, 0x0

    aget-object v0, v4, v6

    .line 2733
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    .line 2736
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2738
    if-eqz v0, :cond_19fb

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19fb

    .line 2740
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19c0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19da

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 2741
    .local v10, "value":Landroid/content/ComponentName;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    .line 2742
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    .line 2741
    invoke-virtual {v8, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2744
    .end local v10    # "value":Landroid/content/ComponentName;
    goto :goto_19c0

    :cond_19da
    goto :goto_19fb

    .line 2731
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_19db
    :goto_19db
    const/4 v0, 0x0

    return-object v0

    .line 2722
    :pswitch_19dd
    if-eqz v4, :cond_19f9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_19e7

    goto/16 :goto_19f9

    .line 2724
    :cond_19e7
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2727
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2728
    goto/16 :goto_19fb

    .line 2723
    .end local v0    # "result":Z
    :cond_19f9
    :goto_19f9
    const/4 v0, 0x0

    return-object v0

    .line 2816
    :cond_19fb
    :goto_19fb
    return-object v8

    .line 2719
    :cond_19fc
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2985
    .end local v2    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v23    # "userId":I
    .restart local v6    # "userId":I
    :cond_19ff
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2820
    :cond_1a04
    move/from16 v23, v6

    .line 2821
    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const-string v0, "email_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 2822
    .local v0, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v0, :cond_1b73

    if-eqz v3, :cond_1b73

    .line 2823
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_26d2

    :cond_1a19
    goto :goto_1a6f

    :sswitch_1a1a
    const-string/jumbo v2, "isAccountAdditionAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    const/16 v21, 0x0

    goto :goto_1a71

    :sswitch_1a26
    const-string/jumbo v2, "getAllowEmailForwarding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    const/16 v21, 0x1

    goto :goto_1a71

    :sswitch_1a32
    const-string/jumbo v2, "isEmailNotificationsEnabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    move/from16 v21, v14

    goto :goto_1a71

    :sswitch_1a3e
    const-string/jumbo v2, "isEmailSettingsChangesAllowed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    const/16 v21, 0x2

    goto :goto_1a71

    :sswitch_1a4a
    const-string/jumbo v2, "getEnterpriseEmailAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    const/16 v21, 0x6

    goto/16 :goto_1a71

    :sswitch_1a57
    const-string/jumbo v2, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    const/16 v21, 0x5

    goto/16 :goto_1a71

    :sswitch_1a64
    const-string/jumbo v2, "getAllowHtmlEmail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a19

    goto/16 :goto_1a71

    :goto_1a6f
    move/from16 v21, v22

    :goto_1a71
    packed-switch v21, :pswitch_data_26f0

    .line 2893
    const/4 v2, 0x0

    return-object v2

    .line 2880
    :pswitch_1a76
    if-eqz v4, :cond_1aac

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1a7f

    goto :goto_1aac

    .line 2882
    :cond_1a7f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2883
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2882
    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v2

    .line 2885
    .local v2, "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v3, v11, v6

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v6, v10

    .line 2886
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .local v6, "mCursor":Landroid/database/MatrixCursor;
    if-nez v9, :cond_1aa2

    .line 2887
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v9, v8

    .line 2888
    :cond_1aa2
    const-string v8, "email.account"

    invoke-virtual {v9, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2889
    invoke-virtual {v6, v9}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 2890
    goto/16 :goto_1b72

    .line 2881
    .end local v2    # "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1aac
    :goto_1aac
    const/4 v2, 0x0

    return-object v2

    .line 2868
    :pswitch_1aae
    if-eqz v4, :cond_1ae4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1ab7

    goto :goto_1ae4

    .line 2870
    :cond_1ab7
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    .line 2871
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2870
    invoke-static {v2, v10, v11}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v2

    .line 2873
    .local v2, "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v3, v11, v6

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v6, v10

    .line 2874
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    if-nez v9, :cond_1ada

    .line 2875
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v9, v8

    .line 2876
    :cond_1ada
    const-string v8, "eas.account"

    invoke-virtual {v9, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2877
    invoke-virtual {v6, v9}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 2878
    goto/16 :goto_1b72

    .line 2869
    .end local v2    # "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1ae4
    :goto_1ae4
    const/4 v2, 0x0

    return-object v2

    .line 2858
    :pswitch_1ae6
    if-eqz v4, :cond_1b02

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1af0

    goto/16 :goto_1b02

    .line 2860
    :cond_1af0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2864
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2866
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_1b72

    .line 2859
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1b02
    :goto_1b02
    const/4 v2, 0x0

    return-object v2

    .line 2849
    :pswitch_1b04
    if-eqz v4, :cond_1b23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1b0e

    goto/16 :goto_1b23

    .line 2851
    :cond_1b0e
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2852
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2851
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2855
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2856
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    goto :goto_1b72

    .line 2850
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1b23
    :goto_1b23
    const/4 v2, 0x0

    return-object v2

    .line 2840
    :pswitch_1b25
    if-eqz v4, :cond_1b44

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1b2f

    goto/16 :goto_1b44

    .line 2842
    :cond_1b2f
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 2843
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 2842
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v2

    .line 2846
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2847
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    goto :goto_1b72

    .line 2841
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1b44
    :goto_1b44
    const/4 v2, 0x0

    return-object v2

    .line 2831
    :pswitch_1b46
    if-eqz v4, :cond_1b62

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1b50

    goto/16 :goto_1b62

    .line 2833
    :cond_1b50
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2837
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2838
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    goto/16 :goto_1b72

    .line 2832
    .end local v2    # "result":Z
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1b62
    :goto_1b62
    const/4 v2, 0x0

    return-object v2

    .line 2825
    :pswitch_1b64
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    .line 2828
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 2829
    .end local v8    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v6    # "mCursor":Landroid/database/MatrixCursor;
    nop

    .line 2896
    .end local v2    # "result":Z
    :goto_1b72
    return-object v6

    .line 2822
    .end local v6    # "mCursor":Landroid/database/MatrixCursor;
    .restart local v8    # "mCursor":Landroid/database/MatrixCursor;
    :cond_1b73
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 2987
    .end local v0    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    .end local v23    # "userId":I
    .local v6, "userId":I
    :cond_1b76
    invoke-direct {v1, v3, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDualSim(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2981
    :cond_1b7b
    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2904
    :cond_1b80
    move/from16 v23, v6

    .line 2906
    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const-string/jumbo v0, "knox_ccm_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 2907
    .local v0, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v0, :cond_1c8d

    .line 2908
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2702

    :cond_1b94
    goto/16 :goto_1bc5

    :sswitch_1b96
    const-string v2, "deleteCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b94

    const/4 v2, 0x1

    goto/16 :goto_1bc7

    :sswitch_1ba1
    const-string/jumbo v2, "isCCMPolicyEnabledForPackage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b94

    const/4 v2, 0x2

    goto/16 :goto_1bc7

    :sswitch_1bad
    const-string/jumbo v2, "getCCMVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b94

    move v2, v14

    goto/16 :goto_1bc7

    :sswitch_1bb9
    const-string/jumbo v2, "installCertificate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b94

    const/4 v2, 0x0

    goto/16 :goto_1bc7

    :goto_1bc5
    move/from16 v2, v22

    :goto_1bc7
    if-eqz v2, :cond_1c26

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1c09

    const/4 v10, 0x2

    if-eq v2, v10, :cond_1beb

    if-eq v2, v14, :cond_1bd3

    .line 2973
    const/4 v2, 0x0

    return-object v2

    .line 2963
    :cond_1bd3
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v2

    .line 2966
    .local v2, "ccmVersion":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v6, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2967
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v12

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2970
    goto/16 :goto_1c8a

    .line 2950
    .end local v2    # "ccmVersion":Ljava/lang/String;
    :cond_1beb
    if-eqz v4, :cond_1c07

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1bf5

    goto/16 :goto_1c07

    .line 2954
    :cond_1bf5
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2958
    .local v2, "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2960
    goto/16 :goto_1c8a

    .line 2951
    .end local v2    # "result":Z
    :cond_1c07
    :goto_1c07
    const/4 v2, 0x0

    return-object v2

    .line 2938
    :cond_1c09
    if-eqz v4, :cond_1c24

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1c13

    goto/16 :goto_1c24

    .line 2942
    :cond_1c13
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2946
    .restart local v2    # "result":Z
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2947
    goto :goto_1c8a

    .line 2939
    .end local v2    # "result":Z
    :cond_1c24
    :goto_1c24
    const/4 v2, 0x0

    return-object v2

    .line 2910
    :cond_1c26
    if-eqz v4, :cond_1c8b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_1c30

    goto :goto_1c8b

    .line 2914
    :cond_1c30
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 2915
    .local v2, "arrayLength":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2917
    .local v6, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v10}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    .line 2918
    .local v10, "cp":Lcom/samsung/android/knox/keystore/CertificateProfile;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    .line 2919
    const/4 v11, 0x1

    aget-object v11, v4, v11

    iput-object v11, v10, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    .line 2920
    const/4 v11, 0x2

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    .line 2921
    aget-object v11, v4, v14

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v10, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    .line 2923
    const/4 v11, 0x4

    .local v11, "i":I
    :goto_1c5e
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_1c6e

    .line 2924
    aget-object v12, v4, v11

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2923
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c5e

    .line 2926
    .end local v11    # "i":I
    :cond_1c6e
    iput-object v6, v10, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    .line 2928
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    add-int/lit8 v12, v2, -0x2

    aget-object v12, v4, v12

    .line 2930
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    add-int/lit8 v13, v2, -0x1

    aget-object v13, v4, v13

    .line 2928
    invoke-virtual {v0, v11, v10, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v11

    .line 2934
    .local v11, "result":Z
    invoke-direct {v1, v3, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 2935
    nop

    .line 2975
    .end local v2    # "arrayLength":I
    .end local v6    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "cp":Lcom/samsung/android/knox/keystore/CertificateProfile;
    .end local v11    # "result":Z
    :goto_1c8a
    return-object v8

    .line 2911
    :cond_1c8b
    :goto_1c8b
    const/4 v2, 0x0

    return-object v2

    .line 2907
    :cond_1c8d
    const/4 v0, 0x0

    goto/16 :goto_238d

    .line 1693
    .end local v0    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .end local v23    # "userId":I
    .local v6, "userId":I
    :cond_1c90
    move/from16 v23, v6

    .line 1694
    .end local v6    # "userId":I
    .restart local v23    # "userId":I
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1695
    .local v2, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v2, :cond_238c

    .line 1696
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2714

    :cond_1ca4
    goto/16 :goto_1e09

    :sswitch_1ca6
    const-string/jumbo v0, "getAppInstallToSdCard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v21

    goto/16 :goto_1e0b

    :sswitch_1cb3
    const-string/jumbo v0, "getApplicationUninstallationEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x0

    goto/16 :goto_1e0b

    :sswitch_1cbf
    const-string/jumbo v0, "getApplicationStateDisabledList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x12

    goto/16 :goto_1e0b

    :sswitch_1ccc
    const-string/jumbo v0, "isPackageUpdateAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v19

    goto/16 :goto_1e0b

    :sswitch_1cd9
    const-string/jumbo v0, "isIntentDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x2

    goto/16 :goto_1e0b

    :sswitch_1ce5
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x18

    goto/16 :goto_1e0b

    :sswitch_1cf2
    const-string/jumbo v0, "isUsbDevicePermittedForPackage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0xc

    goto/16 :goto_1e0b

    :sswitch_1cff
    const-string/jumbo v0, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0xe

    goto/16 :goto_1e0b

    :sswitch_1d0c
    const-string/jumbo v0, "getApplicationIconFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v16

    goto/16 :goto_1e0b

    :sswitch_1d19
    const-string/jumbo v0, "isApplicationForceStopDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x5

    goto/16 :goto_1e0b

    :sswitch_1d25
    const-string/jumbo v0, "isApplicationSetToDefault"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x10

    goto/16 :goto_1e0b

    :sswitch_1d32
    const-string/jumbo v0, "getApplicationStateEnabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v17

    goto/16 :goto_1e0b

    :sswitch_1d3f
    const-string/jumbo v0, "isApplicationClearCacheDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x7

    goto/16 :goto_1e0b

    :sswitch_1d4b
    const-string/jumbo v0, "getApplicationNameFromDb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v20

    goto/16 :goto_1e0b

    :sswitch_1d58
    const-string/jumbo v0, "getDefaultApplicationInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x11

    goto/16 :goto_1e0b

    :sswitch_1d65
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x17

    goto/16 :goto_1e0b

    :sswitch_1d72
    const-string/jumbo v0, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0xf

    goto/16 :goto_1e0b

    :sswitch_1d7f
    const-string/jumbo v0, "getApplicationInstallUninstallListAsUser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x14

    goto/16 :goto_1e0b

    :sswitch_1d8c
    const-string/jumbo v0, "isApplicationClearDataDisabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x6

    goto/16 :goto_1e0b

    :sswitch_1d98
    const-string/jumbo v0, "getApplicationUninstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x16

    goto :goto_1e0b

    :sswitch_1da4
    const-string/jumbo v0, "getApplicationInstallUninstallList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x13

    goto :goto_1e0b

    :sswitch_1db0
    const-string/jumbo v0, "getApplicationNotificationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move v11, v14

    goto/16 :goto_1e0b

    :sswitch_1dbc
    const-string/jumbo v0, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x1a

    goto/16 :goto_1e0b

    :sswitch_1dc9
    const-string/jumbo v0, "isApplicationInstalled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/4 v11, 0x1

    goto/16 :goto_1e0b

    :sswitch_1dd5
    const-string/jumbo v0, "getApplicationComponentState"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    move/from16 v11, v18

    goto/16 :goto_1e0b

    :sswitch_1de2
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x1b

    goto/16 :goto_1e0b

    :sswitch_1def
    const-string/jumbo v0, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x19

    goto/16 :goto_1e0b

    :sswitch_1dfc
    const-string/jumbo v0, "getAppInstallationMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca4

    const/16 v11, 0x15

    goto/16 :goto_1e0b

    :goto_1e09
    move/from16 v11, v22

    :goto_1e0b
    packed-switch v11, :pswitch_data_2786

    .line 2098
    const/4 v0, 0x0

    const-string/jumbo v6, "return null"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    return-object v0

    .line 2078
    :pswitch_1e16
    const/4 v0, 0x0

    .line 2079
    .local v0, "res":I
    const/4 v6, 0x0

    .line 2080
    .local v6, "clipboardWhiteListPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_1e50

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_1e50

    .line 2081
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2082
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v11, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Ljava/util/HashMap;

    .line 2088
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    aput-object v3, v12, v10

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    .line 2090
    if-nez v9, :cond_1e46

    .line 2091
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    .line 2094
    :cond_1e46
    const-string v10, "clipboard_whitelist_perUid"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2095
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 2096
    goto/16 :goto_2389

    .line 2084
    :cond_1e50
    const/4 v10, 0x0

    return-object v10

    .line 2058
    .end local v0    # "res":I
    .end local v6    # "clipboardWhiteListPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_1e52
    const/4 v0, 0x0

    .line 2059
    .restart local v0    # "res":I
    const/4 v6, 0x0

    .line 2060
    .local v6, "clipboardBlackListPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_1e8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_1e8c

    .line 2061
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2062
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v0, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Ljava/util/HashMap;

    .line 2068
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v12, v12, [Ljava/lang/String;

    aput-object v3, v12, v10

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    .line 2070
    if-nez v9, :cond_1e82

    .line 2071
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    .line 2074
    :cond_1e82
    const-string v10, "clipboard_blacklist_perUid"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2075
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    .line 2076
    goto/16 :goto_2389

    .line 2064
    :cond_1e8c
    const/4 v10, 0x0

    return-object v10

    .line 2034
    .end local v0    # "res":I
    .end local v6    # "clipboardBlackListPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_1e8e
    const/4 v0, 0x0

    .line 2035
    .restart local v0    # "res":I
    const/4 v6, 0x0

    .line 2036
    .local v6, "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1eaa

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_1eaa

    .line 2037
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2038
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_1eb2

    .line 2040
    :cond_1eaa
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 2044
    :goto_1eb2
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2046
    if-eqz v6, :cond_1ee2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1ee2

    .line 2047
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1eca
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ee0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2048
    .local v11, "value":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2051
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_1eca

    :cond_1ee0
    goto/16 :goto_2389

    .line 2054
    :cond_1ee2
    const/4 v10, 0x0

    return-object v10

    .line 2011
    .end local v0    # "res":I
    .end local v6    # "clipboardWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1ee4
    const/4 v0, 0x0

    .line 2012
    .restart local v0    # "res":I
    const/4 v6, 0x0

    .line 2013
    .local v6, "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1f00

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_1f00

    .line 2014
    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2015
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v6

    goto/16 :goto_1f09

    .line 2017
    :cond_1f00
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    .line 2020
    :goto_1f09
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 2022
    if-eqz v6, :cond_1f39

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f39

    .line 2023
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1f21
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2024
    .restart local v11    # "value":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2027
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_1f21

    :cond_1f37
    goto/16 :goto_2389

    .line 2030
    :cond_1f39
    const/4 v10, 0x0

    return-object v10

    .line 1999
    .end local v0    # "res":I
    .end local v6    # "clipboardBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f3b
    invoke-virtual {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    .line 2001
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v11, v10

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 2002
    if-eqz v0, :cond_2389

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2389

    .line 2003
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2004
    .local v10, "pkg":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v12, v11

    invoke-virtual {v8, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2007
    .end local v10    # "pkg":Ljava/lang/String;
    goto :goto_1f57

    :cond_1f6d
    goto/16 :goto_2389

    .line 1990
    .end local v0    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f6f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1993
    .local v0, "getAppUninstall":I
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 1994
    new-array v6, v10, [Ljava/lang/Integer;

    .line 1995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v12

    .line 1994
    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1997
    goto/16 :goto_2389

    .line 1981
    .end local v0    # "getAppUninstall":I
    :pswitch_1f91
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1984
    .local v0, "getAppInstall":I
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-direct {v6, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 1985
    new-array v6, v10, [Ljava/lang/Integer;

    .line 1986
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v12

    .line 1985
    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1988
    goto/16 :goto_2389

    .line 1955
    .end local v0    # "getAppInstall":I
    :pswitch_1fb3
    if-eqz v4, :cond_201d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_1fbe

    const/4 v6, 0x0

    goto :goto_201e

    .line 1960
    :cond_1fbe
    const-string/jumbo v0, "getApplicationInstallUninstallListAsUser"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const/4 v6, 0x0

    aget-object v0, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v11, 0x1

    aget-object v12, v4, v11

    invoke-virtual {v2, v0, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1965
    .local v0, "installUninstallListAsUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    new-array v13, v11, [Ljava/lang/String;

    aput-object v3, v13, v6

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    .line 1967
    if-eqz v0, :cond_2015

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2015

    .line 1968
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1fe8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2013

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1969
    .restart local v11    # "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getApplicationInstallUninstallListAsUser value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1973
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_1fe8

    :cond_2013
    goto/16 :goto_2389

    .line 1976
    :cond_2015
    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/4 v6, 0x0

    return-object v6

    .line 1955
    .end local v0    # "installUninstallListAsUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_201d
    const/4 v6, 0x0

    .line 1956
    :goto_201e
    const-string/jumbo v0, "getApplicationInstallUninstallListAsUser selectionArgs is null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    return-object v6

    .line 1929
    :pswitch_2025
    if-eqz v4, :cond_2089

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-ge v0, v6, :cond_2031

    const/4 v6, 0x0

    goto/16 :goto_208a

    .line 1934
    :cond_2031
    const-string/jumbo v0, "getApplicationInstallUninstallList"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/4 v11, 0x0

    aget-object v0, v4, v11

    invoke-virtual {v2, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1939
    .local v0, "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Landroid/database/MatrixCursor;

    new-array v13, v6, [Ljava/lang/String;

    aput-object v3, v13, v11

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v12

    .line 1941
    if-eqz v0, :cond_2081

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2081

    .line 1942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2054
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_207f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1943
    .restart local v11    # "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getApplicationInstallUninstallList value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1947
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_2054

    :cond_207f
    goto/16 :goto_2389

    .line 1950
    :cond_2081
    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/4 v6, 0x0

    return-object v6

    .line 1929
    .end local v0    # "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2089
    const/4 v6, 0x0

    .line 1930
    :goto_208a
    const-string/jumbo v0, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    return-object v6

    .line 1912
    :pswitch_2091
    invoke-virtual {v2, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    .line 1914
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_20da

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_20da

    .line 1916
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v3, v12, v11

    invoke-direct {v6, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v6

    .line 1917
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20ad
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20d8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1918
    .restart local v11    # "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getApplicationStateDisabledList value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v13, v12

    invoke-virtual {v8, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1922
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_20ad

    :cond_20d8
    goto/16 :goto_2389

    .line 1924
    :cond_20da
    const-string/jumbo v6, "getApplicationStateDisabledList null"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v6, 0x0

    return-object v6

    .line 1889
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20e2
    if-eqz v4, :cond_2132

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_20ed

    goto/16 :goto_2132

    .line 1893
    :cond_20ed
    const/4 v6, 0x0

    .line 1895
    .local v6, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    :try_start_20ef
    aget-object v0, v4, v11

    invoke-static {v0, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_20f5
    .catch Ljava/net/URISyntaxException; {:try_start_20ef .. :try_end_20f5} :catch_20f8

    move-object v6, v0

    .line 1898
    goto/16 :goto_210d

    .line 1896
    :catch_20f8
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URISyntaxException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_210d
    const/4 v10, 0x1

    aget-object v0, v4, v10

    .line 1901
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1900
    invoke-virtual {v2, v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 1904
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v12, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    .line 1905
    if-eqz v0, :cond_2389

    .line 1906
    new-array v10, v10, [Ljava/lang/String;

    .line 1907
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1906
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2389

    .line 1890
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_2132
    :goto_2132
    const/4 v0, 0x0

    return-object v0

    .line 1879
    :pswitch_2134
    if-eqz v4, :cond_2153

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_213f

    goto/16 :goto_2153

    .line 1882
    :cond_213f
    const/4 v6, 0x0

    aget-object v0, v4, v6

    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 1883
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1882
    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    .line 1886
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1887
    goto/16 :goto_2389

    .line 1880
    .end local v0    # "result":Z
    :cond_2153
    :goto_2153
    const/4 v0, 0x0

    return-object v0

    .line 1869
    :pswitch_2155
    if-eqz v4, :cond_2171

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-ge v0, v6, :cond_2160

    goto/16 :goto_2171

    .line 1872
    :cond_2160
    const/4 v6, 0x0

    aget-object v0, v4, v6

    .line 1873
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1872
    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    .line 1876
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1877
    goto/16 :goto_2389

    .line 1870
    .end local v0    # "result":Z
    :cond_2171
    :goto_2171
    const/4 v0, 0x0

    return-object v0

    .line 1859
    :pswitch_2173
    if-eqz v4, :cond_2192

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_217e

    goto/16 :goto_2192

    .line 1862
    :cond_217e
    const/4 v6, 0x0

    aget-object v0, v4, v6

    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 1863
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1862
    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v0

    .line 1866
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1867
    goto/16 :goto_2389

    .line 1860
    .end local v0    # "result":Z
    :cond_2192
    :goto_2192
    const/4 v0, 0x0

    return-object v0

    .line 1847
    :pswitch_2194
    if-eqz v4, :cond_21be

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-ge v0, v6, :cond_219f

    goto/16 :goto_21be

    .line 1850
    :cond_219f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v4, v10

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v0

    .line 1853
    .local v0, "re":[B
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v12, v6, [Ljava/lang/String;

    aput-object v3, v12, v10

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    .line 1854
    new-array v6, v6, [[B

    aput-object v0, v6, v10

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1857
    goto/16 :goto_2389

    .line 1848
    .end local v0    # "re":[B
    :cond_21be
    :goto_21be
    const/4 v0, 0x0

    return-object v0

    .line 1836
    :pswitch_21c0
    if-eqz v4, :cond_21e7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-gt v0, v6, :cond_21cb

    goto/16 :goto_21e7

    .line 1839
    :cond_21cb
    const/4 v10, 0x0

    aget-object v0, v4, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    aget-object v10, v4, v10

    .line 1840
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    aget-object v6, v4, v6

    .line 1839
    invoke-virtual {v2, v0, v10, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    .line 1843
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1844
    goto/16 :goto_2389

    .line 1837
    .end local v0    # "result":Z
    :cond_21e7
    :goto_21e7
    const/4 v0, 0x0

    return-object v0

    .line 1825
    :pswitch_21e9
    if-eqz v4, :cond_2205

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_21f3

    goto/16 :goto_2205

    .line 1828
    :cond_21f3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1831
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1833
    goto/16 :goto_2389

    .line 1826
    .end local v0    # "result":Z
    :cond_2205
    :goto_2205
    const/4 v0, 0x0

    return-object v0

    .line 1813
    :pswitch_2207
    if-eqz v4, :cond_2229

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2211

    goto/16 :goto_2229

    .line 1816
    :cond_2211
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    .line 1817
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 1816
    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0

    .line 1820
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1822
    goto/16 :goto_2389

    .line 1814
    .end local v0    # "result":Z
    :cond_2229
    :goto_2229
    const/4 v0, 0x0

    return-object v0

    .line 1802
    :pswitch_222b
    if-eqz v4, :cond_2249

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_2236

    goto/16 :goto_2249

    .line 1805
    :cond_2236
    const/4 v10, 0x0

    aget-object v0, v4, v10

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    .line 1808
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1810
    goto/16 :goto_2389

    .line 1803
    .end local v0    # "result":Z
    :cond_2249
    :goto_2249
    const/4 v0, 0x0

    return-object v0

    .line 1788
    :pswitch_224b
    if-eqz v4, :cond_2276

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x1

    if-gt v0, v6, :cond_2256

    goto/16 :goto_2276

    .line 1791
    :cond_2256
    const/4 v10, 0x0

    aget-object v0, v4, v10

    aget-object v11, v4, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, "resultString":Ljava/lang/String;
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v12, v6, [Ljava/lang/String;

    aput-object v3, v12, v10

    invoke-direct {v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v11

    .line 1795
    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-virtual {v8, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1799
    goto/16 :goto_2389

    .line 1789
    .end local v0    # "resultString":Ljava/lang/String;
    :cond_2276
    :goto_2276
    const/4 v0, 0x0

    return-object v0

    .line 1777
    :pswitch_2278
    if-eqz v4, :cond_229d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-gt v0, v6, :cond_2283

    goto/16 :goto_229d

    .line 1780
    :cond_2283
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v0, v10, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1783
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1785
    goto/16 :goto_2389

    .line 1778
    .end local v0    # "result":Z
    :cond_229d
    :goto_229d
    const/4 v0, 0x0

    return-object v0

    .line 1766
    :pswitch_229f
    if-eqz v4, :cond_22c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x2

    if-gt v0, v6, :cond_22aa

    goto/16 :goto_22c4

    .line 1769
    :cond_22aa
    const/4 v10, 0x0

    aget-object v0, v4, v10

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v0, v10, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1772
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1774
    goto/16 :goto_2389

    .line 1767
    .end local v0    # "result":Z
    :cond_22c4
    :goto_22c4
    const/4 v0, 0x0

    return-object v0

    .line 1752
    :pswitch_22c6
    if-eqz v4, :cond_22f4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v6, 0x5

    if-gt v0, v6, :cond_22d1

    goto/16 :goto_22f4

    .line 1755
    :cond_22d1
    const/4 v10, 0x0

    aget-object v25, v4, v10

    const/4 v10, 0x1

    aget-object v0, v4, v10

    .line 1756
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/4 v0, 0x2

    aget-object v27, v4, v0

    aget-object v28, v4, v14

    aget-object v29, v4, v21

    aget-object v0, v4, v6

    .line 1758
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    .line 1755
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v30}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1761
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1763
    goto/16 :goto_2389

    .line 1753
    .end local v0    # "result":Z
    :cond_22f4
    :goto_22f4
    const/4 v0, 0x0

    return-object v0

    .line 1744
    :pswitch_22f6
    const/4 v0, 0x1

    .line 1747
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1749
    goto/16 :goto_2389

    .line 1729
    .end local v0    # "result":Z
    :pswitch_22fd
    if-eqz v4, :cond_232f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2307

    goto/16 :goto_232f

    .line 1732
    :cond_2307
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v10, v4, v6

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    .line 1735
    .local v0, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    aput-object v3, v12, v6

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v8, v10

    .line 1736
    new-array v10, v11, [Ljava/lang/Integer;

    .line 1737
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    .line 1736
    invoke-virtual {v8, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1740
    goto/16 :goto_2389

    .line 1730
    .end local v0    # "res":I
    :cond_232f
    :goto_232f
    const/4 v0, 0x0

    return-object v0

    .line 1718
    :pswitch_2331
    if-eqz v4, :cond_234e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_233b

    goto/16 :goto_234e

    .line 1720
    :cond_233b
    const/4 v6, 0x0

    aget-object v0, v4, v6

    .line 1721
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1720
    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    .line 1724
    .local v0, "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1726
    goto/16 :goto_2389

    .line 1719
    .end local v0    # "result":Z
    :cond_234e
    :goto_234e
    const/4 v0, 0x0

    return-object v0

    .line 1708
    :pswitch_2350
    if-eqz v4, :cond_236c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_235a

    goto/16 :goto_236c

    .line 1711
    :cond_235a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1714
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1716
    goto/16 :goto_2389

    .line 1709
    .end local v0    # "result":Z
    :cond_236c
    :goto_236c
    const/4 v0, 0x0

    return-object v0

    .line 1698
    :pswitch_236e
    if-eqz v4, :cond_238a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2378

    goto/16 :goto_238a

    .line 1701
    :cond_2378
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v2, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1704
    .restart local v0    # "result":Z
    invoke-direct {v1, v3, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 1705
    nop

    .line 2102
    .end local v0    # "result":Z
    :cond_2389
    :goto_2389
    return-object v8

    .line 1699
    :cond_238a
    :goto_238a
    const/4 v0, 0x0

    return-object v0

    .line 1695
    :cond_238c
    const/4 v0, 0x0

    .line 2994
    .end local v2    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :goto_238d
    return-object v0

    :pswitch_data_238e
    .packed-switch 0xb
        :pswitch_1820
        :pswitch_14f8
        :pswitch_1216
        :pswitch_d1e
        :pswitch_570
        :pswitch_56b
        :pswitch_566
        :pswitch_561
        :pswitch_55c
        :pswitch_86
        :pswitch_81
    .end packed-switch

    :sswitch_data_23a8
    .sparse-switch
        -0x741f137a -> :sswitch_191
        -0x6eef77f4 -> :sswitch_186
        -0x6cb3e7fc -> :sswitch_17b
        -0x680f2e58 -> :sswitch_16f
        -0x661b9f0b -> :sswitch_163
        -0x5d7bb47d -> :sswitch_157
        -0x511c5d9f -> :sswitch_14b
        -0x44588ee5 -> :sswitch_13f
        -0x420e1f50 -> :sswitch_133
        -0x2e1ba825 -> :sswitch_127
        -0x23226268 -> :sswitch_11a
        -0x17c83041 -> :sswitch_10f
        -0x164ff74f -> :sswitch_103
        -0x208922d -> :sswitch_f6
        0x1b40829f -> :sswitch_e9
        0x268657f7 -> :sswitch_dd
        0x2e222643 -> :sswitch_d0
        0x5a7559bf -> :sswitch_c3
        0x60eb8b37 -> :sswitch_b6
        0x6406da08 -> :sswitch_aa
        0x68ddea58 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_23fe
    .packed-switch 0x0
        :pswitch_527
        :pswitch_508
        :pswitch_4b1
        :pswitch_458
        :pswitch_447
        :pswitch_423
        :pswitch_3bc
        :pswitch_391
        :pswitch_32e
        :pswitch_2f4
        :pswitch_2e3
        :pswitch_2d2
        :pswitch_2c1
        :pswitch_2a7
        :pswitch_296
        :pswitch_285
        :pswitch_274
        :pswitch_21b
        :pswitch_1c6
        :pswitch_1b5
        :pswitch_1a4
    .end packed-switch

    :sswitch_data_242c
    .sparse-switch
        -0x7d00b11f -> :sswitch_789
        -0x7cda2990 -> :sswitch_77d
        -0x7bf265f6 -> :sswitch_771
        -0x7bc370bc -> :sswitch_765
        -0x757aa1fb -> :sswitch_75a
        -0x6ff99d8b -> :sswitch_74e
        -0x6f61ea52 -> :sswitch_743
        -0x6f1f927d -> :sswitch_737
        -0x6cd5112c -> :sswitch_72c
        -0x6c8256b9 -> :sswitch_71f
        -0x68231777 -> :sswitch_712
        -0x5f479d3d -> :sswitch_705
        -0x5d96bdfd -> :sswitch_6f8
        -0x49039c7d -> :sswitch_6eb
        -0x3eeccaaa -> :sswitch_6de
        -0x3b6d6c7b -> :sswitch_6d2
        -0x3169f913 -> :sswitch_6c5
        -0x24629eae -> :sswitch_6b8
        -0x105b68f3 -> :sswitch_6ab
        -0xb98097b -> :sswitch_69e
        -0x63922de -> :sswitch_691
        -0x4a6fada -> :sswitch_684
        -0x2cd0269 -> :sswitch_677
        -0x2246832 -> :sswitch_66a
        -0x117c459 -> :sswitch_65d
        0x4fd98e1 -> :sswitch_650
        0x85fa496 -> :sswitch_643
        0x1086aa03 -> :sswitch_636
        0x12bb4d48 -> :sswitch_62a
        0x18e41b33 -> :sswitch_61d
        0x1d261c9d -> :sswitch_610
        0x240ce64e -> :sswitch_603
        0x32c1d30f -> :sswitch_5f6
        0x438d32f5 -> :sswitch_5e9
        0x4875c45d -> :sswitch_5dc
        0x4a948f99 -> :sswitch_5cf
        0x4abdeb96 -> :sswitch_5c2
        0x64defd38 -> :sswitch_5b5
        0x67050a1d -> :sswitch_5a9
        0x6c8af02b -> :sswitch_59d
        0x6db77171 -> :sswitch_590
        0x6ec40bb4 -> :sswitch_583
    .end sparse-switch

    :pswitch_data_24d6
    .packed-switch 0x0
        :pswitch_d09
        :pswitch_ce5
        :pswitch_cd3
        :pswitch_c93
        :pswitch_c80
        :pswitch_c5b
        :pswitch_c36
        :pswitch_c15
        :pswitch_bf0
        :pswitch_bdd
        :pswitch_bca
        :pswitch_bb7
        :pswitch_ba4
        :pswitch_b91
        :pswitch_b6b
        :pswitch_b45
        :pswitch_b20
        :pswitch_b0d
        :pswitch_afa
        :pswitch_ae7
        :pswitch_ac2
        :pswitch_a9d
        :pswitch_a78
        :pswitch_a65
        :pswitch_a28
        :pswitch_a15
        :pswitch_9f0
        :pswitch_9dd
        :pswitch_9ca
        :pswitch_9a5
        :pswitch_968
        :pswitch_943
        :pswitch_91e
        :pswitch_8f9
        :pswitch_8bc
        :pswitch_88a
        :pswitch_858
        :pswitch_81b
        :pswitch_7fa
        :pswitch_7e6
        :pswitch_7c1
        :pswitch_79c
    .end packed-switch

    :sswitch_data_252e
    .sparse-switch
        -0x75228db3 -> :sswitch_e74
        -0x5e8b707a -> :sswitch_e69
        -0x535b24ed -> :sswitch_e5e
        -0x5344faa1 -> :sswitch_e53
        -0x49b19ab4 -> :sswitch_e47
        -0x477f69dc -> :sswitch_e3b
        -0x47062780 -> :sswitch_e30
        -0x2d0232dc -> :sswitch_e24
        -0x1b1e2f47 -> :sswitch_e18
        -0x6441366 -> :sswitch_e0b
        -0x2067e91 -> :sswitch_dfe
        0x85fa496 -> :sswitch_df1
        0x10dc886c -> :sswitch_de4
        0x27deb5dc -> :sswitch_dd7
        0x376703d8 -> :sswitch_dca
        0x3e24f8e6 -> :sswitch_dbd
        0x428f670d -> :sswitch_db0
        0x432078d3 -> :sswitch_da4
        0x433f1786 -> :sswitch_d97
        0x4f9505ac -> :sswitch_d8a
        0x5afa1a68 -> :sswitch_d7d
        0x5b05ced2 -> :sswitch_d71
        0x6238abf9 -> :sswitch_d64
        0x694839c4 -> :sswitch_d57
        0x6ad3e979 -> :sswitch_d4a
        0x6c630712 -> :sswitch_d3e
        0x75760f09 -> :sswitch_d31
    .end sparse-switch

    :pswitch_data_259c
    .packed-switch 0x0
        :pswitch_11d7
        :pswitch_11c3
        :pswitch_119f
        :pswitch_116b
        :pswitch_1137
        :pswitch_1116
        :pswitch_10f1
        :pswitch_10de
        :pswitch_10cb
        :pswitch_10b8
        :pswitch_10a5
        :pswitch_1071
        :pswitch_1031
        :pswitch_1017
        :pswitch_1004
        :pswitch_ff1
        :pswitch_fcc
        :pswitch_fb9
        :pswitch_f94
        :pswitch_f81
        :pswitch_f5c
        :pswitch_f3b
        :pswitch_f16
        :pswitch_ef1
        :pswitch_ed7
        :pswitch_ec4
        :pswitch_e87
    .end packed-switch

    :sswitch_data_25d6
    .sparse-switch
        -0x678cfb16 -> :sswitch_12d3
        -0x5d1cb00b -> :sswitch_12c7
        -0x58dab65f -> :sswitch_12bb
        -0x55d0d0ee -> :sswitch_12af
        -0x495e7741 -> :sswitch_12a4
        -0x1abb5fa -> :sswitch_1299
        0xf077a09 -> :sswitch_128e
        0x1fa36ac0 -> :sswitch_1282
        0x2f421cc3 -> :sswitch_1277
        0x32574534 -> :sswitch_126a
        0x34565e5f -> :sswitch_125e
        0x38ab60cf -> :sswitch_1251
        0x3ab3e61a -> :sswitch_1246
        0x4ed22f86 -> :sswitch_1239
        0x6c0df1e8 -> :sswitch_122c
    .end sparse-switch

    :pswitch_data_2614
    .packed-switch 0x0
        :pswitch_14e6
        :pswitch_14c6
        :pswitch_1495
        :pswitch_1444
        :pswitch_13f2
        :pswitch_13d6
        :pswitch_13b5
        :pswitch_1348
        :pswitch_1327
        :pswitch_131c
        :pswitch_1311
        :pswitch_1306
        :pswitch_12fb
        :pswitch_12f0
        :pswitch_12e5
    .end packed-switch

    :sswitch_data_2636
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_15a9
        -0x7a29af54 -> :sswitch_159d
        -0x7672ed17 -> :sswitch_1591
        -0x6a25634f -> :sswitch_1586
        -0x437f6e25 -> :sswitch_157a
        -0x1e01c219 -> :sswitch_156e
        -0x14b468b1 -> :sswitch_1563
        0xb8321a0 -> :sswitch_1557
        0x26b3fb45 -> :sswitch_154c
        0x2a7ba768 -> :sswitch_1540
        0x37929121 -> :sswitch_1533
        0x6e37395a -> :sswitch_1527
        0x77ba6b2b -> :sswitch_151b
        0x7ec2cd45 -> :sswitch_150f
    .end sparse-switch

    :pswitch_data_2670
    .packed-switch 0x0
        :pswitch_17fc
        :pswitch_17db
        :pswitch_17ba
        :pswitch_1799
        :pswitch_1765
        :pswitch_1731
        :pswitch_16fd
        :pswitch_16c9
        :pswitch_16a7
        :pswitch_1685
        :pswitch_1655
        :pswitch_1625
        :pswitch_15f1
        :pswitch_15c3
    .end packed-switch

    :sswitch_data_2690
    .sparse-switch
        -0x755ab0b2 -> :sswitch_189f
        -0x69b477e0 -> :sswitch_1892
        -0x5fd37362 -> :sswitch_1886
        -0x3d5118be -> :sswitch_187a
        -0x4e0d4c0 -> :sswitch_1870
        0x1d6710b8 -> :sswitch_1864
        0x2fe3c227 -> :sswitch_1858
        0x3854fcc5 -> :sswitch_184c
        0x47a72ec2 -> :sswitch_1840
        0x7ac2a216 -> :sswitch_1833
    .end sparse-switch

    :pswitch_data_26ba
    .packed-switch 0x0
        :pswitch_19dd
        :pswitch_1995
        :pswitch_1970
        :pswitch_1952
        :pswitch_192d
        :pswitch_190e
        :pswitch_18ea
        :pswitch_18b1
        :pswitch_18d2
        :pswitch_18b3
    .end packed-switch

    :sswitch_data_26d2
    .sparse-switch
        -0x793fada2 -> :sswitch_1a64
        -0x5c3258ae -> :sswitch_1a57
        -0x3c3a3ab9 -> :sswitch_1a4a
        -0x394ec066 -> :sswitch_1a3e
        0x1733e8eb -> :sswitch_1a32
        0x4e985da6 -> :sswitch_1a26
        0x4fb7d6e9 -> :sswitch_1a1a
    .end sparse-switch

    :pswitch_data_26f0
    .packed-switch 0x0
        :pswitch_1b64
        :pswitch_1b46
        :pswitch_1b25
        :pswitch_1b04
        :pswitch_1ae6
        :pswitch_1aae
        :pswitch_1a76
    .end packed-switch

    :sswitch_data_2702
    .sparse-switch
        -0x602f3b04 -> :sswitch_1bb9
        -0x148747ff -> :sswitch_1bad
        0x37b7b049 -> :sswitch_1ba1
        0x7a36baec -> :sswitch_1b96
    .end sparse-switch

    :sswitch_data_2714
    .sparse-switch
        -0x777467f8 -> :sswitch_1dfc
        -0x75f653b4 -> :sswitch_1def
        -0x526f4ac4 -> :sswitch_1de2
        -0x4de6cfb2 -> :sswitch_1dd5
        -0x4378abac -> :sswitch_1dc9
        -0x42f2906e -> :sswitch_1dbc
        -0x308e1a98 -> :sswitch_1db0
        -0x29404601 -> :sswitch_1da4
        -0x2360eeb0 -> :sswitch_1d98
        -0xf8e19f3 -> :sswitch_1d8c
        0x130dedfc -> :sswitch_1d7f
        0x14014325 -> :sswitch_1d72
        0x16233ecf -> :sswitch_1d65
        0x1a458c22 -> :sswitch_1d58
        0x1e373fed -> :sswitch_1d4b
        0x21074337 -> :sswitch_1d3f
        0x22e592aa -> :sswitch_1d32
        0x2383ddea -> :sswitch_1d25
        0x2952fe03 -> :sswitch_1d19
        0x2d2b575b -> :sswitch_1d0c
        0x2dd7b5a9 -> :sswitch_1cff
        0x38dd3e65 -> :sswitch_1cf2
        0x3c119522 -> :sswitch_1ce5
        0x3c3b0102 -> :sswitch_1cd9
        0x3d4c4243 -> :sswitch_1ccc
        0x3d73f371 -> :sswitch_1cbf
        0x49cef874 -> :sswitch_1cb3
        0x767a17ac -> :sswitch_1ca6
    .end sparse-switch

    :pswitch_data_2786
    .packed-switch 0x0
        :pswitch_236e
        :pswitch_2350
        :pswitch_2331
        :pswitch_22fd
        :pswitch_22f6
        :pswitch_22c6
        :pswitch_229f
        :pswitch_2278
        :pswitch_224b
        :pswitch_222b
        :pswitch_2207
        :pswitch_21e9
        :pswitch_21c0
        :pswitch_2194
        :pswitch_2173
        :pswitch_2155
        :pswitch_2134
        :pswitch_20e2
        :pswitch_2091
        :pswitch_2025
        :pswitch_1fb3
        :pswitch_1f91
        :pswitch_1f6f
        :pswitch_1f3b
        :pswitch_1ee4
        :pswitch_1e8e
        :pswitch_1e52
        :pswitch_1e16
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 3587
    const/4 v0, 0x0

    return v0
.end method
