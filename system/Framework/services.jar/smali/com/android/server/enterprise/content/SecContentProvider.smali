.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final AUDIT:I = 0x2

.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DEX:I = 0x1b

.field private static final DLP:I = 0x19

.field private static final DOMAIN_FILTER:I = 0x1a

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field private static final RESTRICTION:I = 0x1e

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 144
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 145
    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DlpPolicy"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DomainFilterPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "DexPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "RestrictionPolicy"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 3031
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3032
    .local v0, "callerName":Ljava/lang/String;
    if-nez v0, :cond_f

    const-string v1, "fail to get caller name"

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method private restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 6
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "lRestrictionPolicy"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2872
    const/4 v0, 0x0

    .line 2873
    .local v0, "arg":Z
    if-eqz p1, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 2874
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2876
    :cond_10
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p3, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    .line 2878
    .local v1, "result":Z
    return v1
.end method

.method private restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "lRestrictionPolicy"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2860
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2862
    .local v0, "result":Z
    if-nez v0, :cond_21

    .line 2863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "POWER_SAVING_MODE_ALLOWED cursor return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecContentProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :cond_21
    return v0
.end method

.method private restrictionPolicyisUWBAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "lRestrictionPolicy"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2882
    invoke-virtual {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUWBAllowed()Z

    move-result v0

    .line 2883
    .local v0, "result":Z
    if-nez v0, :cond_1c

    .line 2884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UWB_ALLOWED cursor return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecContentProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_1c
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 3038
    const/4 v0, 0x0

    return v0
.end method

.method getArrayLength([Ljava/lang/String;)I
    .registers 6
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 3018
    if-nez p1, :cond_4

    .line 3019
    const/4 v0, 0x0

    return v0

    .line 3020
    :cond_4
    const/4 v0, 0x0

    .line 3022
    .local v0, "ret":I
    :try_start_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    .line 3026
    goto :goto_15

    .line 3023
    :catch_b
    move-exception v1

    .line 3024
    .local v1, "ignore":Ljava/lang/Exception;
    const-string v2, "SecContentProvider"

    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3025
    const/4 v0, 0x0

    .line 3027
    .end local v1    # "ignore":Ljava/lang/Exception;
    :goto_15
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 3044
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 2892
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2893
    .local v2, "callingUid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(), uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecContentProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "called from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p0

    invoke-direct {v5, v2}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_118

    const/4 v4, 0x6

    const-string v6, "API"

    if-eq v3, v4, :cond_e5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_ba

    const/16 v4, 0xe

    if-eq v3, v4, :cond_8b

    const/16 v4, 0x14

    if-eq v3, v4, :cond_5b

    goto/16 :goto_255

    .line 3001
    :cond_5b
    nop

    .line 3002
    const-string/jumbo v3, "security_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 3003
    .local v3, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v3, :cond_255

    .line 3004
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3005
    .local v4, "api":Ljava/lang/String;
    if-eqz v4, :cond_89

    const-string/jumbo v6, "setDodBannerVisibleStatus"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 3006
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3007
    const-string/jumbo v7, "isVisible"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 3006
    invoke-virtual {v3, v6, v7}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 3009
    .end local v4    # "api":Ljava/lang/String;
    :cond_89
    goto/16 :goto_255

    .line 2989
    .end local v3    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    :cond_8b
    nop

    .line 2990
    const-string/jumbo v3, "password_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2992
    .local v3, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v3, :cond_255

    .line 2993
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2994
    .restart local v4    # "api":Ljava/lang/String;
    if-eqz v4, :cond_b8

    const-string/jumbo v6, "setPwdChangeRequested"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 2995
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2996
    const-string v7, "flag"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2995
    invoke-virtual {v3, v6, v7}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 2998
    .end local v4    # "api":Ljava/lang/String;
    :cond_b8
    goto/16 :goto_255

    .line 2906
    .end local v3    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :cond_ba
    nop

    .line 2907
    const-string v3, "browser_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2909
    .local v3, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v3, :cond_255

    .line 2910
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2911
    .restart local v4    # "api":Ljava/lang/String;
    if-eqz v4, :cond_e3

    const-string/jumbo v6, "saveURLBlockedReport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 2912
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2913
    const-string/jumbo v7, "url"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2912
    invoke-virtual {v3, v6, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2915
    .end local v4    # "api":Ljava/lang/String;
    :cond_e3
    goto/16 :goto_255

    .line 2922
    .end local v3    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :cond_e5
    nop

    .line 2923
    const-string v3, "certificate_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 2925
    .local v3, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v3, :cond_255

    .line 2926
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2927
    .restart local v4    # "api":Ljava/lang/String;
    const-string v6, "fail"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 2928
    .local v6, "fail":Ljava/lang/Integer;
    if-eqz v4, :cond_116

    const-string/jumbo v7, "notifyCertificateFailure"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_116

    if-eqz v6, :cond_116

    .line 2929
    const-string/jumbo v7, "module"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2930
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 2929
    invoke-virtual {v3, v7, v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2932
    .end local v4    # "api":Ljava/lang/String;
    .end local v6    # "fail":Ljava/lang/Integer;
    :cond_116
    goto/16 :goto_255

    .line 2941
    .end local v3    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :cond_118
    nop

    .line 2942
    const-string v3, "auditlog"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2944
    .local v3, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v3, :cond_255

    .line 2945
    const-string/jumbo v4, "redactedMessage"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-string/jumbo v7, "message"

    const-string v8, "component"

    const-string/jumbo v9, "uid"

    const-string/jumbo v10, "outcome"

    const-string/jumbo v11, "group"

    const-string/jumbo v12, "severity"

    const-string/jumbo v13, "userid"

    if-eqz v6, :cond_190

    .line 2946
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_190

    .line 2947
    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v14, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2948
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2949
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2950
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 2951
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2952
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2953
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2954
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2955
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 2947
    move-object v6, v3

    move-object v7, v14

    move v8, v12

    move v9, v11

    move v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v14, v4

    move/from16 v15, v18

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_255

    .line 2956
    :cond_190
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 2957
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2958
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2959
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2960
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 2961
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2962
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2963
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2964
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2957
    move-object v6, v3

    move-object v7, v13

    move v8, v12

    move v9, v11

    move v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move-object v14, v4

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_255

    .line 2965
    :cond_1d5
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 2966
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2967
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2968
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2969
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 2970
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2971
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2972
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2973
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 2966
    move-object v6, v3

    move-object v7, v4

    move v8, v12

    move v9, v11

    move v11, v14

    move-object v12, v15

    move-object/from16 v13, v16

    move/from16 v14, v17

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_255

    .line 2975
    :cond_21e
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2976
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2977
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2978
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 2979
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2980
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2981
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2975
    move-object v6, v3

    move-object v7, v4

    move v8, v12

    move v9, v11

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    .line 3014
    .end local v3    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :cond_255
    :goto_255
    const/4 v3, 0x0

    return-object v3
.end method

.method public onCreate()Z
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 187
    .local v4, "callingUid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 194
    .local v5, "userId":I
    const/4 v6, 0x0

    .line 197
    .local v6, "showMsg":Z
    const/4 v7, 0x0

    .line 199
    .local v7, "mCursor":Landroid/database/MatrixCursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "query(), uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v9, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " selection = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SecContentProvider"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "called from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v8, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const-string/jumbo v14, "isBluetoothLogEnabled"

    const-string/jumbo v17, "restriction_policy"

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x7

    const/16 v21, 0x6

    const/16 v22, -0x1

    const/4 v15, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v8, :pswitch_data_294c

    :pswitch_6d
    goto/16 :goto_294a

    .line 209
    :pswitch_6f
    nop

    .line 210
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 211
    .local v8, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_298a

    :cond_81
    goto :goto_d4

    :sswitch_82
    const-string/jumbo v14, "isUWBAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    goto :goto_d6

    :sswitch_8c
    const-string/jumbo v14, "isSettingsChangesAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move/from16 v21, v15

    goto :goto_d6

    :sswitch_98
    const-string/jumbo v14, "isHeadPhoneEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move/from16 v21, v12

    goto :goto_d6

    :sswitch_a4
    const-string/jumbo v14, "isLocalContactStorageAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move/from16 v21, v13

    goto :goto_d6

    :sswitch_b0
    const-string/jumbo v14, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    move/from16 v21, v10

    goto :goto_d6

    :sswitch_bc
    const-string/jumbo v14, "isPowerOffAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    const/16 v21, 0x4

    goto :goto_d6

    :sswitch_c8
    const-string/jumbo v14, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    const/16 v21, 0x5

    goto :goto_d6

    :goto_d4
    move/from16 v21, v22

    :goto_d6
    packed-switch v21, :pswitch_data_29a8

    .line 251
    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v11

    .line 248
    :pswitch_e0
    invoke-direct {v0, v4, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisUWBAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v9

    .line 249
    .local v9, "result":Z
    goto/16 :goto_166

    .line 245
    .end local v9    # "result":Z
    :pswitch_e6
    invoke-direct {v0, v4, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v9

    .line 246
    .restart local v9    # "result":Z
    goto/16 :goto_166

    .line 241
    .end local v9    # "result":Z
    :pswitch_ec
    invoke-direct {v0, v3, v4, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v9

    .line 243
    .restart local v9    # "result":Z
    goto/16 :goto_166

    .line 230
    .end local v9    # "result":Z
    :pswitch_f2
    if-eqz v3, :cond_127

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_fb

    goto :goto_127

    .line 232
    :cond_fb
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_117

    .line 233
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    .line 234
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 233
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .restart local v9    # "result":Z
    goto :goto_166

    .line 236
    .end local v9    # "result":Z
    :cond_117
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    .line 237
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 236
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 239
    .restart local v9    # "result":Z
    goto :goto_166

    .line 231
    .end local v9    # "result":Z
    :cond_127
    :goto_127
    return-object v11

    .line 223
    :pswitch_128
    const/4 v9, 0x0

    .line 224
    .local v9, "arg":Z
    if-eqz v3, :cond_137

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_137

    .line 225
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 226
    :cond_137
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 228
    .local v10, "result":Z
    move v9, v10

    goto :goto_166

    .line 217
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_142
    if-eqz v3, :cond_15b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_14b

    goto :goto_15b

    .line 219
    :cond_14b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    .line 220
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 219
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 221
    .local v9, "result":Z
    goto :goto_166

    .line 218
    .end local v9    # "result":Z
    :cond_15b
    :goto_15b
    return-object v11

    .line 214
    :pswitch_15c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 215
    .restart local v9    # "result":Z
    nop

    .line 255
    :goto_166
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 258
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 259
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 258
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 261
    return-object v7

    .line 2708
    .end local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v9    # "result":Z
    :pswitch_17c
    nop

    .line 2709
    const-string v8, "dex_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/dex/DexPolicy;

    .line 2711
    .local v8, "lDexPolicy":Lcom/android/server/enterprise/dex/DexPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 2712
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_29ba

    :cond_190
    goto :goto_1c8

    :sswitch_191
    const-string/jumbo v9, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_190

    move v9, v15

    goto :goto_1ca

    :sswitch_19c
    const-string/jumbo v9, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_190

    move v9, v10

    goto :goto_1ca

    :sswitch_1a7
    const-string/jumbo v9, "getVirtualMacAddress"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_190

    const/4 v9, 0x4

    goto :goto_1ca

    :sswitch_1b2
    const-string/jumbo v9, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_190

    move v9, v13

    goto :goto_1ca

    :sswitch_1bd
    const-string/jumbo v9, "isDexDisabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_190

    move v9, v12

    goto :goto_1ca

    :goto_1c8
    move/from16 v9, v22

    :goto_1ca
    if-eqz v9, :cond_247

    if-eq v9, v12, :cond_22a

    if-eq v9, v10, :cond_20d

    if-eq v9, v15, :cond_1f0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_1d6

    .line 2772
    return-object v11

    .line 2761
    :cond_1d6
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v9

    .line 2763
    .local v9, "getVirtualAddressResult":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getVirtualMacAddress"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2767
    new-array v10, v12, [Ljava/lang/String;

    aput-object v9, v10, v13

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2770
    goto/16 :goto_264

    .line 2750
    .end local v9    # "getVirtualAddressResult":Ljava/lang/String;
    :cond_1f0
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v9

    .line 2752
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isVirtualMacAddressEnforced"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2756
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2757
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2756
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2759
    goto :goto_264

    .line 2738
    .end local v9    # "result":Z
    :cond_20d
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v9

    .line 2741
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isEthernetOnlyEnforced"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2745
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2746
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2745
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2748
    goto :goto_264

    .line 2726
    .end local v9    # "result":Z
    :cond_22a
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v9

    .line 2729
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isDexDisabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2733
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2734
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2733
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2736
    goto :goto_264

    .line 2714
    .end local v9    # "result":Z
    :cond_247
    invoke-virtual {v8}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v9

    .line 2717
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isScreenTimeoutChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2721
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2722
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2721
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2724
    nop

    .line 2775
    .end local v9    # "result":Z
    :goto_264
    return-object v7

    .line 2831
    .end local v8    # "lDexPolicy":Lcom/android/server/enterprise/dex/DexPolicy;
    :pswitch_265
    if-eqz v2, :cond_294a

    .line 2832
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v10, -0x1371088

    if-eq v8, v10, :cond_271

    :cond_270
    goto :goto_27c

    :cond_271
    const-string/jumbo v8, "getDefaultCaptivePortalUrl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_270

    move/from16 v22, v13

    :goto_27c
    if-eqz v22, :cond_27f

    goto :goto_2a9

    .line 2834
    :cond_27f
    const-string/jumbo v8, "getDefaultCaptivePortalUrl"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    nop

    .line 2836
    const-string v8, "firewall"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/firewall/Firewall;

    .line 2837
    .local v8, "lFirewall":Lcom/android/server/enterprise/firewall/Firewall;
    const/4 v9, 0x0

    .line 2838
    .local v9, "serverURL":Ljava/lang/String;
    if-eqz v8, :cond_295

    .line 2840
    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v9

    .line 2843
    :cond_295
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getDefaultCaptivePortalUrl"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2847
    new-array v10, v12, [Ljava/lang/String;

    aput-object v9, v10, v13

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2851
    .end local v8    # "lFirewall":Lcom/android/server/enterprise/firewall/Firewall;
    .end local v9    # "serverURL":Ljava/lang/String;
    :goto_2a9
    return-object v7

    .line 2664
    :pswitch_2aa
    nop

    .line 2665
    const-string v8, "date_time_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 2667
    .local v8, "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 2668
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x57099b48

    if-eq v9, v10, :cond_2d1

    const v10, 0x333ea7e2

    if-eq v9, v10, :cond_2c6

    :cond_2c5
    goto :goto_2dc

    :cond_2c6
    const-string/jumbo v9, "getAutomaticTime"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c5

    move v9, v12

    goto :goto_2de

    :cond_2d1
    const-string/jumbo v9, "isDateTimeChangeEnalbed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c5

    move v9, v13

    goto :goto_2de

    :goto_2dc
    move/from16 v9, v22

    :goto_2de
    if-eqz v9, :cond_305

    if-eq v9, v12, :cond_2e3

    .line 2701
    return-object v11

    .line 2687
    :cond_2e3
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2691
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getAutomaticTime"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2696
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2697
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2696
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2699
    goto :goto_327

    .line 2671
    .end local v9    # "result":Z
    :cond_305
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2675
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isDateTimeChangeEnalbed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2680
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2681
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2680
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2683
    nop

    .line 2704
    :goto_327
    return-object v7

    .line 2460
    .end local v8    # "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    .end local v9    # "result":Z
    :pswitch_328
    nop

    .line 2461
    const-string/jumbo v8, "smartcard_browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .line 2463
    .local v8, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v8, :cond_294a

    .line 2464
    if-eqz v2, :cond_361

    const-string/jumbo v9, "isAuthenticationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_361

    .line 2466
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2467
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2470
    .local v9, "bIsAuthenticationEnabled":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isAuthenticationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2474
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2475
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2474
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2479
    return-object v7

    .line 2481
    .end local v9    # "bIsAuthenticationEnabled":Z
    :cond_361
    if-eqz v2, :cond_294a

    .line 2482
    const-string/jumbo v9, "getClientCertificateAlias"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_294a

    .line 2484
    if-eqz v3, :cond_39b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_375

    goto :goto_39b

    .line 2487
    :cond_375
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    aget-object v11, v3, v12

    .line 2489
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2488
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 2492
    .local v9, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getClientCertificateAlias"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2497
    new-array v10, v12, [Ljava/lang/String;

    aput-object v9, v10, v13

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2502
    return-object v7

    .line 2485
    .end local v9    # "sGetClientCertificateAlias":Ljava/lang/String;
    :cond_39b
    :goto_39b
    return-object v11

    .line 2507
    .end local v8    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    :pswitch_39c
    nop

    .line 2508
    const-string/jumbo v8, "security_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2510
    .local v8, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 2511
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v14, -0x6e1bb3c9

    if-eq v10, v14, :cond_3c4

    const v14, 0x741c2b00

    if-eq v10, v14, :cond_3b9

    :cond_3b8
    goto :goto_3cf

    :cond_3b9
    const-string/jumbo v10, "getCredentialStorageStatus"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b8

    move v10, v12

    goto :goto_3d1

    :cond_3c4
    const-string/jumbo v10, "isDodBannerVisible"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b8

    move v10, v13

    goto :goto_3d1

    :goto_3cf
    move/from16 v10, v22

    :goto_3d1
    if-eqz v10, :cond_40a

    if-eq v10, v12, :cond_3d6

    .line 2545
    return-object v11

    .line 2530
    :cond_3d6
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 2534
    .local v10, "res":I
    new-instance v11, Landroid/database/MatrixCursor;

    new-array v14, v12, [Ljava/lang/String;

    aput-object v2, v14, v13

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 2538
    new-array v11, v12, [Ljava/lang/Integer;

    .line 2539
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    .line 2538
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCredentialStorageStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    goto :goto_42c

    .line 2515
    .end local v10    # "res":I
    :cond_40a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2518
    .local v9, "dodbanner":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isDodBannerVisible"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2522
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2523
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2522
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2526
    nop

    .line 2548
    .end local v9    # "dodbanner":Z
    :goto_42c
    return-object v7

    .line 2305
    .end local v8    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    :pswitch_42d
    nop

    .line 2306
    const-string/jumbo v8, "roaming_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 2307
    .local v8, "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 2308
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_29d0

    :cond_442
    goto :goto_46f

    :sswitch_443
    const-string/jumbo v9, "isRoamingPushEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_442

    move v9, v12

    goto :goto_471

    :sswitch_44e
    const-string/jumbo v9, "isRoamingDataEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_442

    move v9, v10

    goto :goto_471

    :sswitch_459
    const-string/jumbo v9, "isRoamingSyncEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_442

    move v9, v13

    goto :goto_471

    :sswitch_464
    const-string/jumbo v9, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_442

    move v9, v15

    goto :goto_471

    :goto_46f
    move/from16 v9, v22

    :goto_471
    if-eqz v9, :cond_4e0

    if-eq v9, v12, :cond_4be

    if-eq v9, v10, :cond_49c

    if-eq v9, v15, :cond_47a

    .line 2362
    return-object v11

    .line 2349
    :cond_47a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2352
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isRoamingVoiceCallsEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2356
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2357
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2356
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2360
    goto :goto_502

    .line 2336
    .end local v9    # "result":Z
    :cond_49c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2339
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isRoamingDataEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2343
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2344
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2343
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2347
    goto :goto_502

    .line 2323
    .end local v9    # "result":Z
    :cond_4be
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2326
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isRoamingPushEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2330
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2331
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2330
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2334
    goto :goto_502

    .line 2310
    .end local v9    # "result":Z
    :cond_4e0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2313
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isRoamingSyncEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2317
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2318
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 2317
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2321
    nop

    .line 2365
    :goto_502
    return-object v7

    .line 1103
    .end local v8    # "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .end local v9    # "result":Z
    :pswitch_503
    nop

    .line 1104
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1105
    .local v8, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 1106
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_29e2

    :cond_515
    goto/16 :goto_5f1

    :sswitch_517
    const-string/jumbo v9, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0xd

    goto/16 :goto_5f3

    :sswitch_524
    const-string/jumbo v9, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move v10, v13

    goto/16 :goto_5f3

    :sswitch_530
    const-string/jumbo v9, "isUsbTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move v10, v15

    goto/16 :goto_5f3

    :sswitch_53c
    const-string/jumbo v9, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move v10, v12

    goto/16 :goto_5f3

    :sswitch_548
    const-string/jumbo v9, "isWifiTetheringEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move/from16 v10, v18

    goto/16 :goto_5f3

    :sswitch_555
    const-string/jumbo v9, "getAllowedFOTAInfo"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0x10

    goto/16 :goto_5f3

    :sswitch_562
    const-string/jumbo v9, "isGearPolicyEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0xf

    goto/16 :goto_5f3

    :sswitch_56f
    const-string/jumbo v9, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/4 v10, 0x5

    goto/16 :goto_5f3

    :sswitch_57b
    const-string/jumbo v9, "isFotaVersionAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0xe

    goto/16 :goto_5f3

    :sswitch_588
    const-string/jumbo v9, "isSDCardWriteAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0xb

    goto :goto_5f3

    :sswitch_594
    const-string/jumbo v9, "isWifiDirectAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move/from16 v10, v19

    goto :goto_5f3

    :sswitch_5a0
    const-string/jumbo v9, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/4 v10, 0x4

    goto :goto_5f3

    :sswitch_5ab
    const-string/jumbo v9, "isVpnAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move/from16 v10, v20

    goto :goto_5f3

    :sswitch_5b7
    const-string/jumbo v9, "isWifiEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0xc

    goto :goto_5f3

    :sswitch_5c3
    const-string/jumbo v9, "isVideoRecordAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    move/from16 v10, v21

    goto :goto_5f3

    :sswitch_5cf
    const-string/jumbo v9, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0x8

    goto :goto_5f3

    :sswitch_5db
    const-string/jumbo v9, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    goto :goto_5f3

    :sswitch_5e5
    const-string/jumbo v9, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_515

    const/16 v10, 0x11

    goto :goto_5f3

    :goto_5f1
    move/from16 v10, v22

    :goto_5f3
    packed-switch v10, :pswitch_data_2a2c

    .line 1364
    return-object v11

    .line 1354
    :pswitch_5f7
    invoke-direct {v0, v4, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v9

    .line 1356
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1359
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1360
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1359
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1362
    goto/16 :goto_8eb

    .line 1340
    .end local v9    # "result":Z
    :pswitch_612
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v9

    .line 1341
    .local v9, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getAllowedFOTAInfo"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1345
    if-eqz v9, :cond_8eb

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8eb

    .line 1346
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_634
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_648

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1347
    .local v11, "info":Ljava/lang/String;
    new-array v14, v12, [Ljava/lang/String;

    aput-object v11, v14, v13

    invoke-virtual {v7, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1350
    .end local v11    # "info":Ljava/lang/String;
    goto :goto_634

    :cond_648
    goto/16 :goto_8eb

    .line 1330
    .end local v9    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_64a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    .line 1332
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1335
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1336
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1335
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1338
    goto/16 :goto_8eb

    .line 1317
    .end local v9    # "result":Z
    :pswitch_66a
    const/4 v9, 0x1

    .line 1320
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isFotaVersionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1324
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1325
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1324
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1327
    goto/16 :goto_8eb

    .line 1300
    .end local v9    # "result":Z
    :pswitch_685
    const/4 v6, 0x0

    .line 1301
    if-nez v3, :cond_68e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_694

    .line 1302
    :cond_68e
    aget-object v9, v3, v13

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1305
    :cond_694
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v9

    .line 1307
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1310
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1311
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1310
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1313
    goto/16 :goto_8eb

    .line 1279
    .end local v9    # "result":Z
    :pswitch_6af
    nop

    .line 1280
    const-string/jumbo v9, "wifi_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1281
    .local v9, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    const/4 v6, 0x0

    .line 1282
    if-nez v3, :cond_6c2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6c8

    .line 1283
    :cond_6c2
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1285
    :cond_6c8
    if-eqz v9, :cond_6ed

    .line 1286
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v9, v10, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1288
    .local v10, "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isWifiEnabled"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1291
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1292
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v13

    .line 1291
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_8eb

    .line 1296
    .end local v10    # "result":Z
    :cond_6ed
    return-object v11

    .line 1267
    .end local v9    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_6ee
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1271
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSDCardWriteAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1274
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1275
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1274
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1277
    goto/16 :goto_8eb

    .line 1254
    .end local v9    # "result":Z
    :pswitch_711
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1258
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isWifiTetheringEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1261
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1262
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1261
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1265
    goto/16 :goto_8eb

    .line 1238
    .end local v9    # "result":Z
    :pswitch_734
    const/4 v9, 0x0

    .line 1239
    .local v9, "arg":Z
    if-eqz v3, :cond_743

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_743

    .line 1240
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1241
    :cond_743
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1245
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isWifiDirectAllowed"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1248
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1249
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v13

    .line 1248
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1252
    goto/16 :goto_8eb

    .line 1222
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_766
    const/4 v9, 0x0

    .line 1223
    .restart local v9    # "arg":Z
    if-eqz v3, :cond_775

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_775

    .line 1224
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1225
    :cond_775
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1229
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isWallpaperChangeAllowed"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1232
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1233
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v13

    .line 1232
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1236
    goto/16 :goto_8eb

    .line 1209
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_798
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1213
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isVpnAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1216
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1217
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1216
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1220
    goto/16 :goto_8eb

    .line 1193
    .end local v9    # "result":Z
    :pswitch_7bb
    const/4 v9, 0x0

    .line 1194
    .local v9, "arg":Z
    if-eqz v3, :cond_7ca

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_7ca

    .line 1195
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1196
    :cond_7ca
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1200
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isVideoRecordAllowed"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1203
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1204
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v13

    .line 1203
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1207
    goto/16 :goto_8eb

    .line 1180
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_7ed
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1184
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUseSecureKeypadEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1187
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1188
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1187
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1191
    goto/16 :goto_8eb

    .line 1167
    .end local v9    # "result":Z
    :pswitch_810
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1171
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUserMobileDataLimitAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1174
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1175
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1174
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1178
    goto/16 :goto_8eb

    .line 1154
    .end local v9    # "result":Z
    :pswitch_833
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1158
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUsbTetheringEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1161
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1162
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1161
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1165
    goto/16 :goto_8eb

    .line 1139
    .end local v9    # "result":Z
    :pswitch_856
    if-eqz v3, :cond_887

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_85f

    goto :goto_887

    .line 1141
    :cond_85f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    .line 1142
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1141
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 1145
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUsbMediaPlayerAvailable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1148
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1149
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1148
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1152
    goto :goto_8eb

    .line 1140
    .end local v9    # "result":Z
    :cond_887
    :goto_887
    return-object v11

    .line 1124
    :pswitch_888
    if-eqz v3, :cond_8b9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_891

    goto :goto_8b9

    .line 1126
    :cond_891
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    .line 1127
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1126
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 1130
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUsbMassStorageEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1133
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1134
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1133
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1137
    goto :goto_8eb

    .line 1125
    .end local v9    # "result":Z
    :cond_8b9
    :goto_8b9
    return-object v11

    .line 1108
    :pswitch_8ba
    const/4 v9, 0x0

    .line 1109
    .local v9, "arg":Z
    if-eqz v3, :cond_8c9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8c9

    .line 1110
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1111
    :cond_8c9
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1115
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isUsbHostStorageAllowed"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1118
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1119
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v13

    .line 1118
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1122
    nop

    .line 1367
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :cond_8eb
    :goto_8eb
    return-object v7

    .line 825
    .end local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :pswitch_8ec
    nop

    .line 826
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 827
    .restart local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 828
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2a54

    :cond_8fe
    goto/16 :goto_9e3

    :sswitch_900
    const-string/jumbo v14, "isSVoiceAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0x10

    goto/16 :goto_9e5

    :sswitch_90d
    const-string/jumbo v14, "isScreenCaptureEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0x8

    goto/16 :goto_9e5

    :sswitch_91a
    const-string/jumbo v14, "isSettingsChangesAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v13

    goto/16 :goto_9e5

    :sswitch_927
    const-string/jumbo v14, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0xe

    goto/16 :goto_9e5

    :sswitch_934
    const-string/jumbo v14, "isSDCardMoveAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v18

    goto/16 :goto_9e5

    :sswitch_941
    const-string/jumbo v14, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v14, 0x11

    move/from16 v23, v14

    goto/16 :goto_9e5

    :sswitch_950
    const-string/jumbo v14, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0xc

    goto/16 :goto_9e5

    :sswitch_95d
    const-string/jumbo v14, "isSafeModeAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v21

    goto/16 :goto_9e5

    :sswitch_96a
    const-string/jumbo v14, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v15

    goto/16 :goto_9e5

    :sswitch_977
    const-string/jumbo v14, "isSmartClipModeAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0xd

    goto :goto_9e5

    :sswitch_983
    const-string/jumbo v14, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v12

    goto :goto_9e5

    :sswitch_98f
    const-string/jumbo v14, "isSdCardEnabled"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v19

    goto :goto_9e5

    :sswitch_99b
    const-string/jumbo v14, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0x4

    goto :goto_9e5

    :sswitch_9a7
    const-string/jumbo v14, "isStopSystemAppAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0xf

    goto :goto_9e5

    :sswitch_9b3
    const-string/jumbo v14, "isPowerOffAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0x5

    goto :goto_9e5

    :sswitch_9bf
    const-string/jumbo v14, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    const/16 v23, 0xb

    goto :goto_9e5

    :sswitch_9cb
    const-string/jumbo v14, "isSBeamAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v20

    goto :goto_9e5

    :sswitch_9d7
    const-string/jumbo v14, "isShareListAllowed"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8fe

    move/from16 v23, v10

    goto :goto_9e5

    :goto_9e3
    move/from16 v23, v22

    :goto_9e5
    packed-switch v23, :pswitch_data_2a9e

    .line 1096
    return-object v11

    .line 1084
    :pswitch_9e9
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1087
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUsbDebuggingEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1090
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1091
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1090
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1094
    goto/16 :goto_d88

    .line 1063
    .end local v9    # "result":Z
    :pswitch_a0c
    const/4 v11, 0x0

    .line 1064
    .local v11, "arg":Z
    move v14, v4

    .line 1065
    .local v14, "uid":I
    if-eqz v3, :cond_a1d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v15

    if-ne v15, v12, :cond_a1d

    .line 1066
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_a31

    .line 1068
    :cond_a1d
    if-eqz v3, :cond_a31

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_a31

    .line 1069
    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1070
    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1072
    :cond_a31
    :goto_a31
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v14}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 1073
    .restart local v10    # "result":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isSVoiceAllowed result = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " uid = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isSVoiceAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1078
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1079
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v9, v13

    .line 1078
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1082
    move v9, v10

    goto/16 :goto_d88

    .line 1051
    .end local v10    # "result":Z
    .end local v11    # "arg":Z
    .end local v14    # "uid":I
    :pswitch_a73
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1054
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isStopSystemAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1057
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1058
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1057
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1061
    goto/16 :goto_d88

    .line 1036
    .end local v9    # "result":Z
    :pswitch_a97
    const/4 v9, 0x0

    .line 1037
    .local v9, "arg":Z
    if-eqz v3, :cond_aa7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_aa7

    .line 1038
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1039
    :cond_aa7
    invoke-virtual {v8, v9, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v10

    .line 1042
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isStatusBarExpansionallowedAsUser"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1045
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1046
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 1045
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1049
    move v9, v10

    goto/16 :goto_d88

    .line 1021
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_ac7
    const/4 v9, 0x0

    .line 1022
    .restart local v9    # "arg":Z
    if-eqz v3, :cond_ad7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_ad7

    .line 1023
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1024
    :cond_ad7
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v10

    .line 1027
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isSmartClipModeAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 1030
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 1031
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 1030
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1034
    move v9, v10

    goto/16 :goto_d88

    .line 1007
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_af7
    if-eqz v3, :cond_b2b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_b00

    goto :goto_b2b

    .line 1009
    :cond_b00
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 1010
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1009
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 1012
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isIrisCameraEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1015
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1016
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1015
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1019
    goto/16 :goto_d88

    .line 1008
    .end local v9    # "result":Z
    :cond_b2b
    :goto_b2b
    return-object v11

    .line 987
    :pswitch_b2c
    const/4 v9, 0x0

    .line 988
    .local v9, "arg":Z
    move v11, v5

    .line 989
    .local v11, "user":I
    if-eqz v3, :cond_b3d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_b3d

    .line 990
    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 992
    :cond_b3d
    if-eqz v3, :cond_b4b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ne v13, v10, :cond_b4b

    .line 993
    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 995
    :cond_b4b
    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v10

    .line 998
    .restart local v10    # "result":Z
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isScreenPinningAllowedAsUser"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v13

    .line 1001
    new-array v12, v12, [Ljava/lang/Boolean;

    .line 1002
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 1001
    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1005
    move v9, v10

    goto/16 :goto_d88

    .line 972
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    .end local v11    # "user":I
    :pswitch_b6b
    if-eqz v3, :cond_b9f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_b74

    goto :goto_b9f

    .line 974
    :cond_b74
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 975
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 974
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 978
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSDCardMoveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 981
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 982
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 981
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 985
    goto/16 :goto_d88

    .line 973
    .end local v9    # "result":Z
    :cond_b9f
    :goto_b9f
    return-object v11

    .line 960
    :pswitch_ba0
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 963
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSdCardEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 966
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 967
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 966
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 970
    goto/16 :goto_d88

    .line 945
    .end local v9    # "result":Z
    :pswitch_bc4
    if-eqz v3, :cond_bf8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_bcd

    goto :goto_bf8

    .line 947
    :cond_bcd
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 948
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 947
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 951
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isScreenCaptureEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 954
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 955
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 954
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 958
    goto/16 :goto_d88

    .line 946
    .end local v9    # "result":Z
    :cond_bf8
    :goto_bf8
    return-object v11

    .line 930
    :pswitch_bf9
    const/4 v9, 0x0

    .line 931
    .local v9, "arg":Z
    if-eqz v3, :cond_c09

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_c09

    .line 932
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 933
    :cond_c09
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 936
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isSBeamAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 939
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 940
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 939
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 943
    move v9, v10

    goto/16 :goto_d88

    .line 918
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_c2e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 921
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSafeModeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 924
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 925
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 924
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 928
    goto/16 :goto_d88

    .line 905
    .end local v9    # "result":Z
    :pswitch_c52
    invoke-direct {v0, v3, v4, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v9

    .line 909
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 912
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 913
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    .line 912
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 916
    goto/16 :goto_d88

    .line 892
    .end local v9    # "result":Z
    :pswitch_c6d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 895
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isOTAUpgradeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 898
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 899
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 898
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 903
    return-object v7

    .line 881
    .end local v9    # "result":Z
    :pswitch_c90
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 883
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isOdeTrustedBootVerificationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 886
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 887
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 886
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 890
    goto/16 :goto_d88

    .line 864
    .end local v9    # "result":Z
    :pswitch_cb4
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_cca

    .line 865
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .restart local v9    # "result":Z
    goto :goto_cd3

    .line 867
    .end local v9    # "result":Z
    :cond_cca
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 871
    .restart local v9    # "result":Z
    :goto_cd3
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isShareListAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 874
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 875
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 874
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 878
    goto/16 :goto_d88

    .line 851
    .end local v9    # "result":Z
    :pswitch_cee
    if-eqz v3, :cond_d37

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v10, :cond_cf7

    goto :goto_d37

    .line 853
    :cond_cf7
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v10

    .line 854
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 859
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 860
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 859
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 862
    move v9, v10

    goto :goto_d88

    .line 852
    .end local v10    # "result":Z
    :cond_d37
    :goto_d37
    return-object v11

    .line 830
    :pswitch_d38
    if-eqz v3, :cond_d89

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_d41

    goto :goto_d89

    .line 832
    :cond_d41
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_d5e

    .line 833
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 834
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 833
    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .restart local v9    # "result":Z
    goto :goto_d6e

    .line 837
    .end local v9    # "result":Z
    :cond_d5e
    const/4 v10, 0x0

    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v10

    .line 838
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 837
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 842
    .restart local v9    # "result":Z
    :goto_d6e
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isSettingsChangesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 845
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 846
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 845
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 849
    nop

    .line 1099
    :goto_d88
    return-object v7

    .line 831
    .end local v9    # "result":Z
    :cond_d89
    :goto_d89
    return-object v11

    .line 543
    .end local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :pswitch_d8a
    nop

    .line 544
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 545
    .restart local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 546
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2ac6

    :cond_d9c
    goto/16 :goto_e73

    :sswitch_d9e
    const-string/jumbo v13, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v21

    goto/16 :goto_e75

    :sswitch_dab
    const-string/jumbo v13, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v10

    goto/16 :goto_e75

    :sswitch_db8
    const-string/jumbo v13, "isNFCEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0xd

    goto/16 :goto_e75

    :sswitch_dc5
    const-string/jumbo v13, "isMockLocationEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0xb

    goto/16 :goto_e75

    :sswitch_dd2
    const-string/jumbo v13, "isHeadPhoneEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0x4

    goto/16 :goto_e75

    :sswitch_ddf
    const-string/jumbo v13, "isHomeKeyEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0x5

    goto/16 :goto_e75

    :sswitch_dec
    const-string/jumbo v13, "isNonMarketAppAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0xf

    goto/16 :goto_e75

    :sswitch_df9
    const-string/jumbo v13, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v12

    goto/16 :goto_e75

    :sswitch_e06
    const-string/jumbo v13, "isLockScreenViewAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0x8

    goto :goto_e75

    :sswitch_e12
    const-string/jumbo v13, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0x0

    goto :goto_e75

    :sswitch_e1e
    const-string/jumbo v13, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0xc

    goto :goto_e75

    :sswitch_e2a
    const-string/jumbo v13, "isLockScreenEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v20

    goto :goto_e75

    :sswitch_e36
    const-string/jumbo v13, "isMicrophoneEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v19

    goto :goto_e75

    :sswitch_e42
    const-string/jumbo v13, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v18

    goto :goto_e75

    :sswitch_e4e
    const-string/jumbo v13, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    move/from16 v23, v15

    goto :goto_e75

    :sswitch_e5a
    const-string/jumbo v13, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0x10

    goto :goto_e75

    :sswitch_e66
    const-string/jumbo v13, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d9c

    const/16 v23, 0xe

    goto/16 :goto_e75

    :goto_e73
    move/from16 v23, v22

    :goto_e75
    packed-switch v23, :pswitch_data_2b0c

    .line 817
    const-string/jumbo v10, "return null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v11

    .line 805
    :pswitch_e7f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 808
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isNonTrustedAppInstallBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 811
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 812
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 811
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 815
    goto/16 :goto_12c1

    .line 788
    .end local v9    # "result":Z
    :pswitch_ea3
    const/4 v13, 0x0

    if-eqz v3, :cond_eb6

    .line 789
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    aget-object v10, v3, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .restart local v9    # "result":Z
    goto :goto_ebf

    .line 792
    .end local v9    # "result":Z
    :cond_eb6
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 796
    .restart local v9    # "result":Z
    :goto_ebf
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isNonMarketAppAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 799
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 800
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 799
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 803
    goto/16 :goto_12c1

    .line 771
    .end local v9    # "result":Z
    :pswitch_eda
    if-eqz v3, :cond_eed

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-ge v9, v12, :cond_ee4

    goto/16 :goto_eed

    .line 774
    :cond_ee4
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_eee

    .line 772
    :cond_eed
    :goto_eed
    const/4 v6, 0x0

    .line 776
    :goto_eee
    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v9

    .line 779
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isNFCEnabledWithMsg"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 782
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 783
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 782
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 786
    goto/16 :goto_12c1

    .line 759
    .end local v9    # "result":Z
    :pswitch_f0d
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v9

    .line 762
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isNFCEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 765
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 766
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 765
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 769
    goto/16 :goto_12c1

    .line 744
    .end local v9    # "result":Z
    :pswitch_f2c
    if-eqz v3, :cond_f60

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_f35

    goto :goto_f60

    .line 746
    :cond_f35
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 747
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 746
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 750
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isNewAdminInstallationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 753
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 754
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 753
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 757
    goto/16 :goto_12c1

    .line 745
    .end local v9    # "result":Z
    :cond_f60
    :goto_f60
    return-object v11

    .line 725
    :pswitch_f61
    if-nez v3, :cond_f81

    .line 726
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 727
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callingUid = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fab

    .line 730
    .end local v10    # "result":Z
    :cond_f81
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v10, v13}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 731
    .restart local v10    # "result":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "callingUid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_fab
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isMockLocationEnabled return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isMockLocationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 738
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 739
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 738
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 742
    move v9, v10

    goto/16 :goto_12c1

    .line 709
    .end local v10    # "result":Z
    :pswitch_fdc
    if-eqz v3, :cond_1027

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v10, :cond_fe5

    goto :goto_1027

    .line 711
    :cond_fe5
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v10

    .line 713
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isMicrophoneEnabledAsUser return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 718
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 719
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 718
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 722
    move v9, v10

    goto/16 :goto_12c1

    .line 710
    .end local v10    # "result":Z
    :cond_1027
    :goto_1027
    return-object v11

    .line 688
    :pswitch_1028
    if-eqz v3, :cond_1090

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v12, :cond_1031

    goto :goto_1090

    .line 690
    :cond_1031
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_104f

    .line 691
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v12

    .line 692
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 691
    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .restart local v10    # "result":Z
    goto/16 :goto_105f

    .line 695
    .end local v10    # "result":Z
    :cond_104f
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v13, v3, v11

    .line 696
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 695
    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 698
    .restart local v10    # "result":Z
    :goto_105f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isMicrophoneEnabled return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isMicrophoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 703
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 704
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 703
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 707
    move v9, v10

    goto/16 :goto_12c1

    .line 689
    .end local v10    # "result":Z
    :cond_1090
    :goto_1090
    return-object v11

    .line 667
    :pswitch_1091
    if-eqz v3, :cond_10f9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v12, :cond_109a

    goto :goto_10f9

    .line 669
    :cond_109a
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_10b8

    .line 670
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v11, v3, v12

    .line 671
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 670
    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v10

    .restart local v10    # "result":Z
    goto/16 :goto_10c8

    .line 674
    .end local v10    # "result":Z
    :cond_10b8
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v13, v3, v11

    .line 675
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 674
    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v10

    .line 677
    .restart local v10    # "result":Z
    :goto_10c8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isLockScreenViewAllowed return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isLockScreenViewAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 682
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 683
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 682
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 686
    move v9, v10

    goto/16 :goto_12c1

    .line 668
    .end local v10    # "result":Z
    :cond_10f9
    :goto_10f9
    return-object v11

    .line 652
    :pswitch_10fa
    if-eqz v3, :cond_112e

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1103

    goto :goto_112e

    .line 654
    :cond_1103
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 655
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 654
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 658
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isLockScreenEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 661
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 662
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 661
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 665
    goto/16 :goto_12c1

    .line 653
    .end local v9    # "result":Z
    :cond_112e
    :goto_112e
    return-object v11

    .line 634
    :pswitch_112f
    if-nez v3, :cond_1159

    .line 635
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 636
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " callingUid : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_118e

    .line 639
    .end local v10    # "result":Z
    :cond_1159
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 640
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " userid : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-object v14, v3, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 643
    .end local v10    # "result":Z
    .restart local v9    # "result":Z
    :goto_118e
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 646
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 647
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 646
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 650
    goto/16 :goto_12c1

    .line 619
    .end local v9    # "result":Z
    :pswitch_11a9
    const/4 v9, 0x0

    .line 620
    .local v9, "arg":Z
    if-eqz v3, :cond_11b9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_11b9

    .line 621
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 622
    :cond_11b9
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 625
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isHomeKeyEnabled"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 628
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 629
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 628
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 632
    move v9, v10

    goto/16 :goto_12c1

    .line 604
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_11de
    if-eqz v3, :cond_1212

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_11e7

    goto :goto_1212

    .line 606
    :cond_11e7
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 607
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 606
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 610
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isHeadPhoneEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 613
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 614
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 613
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 617
    goto/16 :goto_12c1

    .line 605
    .end local v9    # "result":Z
    :cond_1212
    :goto_1212
    return-object v11

    .line 592
    :pswitch_1213
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 595
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isGoogleCrashReportedAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 598
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 599
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 598
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 602
    goto/16 :goto_12c1

    .line 580
    .end local v9    # "result":Z
    :pswitch_1237
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 583
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 586
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 587
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 586
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 590
    goto :goto_12c1

    .line 564
    .end local v9    # "result":Z
    :pswitch_125a
    if-eqz v3, :cond_128d

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1263

    goto :goto_128d

    .line 567
    :cond_1263
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 568
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 567
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 571
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isFirmwareRecoveryAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 574
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 575
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 574
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 578
    goto :goto_12c1

    .line 565
    .end local v9    # "result":Z
    :cond_128d
    :goto_128d
    return-object v11

    .line 548
    :pswitch_128e
    if-eqz v3, :cond_12c2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1297

    goto :goto_12c2

    .line 551
    :cond_1297
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 552
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 551
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 555
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 558
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 559
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 558
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 562
    nop

    .line 821
    :goto_12c1
    return-object v7

    .line 549
    .end local v9    # "result":Z
    :cond_12c2
    :goto_12c2
    return-object v11

    .line 265
    .end local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :pswitch_12c3
    nop

    .line 266
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 267
    .restart local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 268
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2b32

    :cond_12d5
    goto/16 :goto_13c3

    :sswitch_12d7
    const-string v13, "checkPackageSource"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/4 v13, 0x0

    goto/16 :goto_13c5

    :sswitch_12e2
    const-string/jumbo v13, "isAirplaneModeAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move v13, v10

    goto/16 :goto_13c5

    :sswitch_12ee
    const-string/jumbo v13, "isClipboardShareAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0xe

    goto/16 :goto_13c5

    :sswitch_12fb
    const-string/jumbo v13, "isFastEncryptionAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0x11

    goto/16 :goto_13c5

    :sswitch_1308
    const-string/jumbo v13, "isFactoryResetAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0x10

    goto/16 :goto_13c5

    :sswitch_1315
    const-string/jumbo v13, "isActivationLockAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move v13, v12

    goto/16 :goto_13c5

    :sswitch_1321
    const-string/jumbo v13, "isAndroidBeamAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move v13, v15

    goto/16 :goto_13c5

    :sswitch_132d
    const-string/jumbo v13, "isDeveloperModeAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0xf

    goto/16 :goto_13c5

    :sswitch_133a
    const-string/jumbo v13, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0xd

    goto/16 :goto_13c5

    :sswitch_1347
    const-string/jumbo v13, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move/from16 v13, v21

    goto/16 :goto_13c5

    :sswitch_1354
    const-string/jumbo v13, "isCameraEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move/from16 v13, v19

    goto :goto_13c5

    :sswitch_1360
    const-string/jumbo v13, "isBackgroundDataEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/4 v13, 0x5

    goto :goto_13c5

    :sswitch_136b
    const-string/jumbo v13, "isBackupAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move/from16 v13, v20

    goto :goto_13c5

    :sswitch_1377
    const-string/jumbo v13, "isAudioRecordAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/4 v13, 0x4

    goto :goto_13c5

    :sswitch_1382
    const-string/jumbo v13, "isCellularDataAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    move/from16 v13, v18

    goto/16 :goto_13c5

    :sswitch_138f
    const-string/jumbo v13, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0xc

    goto/16 :goto_13c5

    :sswitch_139c
    const-string/jumbo v13, "isClipboardAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0xb

    goto/16 :goto_13c5

    :sswitch_13a9
    const-string/jumbo v13, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0x8

    goto/16 :goto_13c5

    :sswitch_13b6
    const-string/jumbo v13, "isDataSavingAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12d5

    const/16 v13, 0x12

    goto/16 :goto_13c5

    :goto_13c3
    move/from16 v13, v22

    :goto_13c5
    packed-switch v13, :pswitch_data_2b80

    .line 536
    return-object v11

    .line 524
    :pswitch_13c9
    invoke-virtual {v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v9

    .line 527
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isDataSavingAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 530
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 531
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 530
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 534
    goto/16 :goto_1761

    .line 509
    .end local v9    # "result":Z
    :pswitch_13e8
    if-eqz v3, :cond_13f1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-ge v10, v12, :cond_13f1

    .line 510
    return-object v11

    .line 512
    :cond_13f1
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 513
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isFastEncryptionAllowed return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isFastEncryptionAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 518
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 519
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 518
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 522
    move v9, v10

    goto/16 :goto_1761

    .line 497
    .end local v10    # "result":Z
    :pswitch_1432
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 500
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isFactoryResetAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 503
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 504
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 503
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 507
    goto/16 :goto_1761

    .line 481
    .end local v9    # "result":Z
    :pswitch_1456
    const/4 v9, 0x0

    .line 482
    .local v9, "arg":Z
    if-eqz v3, :cond_1466

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1466

    .line 483
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 484
    :cond_1466
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 487
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isDeveloperModeAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 490
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 491
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 490
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 495
    return-object v7

    .line 469
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_1489
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 472
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 475
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 476
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 475
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 479
    goto/16 :goto_1761

    .line 455
    .end local v9    # "result":Z
    :pswitch_14ad
    if-eqz v3, :cond_14dd

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_14b7

    goto/16 :goto_14dd

    .line 457
    :cond_14b7
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v9

    .line 460
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isClipboardShareAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 463
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 464
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 463
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 467
    goto/16 :goto_1761

    .line 456
    .end local v9    # "result":Z
    :cond_14dd
    :goto_14dd
    return-object v11

    .line 440
    :pswitch_14de
    if-eqz v3, :cond_1529

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v10, :cond_14e8

    goto/16 :goto_1529

    .line 442
    :cond_14e8
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    aget-object v11, v3, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v10

    .line 443
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isClipboardAllowedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 448
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 449
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 448
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 452
    move v9, v10

    goto/16 :goto_1761

    .line 441
    .end local v10    # "result":Z
    :cond_1529
    :goto_1529
    return-object v11

    .line 422
    :pswitch_152a
    if-eqz v3, :cond_1547

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1535

    const/4 v10, 0x0

    goto/16 :goto_1548

    .line 426
    :cond_1535
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 427
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 426
    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .restart local v9    # "result":Z
    goto/16 :goto_1551

    .line 422
    .end local v9    # "result":Z
    :cond_1547
    const/4 v10, 0x0

    .line 424
    :goto_1548
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 431
    .restart local v9    # "result":Z
    :goto_1551
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isClipboardAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 434
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 435
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 434
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 438
    goto/16 :goto_1761

    .line 410
    .end local v9    # "result":Z
    :pswitch_156c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 413
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isCellularDataAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 416
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 417
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 416
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 420
    goto/16 :goto_1761

    .line 396
    .end local v9    # "result":Z
    :pswitch_1590
    if-eqz v3, :cond_15c5

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_159a

    goto/16 :goto_15c5

    .line 398
    :cond_159a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 399
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 398
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 401
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isCameraEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 404
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 405
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 404
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 408
    goto/16 :goto_1761

    .line 397
    .end local v9    # "result":Z
    :cond_15c5
    :goto_15c5
    return-object v11

    .line 384
    :pswitch_15c6
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 387
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBluetoothTetheringEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 390
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 391
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 390
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 394
    goto/16 :goto_1761

    .line 369
    .end local v9    # "result":Z
    :pswitch_15ea
    if-eqz v3, :cond_161f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_15f4

    goto/16 :goto_161f

    .line 371
    :cond_15f4
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 372
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 371
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 375
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBackupAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 378
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 379
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 378
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 382
    goto/16 :goto_1761

    .line 370
    .end local v9    # "result":Z
    :cond_161f
    :goto_161f
    return-object v11

    .line 357
    :pswitch_1620
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 360
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBackgroundProcessLimitEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 363
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 364
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 363
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 367
    goto/16 :goto_1761

    .line 345
    .end local v9    # "result":Z
    :pswitch_1644
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 348
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBackgroundDataEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 351
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 352
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 351
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 355
    goto/16 :goto_1761

    .line 330
    .end local v9    # "result":Z
    :pswitch_1668
    const/4 v9, 0x0

    .line 331
    .local v9, "arg":Z
    if-eqz v3, :cond_1678

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1678

    .line 332
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 333
    :cond_1678
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 336
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isAudioRecordAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 339
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 340
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 339
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 343
    move v9, v10

    goto/16 :goto_1761

    .line 315
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_169d
    const/4 v9, 0x0

    .line 316
    .restart local v9    # "arg":Z
    if-eqz v3, :cond_16ad

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_16ad

    .line 317
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 318
    :cond_16ad
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v10

    .line 321
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isAndroidBeamAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 324
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 325
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 324
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 328
    move v9, v10

    goto/16 :goto_1761

    .line 300
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_16d2
    const/4 v9, 0x0

    .line 301
    .restart local v9    # "arg":Z
    if-eqz v3, :cond_16e2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_16e2

    .line 302
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 303
    :cond_16e2
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v10

    .line 306
    .restart local v10    # "result":Z
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isAirplaneModeAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 309
    new-array v11, v12, [Ljava/lang/Boolean;

    .line 310
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 309
    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 313
    move v9, v10

    goto :goto_1761

    .line 284
    .end local v9    # "arg":Z
    .end local v10    # "result":Z
    :pswitch_1701
    if-eqz v3, :cond_1736

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_170b

    goto/16 :goto_1736

    .line 287
    :cond_170b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 288
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 287
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v9

    .line 291
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isActivationLockAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 294
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 295
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 294
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 298
    goto/16 :goto_1761

    .line 285
    .end local v9    # "result":Z
    :cond_1736
    :goto_1736
    return-object v11

    .line 270
    :pswitch_1737
    if-eqz v3, :cond_1762

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1741

    goto/16 :goto_1762

    .line 273
    :cond_1741
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v9

    .line 276
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string v11, "checkPackageSource"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 279
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 280
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 279
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 282
    nop

    .line 539
    :goto_1761
    return-object v7

    .line 271
    .end local v9    # "result":Z
    :cond_1762
    :goto_1762
    return-object v11

    .line 1746
    .end local v8    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :pswitch_1763
    nop

    .line 1747
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1748
    .local v8, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 1749
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2baa

    :cond_1778
    goto/16 :goto_1807

    :sswitch_177a
    const-string/jumbo v13, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    const/16 v18, 0x0

    goto/16 :goto_1809

    :sswitch_1787
    const-string/jumbo v13, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v21

    goto/16 :goto_1809

    :sswitch_1794
    const-string/jumbo v13, "isPasswordPatternMatched"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    const/16 v18, 0x4

    goto/16 :goto_1809

    :sswitch_17a1
    const-string/jumbo v13, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v12

    goto/16 :goto_1809

    :sswitch_17ae
    const-string/jumbo v13, "isChangeRequested"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v10

    goto/16 :goto_1809

    :sswitch_17bb
    const-string/jumbo v13, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    goto/16 :goto_1809

    :sswitch_17c6
    const-string/jumbo v13, "getPasswordLockDelay"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v20

    goto/16 :goto_1809

    :sswitch_17d3
    const-string/jumbo v13, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v19

    goto/16 :goto_1809

    :sswitch_17e0
    const-string/jumbo v13, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    const/16 v18, 0x5

    goto/16 :goto_1809

    :sswitch_17ed
    const-string/jumbo v13, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    move/from16 v18, v15

    goto/16 :goto_1809

    :sswitch_17fa
    const-string/jumbo v13, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1778

    const/16 v18, 0x8

    goto/16 :goto_1809

    :goto_1807
    move/from16 v18, v22

    :goto_1809
    packed-switch v18, :pswitch_data_2bd8

    .line 1938
    return-object v11

    .line 1929
    :pswitch_180d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1930
    .local v9, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    new-array v11, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v11, v13

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1933
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1934
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    .line 1933
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1936
    goto/16 :goto_1b17

    .line 1903
    .end local v9    # "res":I
    :pswitch_182e
    if-eqz v3, :cond_18aa

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v12, :cond_1837

    goto :goto_18aa

    .line 1906
    :cond_1837
    const/4 v11, 0x0

    aget-object v13, v3, v11

    if-nez v13, :cond_183f

    .line 1907
    const/4 v13, 0x0

    .local v13, "cn":Landroid/content/ComponentName;
    goto/16 :goto_1845

    .line 1909
    .end local v13    # "cn":Landroid/content/ComponentName;
    :cond_183f
    aget-object v13, v3, v11

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 1910
    .restart local v13    # "cn":Landroid/content/ComponentName;
    :goto_1845
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v14

    if-ne v14, v10, :cond_1872

    .line 1911
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    aget-object v11, v3, v12

    .line 1913
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1912
    invoke-virtual {v8, v10, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    .local v10, "res":I
    goto/16 :goto_187b

    .line 1916
    .end local v10    # "res":I
    :cond_1872
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v10

    .line 1919
    .restart local v10    # "res":I
    :goto_187b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMaximumFailedPasswordsForWipe"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1924
    new-array v9, v12, [Ljava/lang/Integer;

    .line 1925
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 1924
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1927
    goto/16 :goto_1b17

    .line 1904
    .end local v10    # "res":I
    .end local v13    # "cn":Landroid/content/ComponentName;
    :cond_18aa
    :goto_18aa
    return-object v11

    .line 1882
    :pswitch_18ab
    if-eqz v3, :cond_18d5

    .line 1883
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    aget-object v13, v3, v11

    .line 1885
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1884
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .restart local v10    # "res":I
    goto/16 :goto_18de

    .line 1888
    .end local v10    # "res":I
    :cond_18d5
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v10

    .line 1891
    .restart local v10    # "res":I
    :goto_18de
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1897
    new-array v9, v12, [Ljava/lang/Integer;

    .line 1898
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 1897
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1900
    goto/16 :goto_1b17

    .line 1868
    .end local v10    # "res":I
    :pswitch_190d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1872
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getPasswordLockDelay"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1876
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1877
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1876
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1880
    goto/16 :goto_1b17

    .line 1852
    .end local v9    # "res":I
    :pswitch_1931
    if-eqz v3, :cond_1976

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-ge v10, v12, :cond_193b

    goto/16 :goto_1976

    .line 1854
    :cond_193b
    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v10

    .line 1856
    .local v10, "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1862
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1863
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 1862
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1866
    goto/16 :goto_1b17

    .line 1853
    .end local v10    # "result":Z
    :cond_1976
    :goto_1976
    return-object v11

    .line 1829
    :pswitch_1977
    if-nez v3, :cond_1999

    .line 1830
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 1832
    .restart local v10    # "result":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19c4

    .line 1835
    .end local v10    # "result":Z
    :cond_1999
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    .line 1836
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v10, v13}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1835
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 1837
    .restart local v10    # "result":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v3, v11

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :goto_19c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isPasswordVisibilityEnabled return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isPasswordVisibilityEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1845
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1846
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 1845
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1849
    goto/16 :goto_1b17

    .line 1813
    .end local v10    # "result":Z
    :pswitch_19f4
    if-eqz v3, :cond_1a25

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_19fe

    goto/16 :goto_1a25

    .line 1815
    :cond_19fe
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    .line 1819
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isPasswordPatternMatched"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1823
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1824
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1823
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1827
    goto/16 :goto_1b17

    .line 1814
    .end local v9    # "result":Z
    :cond_1a25
    :goto_1a25
    return-object v11

    .line 1792
    :pswitch_1a26
    if-eqz v3, :cond_1a50

    .line 1793
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    aget-object v13, v3, v11

    .line 1795
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1794
    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .restart local v10    # "result":Z
    goto/16 :goto_1a59

    .line 1798
    .end local v10    # "result":Z
    :cond_1a50
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    .line 1801
    .restart local v10    # "result":Z
    :goto_1a59
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isExternalStorageForFailedPasswordsWipeExcluded"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1807
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1808
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 1807
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1811
    goto/16 :goto_1b17

    .line 1778
    .end local v10    # "result":Z
    :pswitch_1a88
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1782
    .local v9, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isChangeRequested"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1786
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1787
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1786
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1790
    goto/16 :goto_1b17

    .line 1767
    .end local v9    # "res":I
    :pswitch_1aac
    if-eqz v3, :cond_1ae2

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_1ab6

    goto/16 :goto_1ae2

    .line 1769
    :cond_1ab6
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v9

    .line 1770
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1773
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1774
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1773
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1776
    goto/16 :goto_1b17

    .line 1768
    .end local v9    # "result":Z
    :cond_1ae2
    :goto_1ae2
    return-object v11

    .line 1751
    :pswitch_1ae3
    if-eqz v3, :cond_1b18

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1aed

    goto/16 :goto_1b18

    .line 1753
    :cond_1aed
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 1754
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1753
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v9

    .line 1757
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isBiometricAuthenticationEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1761
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1762
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1761
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1765
    nop

    .line 1941
    .end local v9    # "result":Z
    :goto_1b17
    return-object v7

    .line 1752
    :cond_1b18
    :goto_1b18
    return-object v11

    .line 1546
    .end local v8    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :pswitch_1b19
    nop

    .line 1547
    const-string/jumbo v8, "password_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1548
    .restart local v8    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 1549
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2bf2

    :cond_1b2e
    goto/16 :goto_1bc5

    :sswitch_1b30
    const-string/jumbo v9, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    const/16 v15, 0xb

    goto/16 :goto_1bc7

    :sswitch_1b3d
    const-string/jumbo v9, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move/from16 v15, v19

    goto/16 :goto_1bc7

    :sswitch_1b4a
    const-string/jumbo v9, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move/from16 v15, v20

    goto/16 :goto_1bc7

    :sswitch_1b57
    const-string/jumbo v9, "hasForbiddenData"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    const/16 v15, 0x8

    goto/16 :goto_1bc7

    :sswitch_1b64
    const-string/jumbo v9, "getPasswordChangeTimeout"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    const/4 v15, 0x5

    goto/16 :goto_1bc7

    :sswitch_1b70
    const-string/jumbo v9, "getForbiddenStrings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    const/4 v15, 0x0

    goto/16 :goto_1bc7

    :sswitch_1b7c
    const-string/jumbo v9, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move/from16 v15, v21

    goto/16 :goto_1bc7

    :sswitch_1b89
    const-string/jumbo v9, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move v15, v12

    goto/16 :goto_1bc7

    :sswitch_1b95
    const-string/jumbo v9, "hasForbiddenStringDistance"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move/from16 v15, v18

    goto/16 :goto_1bc7

    :sswitch_1ba2
    const-string/jumbo v9, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    goto/16 :goto_1bc7

    :sswitch_1bad
    const-string/jumbo v9, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    move v15, v10

    goto/16 :goto_1bc7

    :sswitch_1bb9
    const-string/jumbo v9, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b2e

    const/4 v15, 0x4

    goto/16 :goto_1bc7

    :goto_1bc5
    move/from16 v15, v22

    :goto_1bc7
    packed-switch v15, :pswitch_data_2c24

    .line 1739
    return-object v11

    .line 1723
    :pswitch_1bcb
    if-eqz v3, :cond_1bfc

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1bd5

    goto/16 :goto_1bfc

    .line 1725
    :cond_1bd5
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    .line 1729
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "hasMaxRepeatedCharacters"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1733
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1734
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1733
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1737
    goto/16 :goto_1df5

    .line 1724
    .end local v9    # "result":Z
    :cond_1bfc
    :goto_1bfc
    return-object v11

    .line 1707
    :pswitch_1bfd
    if-eqz v3, :cond_1c30

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v12, :cond_1c07

    goto/16 :goto_1c30

    .line 1709
    :cond_1c07
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    aget-object v10, v3, v12

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1713
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "hasForbiddenStringDistance"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1717
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1718
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1717
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1721
    goto/16 :goto_1df5

    .line 1708
    .end local v9    # "result":Z
    :cond_1c30
    :goto_1c30
    return-object v11

    .line 1691
    :pswitch_1c31
    if-eqz v3, :cond_1c62

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1c3b

    goto/16 :goto_1c62

    .line 1693
    :cond_1c3b
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    .line 1697
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "hasForbiddenNumericSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1701
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1702
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1701
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1705
    goto/16 :goto_1df5

    .line 1692
    .end local v9    # "result":Z
    :cond_1c62
    :goto_1c62
    return-object v11

    .line 1675
    :pswitch_1c63
    if-eqz v3, :cond_1c94

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1c6d

    goto/16 :goto_1c94

    .line 1677
    :cond_1c6d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    .line 1681
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "hasForbiddenData"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1685
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1686
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1685
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1689
    goto/16 :goto_1df5

    .line 1676
    .end local v9    # "result":Z
    :cond_1c94
    :goto_1c94
    return-object v11

    .line 1659
    :pswitch_1c95
    if-eqz v3, :cond_1cc6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1c9f

    goto/16 :goto_1cc6

    .line 1661
    :cond_1c9f
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    invoke-virtual {v8, v9, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v9

    .line 1665
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "hasForbiddenCharacterSequence"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1669
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1670
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1669
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1673
    goto/16 :goto_1df5

    .line 1660
    .end local v9    # "result":Z
    :cond_1cc6
    :goto_1cc6
    return-object v11

    .line 1643
    :pswitch_1cc7
    if-eqz v3, :cond_1cf8

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1cd1

    goto/16 :goto_1cf8

    .line 1645
    :cond_1cd1
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 1646
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1645
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v9

    .line 1649
    .local v9, "str":Ljava/lang/String;
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getRequiredPwdPatternRestrictions"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1653
    new-array v10, v12, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1657
    goto/16 :goto_1df5

    .line 1644
    .end local v9    # "str":Ljava/lang/String;
    :cond_1cf8
    :goto_1cf8
    return-object v11

    .line 1629
    :pswitch_1cf9
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1633
    .local v9, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getPasswordChangeTimeout"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1637
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1638
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1637
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1641
    goto/16 :goto_1df5

    .line 1615
    .end local v9    # "res":I
    :pswitch_1d1d
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1619
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMinimumCharacterChangeLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1623
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1624
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1623
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1627
    goto/16 :goto_1df5

    .line 1601
    .end local v9    # "res":I
    :pswitch_1d41
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1605
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMaximumNumericSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1609
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1610
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1609
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1613
    goto/16 :goto_1df5

    .line 1587
    .end local v9    # "res":I
    :pswitch_1d65
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1591
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterSequenceLength"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1595
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1596
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1595
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1599
    goto/16 :goto_1df5

    .line 1573
    .end local v9    # "res":I
    :pswitch_1d89
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 1577
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getMaximumCharacterOccurences"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1581
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1582
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1581
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1585
    goto/16 :goto_1df5

    .line 1551
    .end local v9    # "res":I
    :pswitch_1dad
    if-eqz v3, :cond_1df6

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1db7

    goto/16 :goto_1df6

    .line 1553
    :cond_1db7
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 1554
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1553
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 1557
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getForbiddenStrings"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1561
    if-eqz v9, :cond_1df5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1df5

    .line 1564
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1de0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1df5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1565
    .local v11, "value":Ljava/lang/String;
    new-array v13, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-virtual {v7, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1568
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_1de0

    .line 1742
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1df5
    :goto_1df5
    return-object v7

    .line 1552
    :cond_1df6
    :goto_1df6
    return-object v11

    .line 2371
    .end local v8    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :pswitch_1df7
    nop

    .line 2372
    const-string/jumbo v8, "location_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 2373
    .local v8, "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 2374
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x66608807

    if-eq v13, v14, :cond_1e32

    const v14, -0x40efadf9

    if-eq v13, v14, :cond_1e26

    const v14, 0x63cbc5bc

    if-eq v13, v14, :cond_1e1a

    :cond_1e18
    goto/16 :goto_1e3e

    :cond_1e1a
    const-string/jumbo v13, "isLocationProviderBlocked"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e18

    const/4 v13, 0x0

    goto/16 :goto_1e40

    :cond_1e26
    const-string/jumbo v13, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e18

    move v13, v10

    goto/16 :goto_1e40

    :cond_1e32
    const-string/jumbo v13, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e18

    move v13, v12

    goto/16 :goto_1e40

    :goto_1e3e
    move/from16 v13, v22

    :goto_1e40
    if-eqz v13, :cond_1ecf

    if-eq v13, v12, :cond_1e6b

    if-eq v13, v10, :cond_1e47

    .line 2430
    return-object v11

    .line 2417
    :cond_1e47
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 2420
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isGPSStateChangeAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2424
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2425
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 2424
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2428
    goto/16 :goto_1efa

    .line 2391
    .end local v9    # "result":Z
    :cond_1e6b
    if-eqz v3, :cond_1ece

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v13

    if-ge v13, v12, :cond_1e75

    goto/16 :goto_1ece

    .line 2393
    :cond_1e75
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1eac

    .line 2394
    aget-object v10, v3, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2395
    .local v10, "providedUserId":I
    const/4 v11, -0x2

    if-ne v10, v11, :cond_1ea2

    .line 2396
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 2397
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isLocationProviderBlockedAsUser using userId = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " instead of UserHandle.USER_CURRENT"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_1ea2
    const/4 v9, 0x0

    aget-object v11, v3, v9

    invoke-virtual {v8, v11, v10}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v10

    .line 2401
    .local v10, "result":Z
    move v9, v10

    goto/16 :goto_1eb3

    .line 2403
    .end local v10    # "result":Z
    :cond_1eac
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v9

    .line 2407
    .restart local v9    # "result":Z
    :goto_1eb3
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlockedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2411
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2412
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 2411
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2415
    goto/16 :goto_1efa

    .line 2392
    .end local v9    # "result":Z
    :cond_1ece
    :goto_1ece
    return-object v11

    .line 2376
    :cond_1ecf
    if-eqz v3, :cond_1efb

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_1ed9

    goto/16 :goto_1efb

    .line 2378
    :cond_1ed9
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v9

    .line 2381
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isLocationProviderBlocked"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 2385
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 2386
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 2385
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2389
    nop

    .line 2433
    :goto_1efa
    return-object v7

    .line 2377
    .end local v9    # "result":Z
    :cond_1efb
    :goto_1efb
    return-object v11

    .line 2553
    .end local v8    # "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    :pswitch_1efc
    nop

    .line 2554
    const-string v8, "browser_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2555
    .local v8, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    nop

    .line 2556
    const-string/jumbo v9, "misc_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 2557
    .local v9, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    if-eqz v9, :cond_294a

    .line 2558
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2c40

    :cond_1f1c
    goto/16 :goto_1f5a

    :sswitch_1f1e
    const-string/jumbo v13, "getURLFilterReportEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f1c

    move v13, v10

    goto/16 :goto_1f5c

    :sswitch_1f2a
    const-string/jumbo v13, "isUrlBlocked"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f1c

    move v13, v15

    goto/16 :goto_1f5c

    :sswitch_1f36
    const-string/jumbo v13, "getURLFilterEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f1c

    const/4 v13, 0x0

    goto/16 :goto_1f5c

    :sswitch_1f42
    const-string/jumbo v13, "isGlobalProxyAllowed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f1c

    const/4 v13, 0x4

    goto/16 :goto_1f5c

    :sswitch_1f4e
    const-string/jumbo v13, "getURLFilterList"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f1c

    move v13, v12

    goto/16 :goto_1f5c

    :goto_1f5a
    move/from16 v13, v22

    :goto_1f5c
    if-eqz v13, :cond_2016

    if-eq v13, v12, :cond_1fdc

    if-eq v13, v10, :cond_1fb8

    if-eq v13, v15, :cond_1f87

    const/4 v10, 0x4

    if-eq v13, v10, :cond_1f68

    .line 2645
    return-object v11

    .line 2632
    :cond_1f68
    invoke-virtual {v9}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 2635
    .local v10, "bGlobalProxy":Ljava/lang/Boolean;
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "isGlobalProxyAllowed"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 2639
    new-array v11, v12, [Ljava/lang/Boolean;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-virtual {v7, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2643
    goto/16 :goto_2039

    .line 2616
    .end local v10    # "bGlobalProxy":Ljava/lang/Boolean;
    :cond_1f87
    if-eqz v3, :cond_1fb7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_1f91

    goto/16 :goto_1fb7

    .line 2618
    :cond_1f91
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    aget-object v13, v3, v11

    invoke-virtual {v8, v10, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 2622
    .local v10, "bUrlBlocked":Ljava/lang/Boolean;
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "isUrlBlocked"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v13

    .line 2626
    new-array v12, v12, [Ljava/lang/Boolean;

    aput-object v10, v12, v11

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2630
    goto/16 :goto_2039

    .line 2617
    .end local v10    # "bUrlBlocked":Ljava/lang/Boolean;
    :cond_1fb7
    :goto_1fb7
    return-object v11

    .line 2602
    :cond_1fb8
    const/4 v11, 0x0

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v12, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 2606
    .local v10, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "getURLFilterReportEnabled"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v13

    .line 2610
    new-array v12, v12, [Ljava/lang/Boolean;

    aput-object v10, v12, v11

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2614
    goto/16 :goto_2039

    .line 2579
    .end local v10    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    :cond_1fdc
    const/4 v11, 0x0

    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v10, v12, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v10

    .line 2582
    .local v10, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Landroid/database/MatrixCursor;

    const-string/jumbo v13, "getURLFilterList"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v11

    .line 2587
    if-eqz v10, :cond_2039

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2039

    .line 2590
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1fff
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2014

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2591
    .local v13, "filterList":Ljava/lang/String;
    new-array v14, v12, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v7, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2594
    .end local v13    # "filterList":Ljava/lang/String;
    goto :goto_1fff

    :cond_2014
    goto/16 :goto_2039

    .line 2562
    .end local v10    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2016
    new-instance v10, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v10, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v12, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v10

    .line 2566
    .local v10, "bGetURLFilterEnabled":Z
    new-instance v13, Landroid/database/MatrixCursor;

    const-string/jumbo v14, "getURLFilterEnabled"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v13

    .line 2570
    new-array v12, v12, [Ljava/lang/Boolean;

    .line 2571
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v11

    .line 2570
    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2574
    nop

    .line 2648
    .end local v10    # "bGetURLFilterEnabled":Z
    :cond_2039
    :goto_2039
    return-object v7

    .line 1371
    .end local v8    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    .end local v9    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    :pswitch_203a
    nop

    .line 1372
    const-string v8, "certificate_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1373
    .local v8, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v8, :cond_294a

    if-eqz v2, :cond_294a

    .line 1374
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2c56

    :cond_204e
    goto/16 :goto_20dd

    :sswitch_2050
    const-string/jumbo v9, "isRevocationCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v21

    goto/16 :goto_20df

    :sswitch_205d
    const-string/jumbo v9, "validateChainAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    goto/16 :goto_20df

    :sswitch_2068
    const-string/jumbo v9, "notifyCertificateFailure"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    const/16 v18, 0x5

    goto/16 :goto_20df

    :sswitch_2075
    const-string/jumbo v9, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v15

    goto/16 :goto_20df

    :sswitch_2082
    const-string/jumbo v9, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v12

    goto/16 :goto_20df

    :sswitch_208f
    const-string/jumbo v9, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    const/16 v18, 0x4

    goto/16 :goto_20df

    :sswitch_209c
    const-string/jumbo v9, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    const/16 v18, 0x0

    goto/16 :goto_20df

    :sswitch_20a9
    const-string/jumbo v9, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v10

    goto/16 :goto_20df

    :sswitch_20b6
    const-string/jumbo v9, "isOcspCheckEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v20

    goto/16 :goto_20df

    :sswitch_20c3
    const-string/jumbo v9, "validateCertificateAtInstall"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    move/from16 v18, v19

    goto/16 :goto_20df

    :sswitch_20d0
    const-string/jumbo v9, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_204e

    const/16 v18, 0x8

    goto/16 :goto_20df

    :goto_20dd
    move/from16 v18, v22

    :goto_20df
    packed-switch v18, :pswitch_data_2c84

    goto/16 :goto_2320

    .line 1529
    :pswitch_20e4
    if-eqz v3, :cond_2116

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_20ee

    goto/16 :goto_2116

    .line 1531
    :cond_20ee
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v9

    .line 1533
    .local v9, "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "validateChainAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1537
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1538
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1537
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2320

    .line 1530
    .end local v9    # "res":I
    :cond_2116
    :goto_2116
    return-object v11

    .line 1516
    :pswitch_2117
    if-eqz v3, :cond_2149

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_2121

    goto/16 :goto_2149

    .line 1518
    :cond_2121
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v9

    .line 1520
    .restart local v9    # "res":I
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "validateCertificateAtInstall"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1524
    new-array v10, v12, [Ljava/lang/Integer;

    .line 1525
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1524
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1527
    goto/16 :goto_2320

    .line 1517
    .end local v9    # "res":I
    :cond_2149
    :goto_2149
    return-object v11

    .line 1504
    :pswitch_214a
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1507
    .local v9, "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isCertificateValidationAtInstallEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1511
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1512
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1511
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1514
    goto/16 :goto_2320

    .line 1492
    .end local v9    # "result":Z
    :pswitch_216e
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1495
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isOcspCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1499
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1500
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1499
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1502
    goto/16 :goto_2320

    .line 1480
    .end local v9    # "result":Z
    :pswitch_2192
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1483
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isRevocationCheckEnabled"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1487
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1488
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1487
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1490
    goto/16 :goto_2320

    .line 1473
    .end local v9    # "result":Z
    :pswitch_21b6
    if-eqz v3, :cond_21d1

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gt v9, v10, :cond_21c0

    goto/16 :goto_21d1

    .line 1475
    :cond_21c0
    const/4 v9, 0x0

    aget-object v9, v3, v9

    aget-object v11, v3, v12

    aget-object v10, v3, v10

    .line 1476
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1475
    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1477
    const/4 v7, 0x0

    .line 1478
    goto/16 :goto_2320

    .line 1474
    :cond_21d1
    :goto_21d1
    return-object v11

    .line 1452
    :pswitch_21d2
    if-eqz v3, :cond_222c

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_21dc

    goto/16 :goto_222c

    .line 1454
    :cond_21dc
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    aget-object v11, v3, v10

    .line 1455
    invoke-static {v11}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/content/pm/Signature;

    .line 1454
    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v9

    .line 1457
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "getIdentitiesFromSignatures"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1461
    if-eqz v9, :cond_2320

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2320

    .line 1463
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2207
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_222a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1464
    .local v11, "value":[Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x0

    :goto_2215
    if-ge v14, v13, :cond_2227

    aget-object v15, v11, v14

    .line 1465
    .local v15, "internalValue":Ljava/lang/String;
    new-array v1, v12, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-virtual {v7, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1464
    .end local v15    # "internalValue":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_2215

    .line 1469
    .end local v11    # "value":[Ljava/lang/String;
    :cond_2227
    move-object/from16 v1, p1

    goto :goto_2207

    :cond_222a
    goto/16 :goto_2320

    .line 1453
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_222c
    :goto_222c
    return-object v11

    .line 1438
    :pswitch_222d
    if-eqz v3, :cond_2262

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2237

    goto/16 :goto_2262

    .line 1440
    :cond_2237
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    .line 1441
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1440
    invoke-virtual {v8, v1, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v1

    .line 1443
    .local v1, "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isSignatureIdentityInformationEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1447
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1448
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 1447
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1450
    goto/16 :goto_2320

    .line 1439
    .end local v1    # "result":Z
    :cond_2262
    :goto_2262
    return-object v11

    .line 1416
    :pswitch_2263
    if-eqz v3, :cond_226b

    array-length v1, v3

    if-ne v1, v12, :cond_226b

    move v1, v12

    goto/16 :goto_226c

    :cond_226b
    const/4 v1, 0x0

    .line 1418
    .local v1, "hasUserIdArgument":Z
    :goto_226c
    if-eqz v1, :cond_227c

    .line 1419
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1420
    .local v9, "userIdArgument":I
    nop

    .line 1421
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v9

    .line 1422
    .local v9, "result":Z
    goto/16 :goto_2285

    .line 1423
    .end local v9    # "result":Z
    :cond_227c
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1424
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v9

    .line 1429
    .restart local v9    # "result":Z
    :goto_2285
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isUserRemoveCertificatesAllowed"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1433
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1434
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1433
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1436
    goto/16 :goto_2320

    .line 1396
    .end local v1    # "hasUserIdArgument":Z
    .end local v9    # "result":Z
    :pswitch_22a0
    if-eqz v3, :cond_22d9

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_22aa

    goto/16 :goto_22d9

    .line 1398
    :cond_22aa
    move v1, v5

    .line 1399
    .local v1, "defaultUser":I
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_22b7

    .line 1400
    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1402
    :cond_22b7
    const/4 v9, 0x0

    aget-object v10, v3, v9

    invoke-virtual {v8, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v9

    .line 1405
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isCaCertificateDisabledAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1409
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1410
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1409
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1412
    goto/16 :goto_2320

    .line 1397
    .end local v1    # "defaultUser":I
    .end local v9    # "result":Z
    :cond_22d9
    :goto_22d9
    return-object v11

    .line 1376
    :pswitch_22da
    if-eqz v3, :cond_231f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gt v1, v12, :cond_22e4

    goto/16 :goto_231f

    .line 1378
    :cond_22e4
    move v1, v5

    .line 1379
    .local v1, "user":I
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v9

    if-le v9, v10, :cond_22f1

    .line 1380
    aget-object v9, v3, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1382
    :cond_22f1
    const/4 v9, 0x0

    aget-object v10, v3, v9

    .line 1383
    invoke-static {v10}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    aget-object v10, v3, v12

    .line 1384
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1382
    invoke-virtual {v8, v9, v10, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v9

    .line 1387
    .restart local v9    # "result":Z
    new-instance v10, Landroid/database/MatrixCursor;

    const-string/jumbo v11, "isCaCertificateTrustedAsUser"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v10

    .line 1391
    new-array v10, v12, [Ljava/lang/Boolean;

    .line 1392
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1391
    invoke-virtual {v7, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1394
    goto/16 :goto_2320

    .line 1377
    .end local v1    # "user":I
    .end local v9    # "result":Z
    :cond_231f
    :goto_231f
    return-object v11

    .line 1542
    :cond_2320
    :goto_2320
    return-object v7

    .line 1946
    .end local v8    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :pswitch_2321
    nop

    .line 1947
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 1949
    .local v1, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v1, :cond_294a

    if-eqz v2, :cond_294a

    .line 1950
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2c9e

    :cond_2335
    goto/16 :goto_237f

    :sswitch_2337
    const-string/jumbo v8, "getCookiesSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    move v8, v10

    goto/16 :goto_2381

    :sswitch_2343
    const-string/jumbo v8, "getHttpProxy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    const/4 v8, 0x0

    goto/16 :goto_2381

    :sswitch_234f
    const-string/jumbo v8, "getJavaScriptSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    move v8, v15

    goto/16 :goto_2381

    :sswitch_235b
    const-string/jumbo v8, "getAutoFillSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    move v8, v12

    goto/16 :goto_2381

    :sswitch_2367
    const-string/jumbo v8, "getPopupsSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    const/4 v8, 0x4

    goto/16 :goto_2381

    :sswitch_2373
    const-string/jumbo v8, "getForceFraudWarningSetting"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2335

    const/4 v8, 0x5

    goto/16 :goto_2381

    :goto_237f
    move/from16 v8, v22

    :goto_2381
    if-eqz v8, :cond_2449

    if-eq v8, v12, :cond_2424

    if-eq v8, v10, :cond_2400

    if-eq v8, v15, :cond_23da

    const/4 v9, 0x4

    if-eq v8, v9, :cond_23b6

    const/4 v13, 0x5

    if-eq v8, v13, :cond_2390

    .line 2043
    return-object v11

    .line 2029
    :cond_2390
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v9, 0x8

    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    .line 2034
    .local v8, "bForceWarning":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getForceFraudWarningSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2037
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2038
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2037
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2041
    goto/16 :goto_2468

    .line 2014
    .end local v8    # "bForceWarning":Z
    :cond_23b6
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    .line 2019
    .local v8, "bPopupSettings":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getPopupsSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2022
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2023
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2022
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2026
    goto/16 :goto_2468

    .line 1997
    .end local v8    # "bPopupSettings":Z
    :cond_23da
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v9, 0x10

    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    .line 2002
    .local v8, "bJavaScriptSetting":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getJavaScriptSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2006
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2007
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2006
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2010
    goto/16 :goto_2468

    .line 1982
    .end local v8    # "bJavaScriptSetting":Z
    :cond_2400
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    .line 1987
    .local v8, "bCookiesSettings":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getCookiesSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1990
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1991
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 1990
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1994
    goto/16 :goto_2468

    .line 1965
    .end local v8    # "bCookiesSettings":Z
    :cond_2424
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x4

    invoke-virtual {v1, v8, v9}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v8

    .line 1970
    .local v8, "bAutoFill":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getAutoFillSetting"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1974
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 1975
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 1974
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1978
    goto/16 :goto_2468

    .line 1952
    .end local v8    # "bAutoFill":Z
    :cond_2449
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1955
    .local v8, "proxy":Ljava/lang/String;
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "getHttpProxy"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 1958
    new-array v9, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1962
    nop

    .line 2046
    .end local v8    # "proxy":Ljava/lang/String;
    :goto_2468
    return-object v7

    .line 2186
    .end local v1    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_2469
    const/16 v1, 0x8

    const/4 v8, 0x4

    const/4 v13, 0x5

    if-eqz v2, :cond_294a

    .line 2187
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2cb8

    :cond_2476
    goto/16 :goto_24f1

    :sswitch_2478
    const-string v8, "bluetoothLogForRemote"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2476

    move/from16 v19, v1

    goto/16 :goto_24f3

    :sswitch_2484
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    goto/16 :goto_24f3

    :sswitch_248e
    const-string/jumbo v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v8

    goto/16 :goto_24f3

    :sswitch_249b
    const-string/jumbo v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v21

    goto/16 :goto_24f3

    :sswitch_24a8
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v13

    goto/16 :goto_24f3

    :sswitch_24b4
    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v10

    goto/16 :goto_24f3

    :sswitch_24c1
    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v15

    goto/16 :goto_24f3

    :sswitch_24ce
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v12

    goto/16 :goto_24f3

    :sswitch_24d8
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    move/from16 v19, v20

    goto/16 :goto_24f3

    :sswitch_24e4
    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    const/16 v19, 0x0

    goto/16 :goto_24f3

    :goto_24f1
    move/from16 v19, v22

    :goto_24f3
    packed-switch v19, :pswitch_data_2ce2

    goto/16 :goto_26cf

    .line 2289
    :pswitch_24f8
    if-eqz v3, :cond_2532

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v15, :cond_2532

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_2508

    goto/16 :goto_2532

    .line 2291
    :cond_2508
    aget-object v1, v3, v10

    if-nez v1, :cond_251a

    .line 2292
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v12

    .line 2293
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2292
    invoke-static {v1, v8, v11}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_26cf

    .line 2296
    :cond_251a
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v12

    .line 2297
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 2296
    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_26cf

    .line 2290
    :cond_2532
    :goto_2532
    return-object v11

    .line 2283
    :pswitch_2533
    if-eqz v3, :cond_254f

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v15, :cond_254f

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_2543

    goto/16 :goto_254f

    .line 2285
    :cond_2543
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v12

    aget-object v9, v3, v10

    invoke-static {v1, v8, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    goto/16 :goto_26cf

    .line 2284
    :cond_254f
    :goto_254f
    return-object v11

    .line 2278
    :pswitch_2550
    if-eqz v3, :cond_256a

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lt v1, v10, :cond_256a

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    if-nez v1, :cond_2560

    goto/16 :goto_256a

    .line 2280
    :cond_2560
    const/4 v1, 0x0

    aget-object v1, v3, v1

    aget-object v8, v3, v12

    invoke-static {v1, v8}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    goto/16 :goto_26cf

    .line 2279
    :cond_256a
    :goto_256a
    return-object v11

    .line 2263
    :pswitch_256b
    if-eqz v3, :cond_259b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2575

    goto/16 :goto_259b

    .line 2265
    :cond_2575
    const/4 v1, 0x0

    aget-object v8, v3, v1

    .line 2266
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2265
    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v1

    .line 2269
    .local v1, "result":Z
    new-instance v8, Landroid/database/MatrixCursor;

    const-string/jumbo v9, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2273
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2273
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2276
    goto/16 :goto_26cf

    .line 2264
    .end local v1    # "result":Z
    :cond_259b
    :goto_259b
    return-object v11

    .line 2257
    :pswitch_259c
    if-eqz v3, :cond_25c4

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-ge v1, v15, :cond_25a6

    goto/16 :goto_25c4

    .line 2259
    :cond_25a6
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    aget-object v9, v3, v12

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    aget-object v9, v3, v10

    .line 2260
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v15

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2259
    invoke-static {v1, v8, v9, v10}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2261
    goto/16 :goto_26cf

    .line 2258
    :cond_25c4
    :goto_25c4
    return-object v11

    .line 2243
    :pswitch_25c5
    if-eqz v3, :cond_260b

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-ge v1, v15, :cond_25cf

    goto/16 :goto_260b

    .line 2245
    :cond_25cf
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    aget-object v8, v3, v12

    .line 2246
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v3, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v10, v3, v15

    invoke-static {v10}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v10

    .line 2245
    invoke-static {v1, v8, v9, v10}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v1

    .line 2248
    .restart local v1    # "result":Z
    new-instance v8, Landroid/database/MatrixCursor;

    const-string/jumbo v9, "isSocketAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2252
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2253
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2252
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2255
    goto/16 :goto_26cf

    .line 2244
    .end local v1    # "result":Z
    :cond_260b
    :goto_260b
    return-object v11

    .line 2229
    :pswitch_260c
    if-eqz v3, :cond_2640

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2616

    goto/16 :goto_2640

    .line 2231
    :cond_2616
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 2234
    .restart local v1    # "result":Z
    new-instance v8, Landroid/database/MatrixCursor;

    const-string/jumbo v9, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2238
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2239
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2238
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2241
    goto/16 :goto_26cf

    .line 2230
    .end local v1    # "result":Z
    :cond_2640
    :goto_2640
    return-object v11

    .line 2215
    :pswitch_2641
    if-eqz v3, :cond_2681

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_264b

    goto/16 :goto_2681

    .line 2217
    :cond_264b
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 2218
    .restart local v1    # "result":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    new-instance v8, Landroid/database/MatrixCursor;

    const-string/jumbo v9, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2224
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2225
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2224
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2227
    goto/16 :goto_26cf

    .line 2216
    .end local v1    # "result":Z
    :cond_2681
    :goto_2681
    return-object v11

    .line 2203
    :pswitch_2682
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v1

    .line 2206
    .restart local v1    # "result":Z
    new-instance v8, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2210
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2211
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2210
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2213
    goto/16 :goto_26cf

    .line 2189
    .end local v1    # "result":Z
    :pswitch_269e
    if-eqz v3, :cond_26ce

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_26a8

    goto/16 :goto_26ce

    .line 2191
    :cond_26a8
    const/4 v1, 0x0

    aget-object v8, v3, v1

    invoke-static {v8}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v1

    .line 2194
    .restart local v1    # "result":Z
    new-instance v8, Landroid/database/MatrixCursor;

    const-string/jumbo v9, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v8

    .line 2198
    new-array v8, v12, [Ljava/lang/Boolean;

    .line 2199
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 2198
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2201
    goto/16 :goto_26cf

    .line 2190
    .end local v1    # "result":Z
    :cond_26ce
    :goto_26ce
    return-object v11

    .line 2301
    :goto_26cf
    return-object v7

    .line 2052
    :pswitch_26d0
    const/16 v1, 0x8

    const/4 v8, 0x4

    const/4 v13, 0x5

    .line 2053
    const-string v16, "bluetooth_policy"

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 2054
    .local v1, "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v1, :cond_294a

    if-eqz v2, :cond_294a

    .line 2055
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2cfa

    :cond_26e9
    goto/16 :goto_275a

    :sswitch_26eb
    const-string/jumbo v8, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    move/from16 v20, v10

    goto/16 :goto_275c

    :sswitch_26f8
    const-string/jumbo v8, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    move/from16 v20, v15

    goto/16 :goto_275c

    :sswitch_2705
    const-string/jumbo v8, "isBLEAllowed"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    const/16 v20, 0x8

    goto/16 :goto_275c

    :sswitch_2712
    const-string/jumbo v13, "isDiscoverableEnabled"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26e9

    move/from16 v20, v8

    goto/16 :goto_275c

    :sswitch_271f
    const-string/jumbo v8, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    move/from16 v20, v13

    goto/16 :goto_275c

    :sswitch_272c
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    goto/16 :goto_275c

    :sswitch_2734
    const-string v8, "bluetoothLog"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    move/from16 v20, v21

    goto/16 :goto_275c

    :sswitch_2740
    const-string/jumbo v8, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    move/from16 v20, v12

    goto/16 :goto_275c

    :sswitch_274d
    const-string/jumbo v8, "isBluetoothEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26e9

    const/16 v20, 0x0

    goto/16 :goto_275c

    :goto_275a
    move/from16 v20, v22

    :goto_275c
    packed-switch v20, :pswitch_data_2d20

    .line 2179
    return-object v11

    .line 2167
    :pswitch_2760
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 2170
    .local v8, "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isBLEAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2174
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2175
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2174
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2177
    goto/16 :goto_2915

    .line 2155
    .end local v8    # "result":Z
    :pswitch_2784
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 2158
    .restart local v8    # "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2162
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2163
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2162
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2165
    goto/16 :goto_2915

    .line 2140
    .end local v8    # "result":Z
    :pswitch_27a5
    if-eqz v3, :cond_27d7

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-ge v8, v10, :cond_27af

    goto/16 :goto_27d7

    .line 2142
    :cond_27af
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    aget-object v9, v3, v12

    invoke-virtual {v1, v8, v10, v9}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 2146
    .restart local v8    # "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v10, "bluetoothLog"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2150
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2151
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2150
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2153
    goto/16 :goto_2915

    .line 2141
    .end local v8    # "result":Z
    :cond_27d7
    :goto_27d7
    return-object v11

    .line 2126
    :pswitch_27d8
    if-eqz v3, :cond_2808

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_27e2

    goto/16 :goto_2808

    .line 2128
    :cond_27e2
    const/4 v8, 0x0

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v8

    .line 2131
    .restart local v8    # "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isDesktopConnectivityEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2135
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2136
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2135
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2138
    goto/16 :goto_2915

    .line 2127
    .end local v8    # "result":Z
    :cond_2808
    :goto_2808
    return-object v11

    .line 2114
    :pswitch_2809
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 2117
    .restart local v8    # "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2121
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2122
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2121
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2124
    goto/16 :goto_2915

    .line 2102
    .end local v8    # "result":Z
    :pswitch_282d
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 2105
    .restart local v8    # "result":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isLimitedDiscoverableEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2109
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2110
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2109
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2112
    goto/16 :goto_2915

    .line 2086
    .end local v8    # "result":Z
    :pswitch_2851
    if-eqz v3, :cond_2896

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_285b

    goto/16 :goto_2896

    .line 2088
    :cond_285b
    const/4 v8, 0x0

    aget-object v10, v3, v8

    .line 2089
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2088
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v8

    .line 2090
    .restart local v8    # "result":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isOutgoingCallsAllowed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isOutgoingCallsAllowed"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2096
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2097
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2096
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2100
    goto/16 :goto_2915

    .line 2087
    .end local v8    # "result":Z
    :cond_2896
    :goto_2896
    return-object v11

    .line 2070
    :pswitch_2897
    if-eqz v3, :cond_28dc

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_28a1

    goto/16 :goto_28dc

    .line 2072
    :cond_28a1
    const/4 v8, 0x0

    aget-object v10, v3, v8

    .line 2073
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 2072
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v8

    .line 2074
    .restart local v8    # "result":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabledWithMsg"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2080
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2081
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2080
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2084
    goto/16 :goto_2915

    .line 2071
    .end local v8    # "result":Z
    :cond_28dc
    :goto_28dc
    return-object v11

    .line 2057
    :pswitch_28dd
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v8

    .line 2058
    .restart local v8    # "result":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBluetoothEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isBluetoothEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2064
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2065
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2064
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2068
    nop

    .line 2182
    :goto_2915
    return-object v7

    .line 2437
    .end local v1    # "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .end local v8    # "result":Z
    :pswitch_2916
    nop

    .line 2438
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2440
    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_294a

    .line 2441
    if-eqz v2, :cond_294a

    const-string/jumbo v8, "isAuditLogEnabled"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_294a

    .line 2443
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v8

    .line 2446
    .local v8, "bIsAuditLogEnabled":Z
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v10, "isAuditLogEnabled"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v7, v9

    .line 2449
    new-array v9, v12, [Ljava/lang/Boolean;

    .line 2450
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 2449
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2454
    return-object v7

    .line 2856
    .end local v1    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    .end local v8    # "bIsAuditLogEnabled":Z
    :cond_294a
    :goto_294a
    return-object v11

    nop

    :pswitch_data_294c
    .packed-switch 0x2
        :pswitch_2916
        :pswitch_26d0
        :pswitch_2469
        :pswitch_2321
        :pswitch_203a
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_1efc
        :pswitch_6d
        :pswitch_1df7
        :pswitch_1b19
        :pswitch_1763
        :pswitch_12c3
        :pswitch_d8a
        :pswitch_8ec
        :pswitch_503
        :pswitch_42d
        :pswitch_39c
        :pswitch_6d
        :pswitch_328
        :pswitch_6d
        :pswitch_2aa
        :pswitch_6d
        :pswitch_265
        :pswitch_17c
        :pswitch_6d
        :pswitch_6d
        :pswitch_6f
    .end packed-switch

    :sswitch_data_298a
    .sparse-switch
        -0x6a3a5990 -> :sswitch_c8
        -0x55af2a6c -> :sswitch_bc
        -0x4e3d6d40 -> :sswitch_b0
        -0x499d26f4 -> :sswitch_a4
        0x5be9d3d -> :sswitch_98
        0x5bb25232 -> :sswitch_8c
        0x7f319452 -> :sswitch_82
    .end sparse-switch

    :pswitch_data_29a8
    .packed-switch 0x0
        :pswitch_15c
        :pswitch_142
        :pswitch_128
        :pswitch_f2
        :pswitch_ec
        :pswitch_e6
        :pswitch_e0
    .end packed-switch

    :sswitch_data_29ba
    .sparse-switch
        -0x35a747d7 -> :sswitch_1bd
        0x1020174d -> :sswitch_1b2
        0x1220385a -> :sswitch_1a7
        0x4f30b64f -> :sswitch_19c
        0x78c697e8 -> :sswitch_191
    .end sparse-switch

    :sswitch_data_29d0
    .sparse-switch
        -0x3edf31d1 -> :sswitch_464
        -0x15a386e9 -> :sswitch_459
        -0xc145ad8 -> :sswitch_44e
        0x4744a7b8 -> :sswitch_443
    .end sparse-switch

    :sswitch_data_29e2
    .sparse-switch
        -0x6a3a5990 -> :sswitch_5e5
        -0x562f9482 -> :sswitch_5db
        -0x4e3d6d40 -> :sswitch_5cf
        -0x460411da -> :sswitch_5c3
        -0x39b5211e -> :sswitch_5b7
        -0x37226d22 -> :sswitch_5ab
        -0x3581de92 -> :sswitch_5a0
        -0x30c133a0 -> :sswitch_594
        -0x28516cec -> :sswitch_588
        -0x9cfa0f0 -> :sswitch_57b
        -0x4e1daa7 -> :sswitch_56f
        -0x4445baa -> :sswitch_562
        -0xebe1ca -> :sswitch_555
        0x12bbc810 -> :sswitch_548
        0x5f1771f4 -> :sswitch_53c
        0x730fdeab -> :sswitch_530
        0x75020c0f -> :sswitch_524
        0x788dd2ce -> :sswitch_517
    .end sparse-switch

    :pswitch_data_2a2c
    .packed-switch 0x0
        :pswitch_8ba
        :pswitch_888
        :pswitch_856
        :pswitch_833
        :pswitch_810
        :pswitch_7ed
        :pswitch_7bb
        :pswitch_798
        :pswitch_766
        :pswitch_734
        :pswitch_711
        :pswitch_6ee
        :pswitch_6af
        :pswitch_685
        :pswitch_66a
        :pswitch_64a
        :pswitch_612
        :pswitch_5f7
    .end packed-switch

    :sswitch_data_2a54
    .sparse-switch
        -0x6c43a0eb -> :sswitch_9d7
        -0x5eef4930 -> :sswitch_9cb
        -0x57f5d70e -> :sswitch_9bf
        -0x55af2a6c -> :sswitch_9b3
        -0x42b9a7be -> :sswitch_9a7
        -0x3d0295e2 -> :sswitch_99b
        -0x331a660a -> :sswitch_98f
        -0x2873ac11 -> :sswitch_983
        -0x1ad99baa -> :sswitch_977
        -0x10b8615d -> :sswitch_96a
        -0x53b1dd2 -> :sswitch_95d
        0x21990efc -> :sswitch_950
        0x3e90c48d -> :sswitch_941
        0x405a90ec -> :sswitch_934
        0x53ef861d -> :sswitch_927
        0x5bb25232 -> :sswitch_91a
        0x6bef28f1 -> :sswitch_90d
        0x7c45f31f -> :sswitch_900
    .end sparse-switch

    :pswitch_data_2a9e
    .packed-switch 0x0
        :pswitch_d38
        :pswitch_cee
        :pswitch_cb4
        :pswitch_c90
        :pswitch_c6d
        :pswitch_c52
        :pswitch_c2e
        :pswitch_bf9
        :pswitch_bc4
        :pswitch_ba0
        :pswitch_b6b
        :pswitch_b2c
        :pswitch_af7
        :pswitch_ac7
        :pswitch_a97
        :pswitch_a73
        :pswitch_a0c
        :pswitch_9e9
    .end packed-switch

    :sswitch_data_2ac6
    .sparse-switch
        -0x74a4d725 -> :sswitch_e66
        -0x71206782 -> :sswitch_e5a
        -0x6c0db8af -> :sswitch_e4e
        -0x694bd3d6 -> :sswitch_e42
        -0x553c4d53 -> :sswitch_e36
        -0x4d525a40 -> :sswitch_e2a
        -0x4406e5f2 -> :sswitch_e1e
        -0x39e13355 -> :sswitch_e12
        -0x2de531be -> :sswitch_e06
        -0x1ab59b72 -> :sswitch_df9
        -0xa2586fa -> :sswitch_dec
        0x5ad79eb -> :sswitch_ddf
        0x5be9d3d -> :sswitch_dd2
        0x26581d58 -> :sswitch_dc5
        0x36e6d3e0 -> :sswitch_db8
        0x4bd14915 -> :sswitch_dab
        0x6c3b6517 -> :sswitch_d9e
    .end sparse-switch

    :pswitch_data_2b0c
    .packed-switch 0x0
        :pswitch_128e
        :pswitch_125a
        :pswitch_1237
        :pswitch_1213
        :pswitch_11de
        :pswitch_11a9
        :pswitch_112f
        :pswitch_10fa
        :pswitch_1091
        :pswitch_1028
        :pswitch_fdc
        :pswitch_f61
        :pswitch_f2c
        :pswitch_f0d
        :pswitch_eda
        :pswitch_ea3
        :pswitch_e7f
    .end packed-switch

    :sswitch_data_2b32
    .sparse-switch
        -0x657fd646 -> :sswitch_13b6
        -0x5d9fe8ab -> :sswitch_13a9
        -0x5c7edb84 -> :sswitch_139c
        -0x4bfd3947 -> :sswitch_138f
        -0x38cefab6 -> :sswitch_1382
        -0x36978d55 -> :sswitch_1377
        -0x34742384 -> :sswitch_136b
        -0x2d47f4e1 -> :sswitch_1360
        -0x2b582cae -> :sswitch_1354
        0x3e05fd -> :sswitch_1347
        0x7ed85f2 -> :sswitch_133a
        0x2ea4b8a5 -> :sswitch_132d
        0x3593cbd4 -> :sswitch_1321
        0x3d337bfd -> :sswitch_1315
        0x4ef9c1f9 -> :sswitch_1308
        0x64034c9f -> :sswitch_12fb
        0x71560275 -> :sswitch_12ee
        0x77163a49 -> :sswitch_12e2
        0x7e3d73d9 -> :sswitch_12d7
    .end sparse-switch

    :pswitch_data_2b80
    .packed-switch 0x0
        :pswitch_1737
        :pswitch_1701
        :pswitch_16d2
        :pswitch_169d
        :pswitch_1668
        :pswitch_1644
        :pswitch_1620
        :pswitch_15ea
        :pswitch_15c6
        :pswitch_1590
        :pswitch_156c
        :pswitch_152a
        :pswitch_14de
        :pswitch_14ad
        :pswitch_1489
        :pswitch_1456
        :pswitch_1432
        :pswitch_13e8
        :pswitch_13c9
    .end packed-switch

    :sswitch_data_2baa
    .sparse-switch
        -0x4e857510 -> :sswitch_17fa
        -0x1c894ef7 -> :sswitch_17ed
        -0xe2e3396 -> :sswitch_17e0
        -0x9b47ac1 -> :sswitch_17d3
        0x17f43207 -> :sswitch_17c6
        0x234b9a81 -> :sswitch_17bb
        0x48803b14 -> :sswitch_17ae
        0x4e20b298 -> :sswitch_17a1
        0x60a98cb9 -> :sswitch_1794
        0x65054427 -> :sswitch_1787
        0x75f9239b -> :sswitch_177a
    .end sparse-switch

    :pswitch_data_2bd8
    .packed-switch 0x0
        :pswitch_1ae3
        :pswitch_1aac
        :pswitch_1a88
        :pswitch_1a26
        :pswitch_19f4
        :pswitch_1977
        :pswitch_1931
        :pswitch_190d
        :pswitch_18ab
        :pswitch_182e
        :pswitch_180d
    .end packed-switch

    :sswitch_data_2bf2
    .sparse-switch
        -0x7f91d479 -> :sswitch_1bb9
        -0x7c284bba -> :sswitch_1bad
        -0x6f335556 -> :sswitch_1ba2
        -0x4cb7d87b -> :sswitch_1b95
        -0x2d0cb7a5 -> :sswitch_1b89
        0xdc5fecf -> :sswitch_1b7c
        0x33b94bbf -> :sswitch_1b70
        0x367ce700 -> :sswitch_1b64
        0x465482c9 -> :sswitch_1b57
        0x552e154b -> :sswitch_1b4a
        0x69712d6f -> :sswitch_1b3d
        0x6ab4c78e -> :sswitch_1b30
    .end sparse-switch

    :pswitch_data_2c24
    .packed-switch 0x0
        :pswitch_1dad
        :pswitch_1d89
        :pswitch_1d65
        :pswitch_1d41
        :pswitch_1d1d
        :pswitch_1cf9
        :pswitch_1cc7
        :pswitch_1c95
        :pswitch_1c63
        :pswitch_1c31
        :pswitch_1bfd
        :pswitch_1bcb
    .end packed-switch

    :sswitch_data_2c40
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_1f4e
        -0x3ecb9a99 -> :sswitch_1f42
        0x3ba3e2f0 -> :sswitch_1f36
        0x62658647 -> :sswitch_1f2a
        0x6f38e3dc -> :sswitch_1f1e
    .end sparse-switch

    :sswitch_data_2c56
    .sparse-switch
        -0x7f682541 -> :sswitch_20d0
        -0x6f783fb9 -> :sswitch_20c3
        -0x51cc33cc -> :sswitch_20b6
        -0x4d8cc16d -> :sswitch_20a9
        -0x3d0bb61b -> :sswitch_209c
        -0x3c6ca389 -> :sswitch_208f
        -0x3c036018 -> :sswitch_2082
        -0x3bc628df -> :sswitch_2075
        -0x374aace4 -> :sswitch_2068
        0x6305badd -> :sswitch_205d
        0x692685a1 -> :sswitch_2050
    .end sparse-switch

    :pswitch_data_2c84
    .packed-switch 0x0
        :pswitch_22da
        :pswitch_22a0
        :pswitch_2263
        :pswitch_222d
        :pswitch_21d2
        :pswitch_21b6
        :pswitch_2192
        :pswitch_216e
        :pswitch_214a
        :pswitch_2117
        :pswitch_20e4
    .end packed-switch

    :sswitch_data_2c9e
    .sparse-switch
        -0x74ddc0dd -> :sswitch_2373
        -0x67f870ad -> :sswitch_2367
        -0x499a7018 -> :sswitch_235b
        -0x364e80b3 -> :sswitch_234f
        0x9515810 -> :sswitch_2343
        0x78a801b7 -> :sswitch_2337
    .end sparse-switch

    :sswitch_data_2cb8
    .sparse-switch
        -0x74fa9afd -> :sswitch_24e4
        -0x5319be4a -> :sswitch_24d8
        -0x4ebf90df -> :sswitch_24ce
        -0x3ce44687 -> :sswitch_24c1
        -0x3a6a65ad -> :sswitch_24b4
        -0x103e8c3d -> :sswitch_24a8
        0x292f3f94 -> :sswitch_249b
        0x2eef3494 -> :sswitch_248e
        0x65788769 -> :sswitch_2484
        0x7d586159 -> :sswitch_2478
    .end sparse-switch

    :pswitch_data_2ce2
    .packed-switch 0x0
        :pswitch_269e
        :pswitch_2682
        :pswitch_2641
        :pswitch_260c
        :pswitch_25c5
        :pswitch_259c
        :pswitch_256b
        :pswitch_2550
        :pswitch_2533
        :pswitch_24f8
    .end packed-switch

    :sswitch_data_2cfa
    .sparse-switch
        -0x625ba203 -> :sswitch_274d
        -0x534f8be2 -> :sswitch_2740
        -0x5319be4a -> :sswitch_2734
        -0x4ebf90df -> :sswitch_272c
        -0x11927f68 -> :sswitch_271f
        0x52d2774 -> :sswitch_2712
        0x3670f097 -> :sswitch_2705
        0x3962d1ce -> :sswitch_26f8
        0x6422cbe9 -> :sswitch_26eb
    .end sparse-switch

    :pswitch_data_2d20
    .packed-switch 0x0
        :pswitch_28dd
        :pswitch_2897
        :pswitch_2851
        :pswitch_282d
        :pswitch_2809
        :pswitch_27d8
        :pswitch_27a5
        :pswitch_2784
        :pswitch_2760
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 3051
    const/4 v0, 0x0

    return v0
.end method
