.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field private static final CUSTOM_PERMISSION:I = 0x3

.field private static final CUSTOM_PREMIUM_PERMISSION:I = 0x4

.field private static final ENCRYPTION_TYPE_MD5:Ljava/lang/String; = "MD5"

.field private static final ENCRYPTION_TYPE_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final ENCRYPTION_TYPE_X509:Ljava/lang/String; = "X.509"

.field private static final HEX_DIGITS:[C

.field private static final MY_PID:I

.field private static final NO_PERMISSION:I = 0x0

.field private static final PREMIUM_PERMISSION:I = 0x2

.field private static final STANDARD_PERMISSION:I = 0x1

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"

.field private static customPermissions:[Ljava/lang/String;

.field private static premiumPermissions:[Ljava/lang/String;

.field private static standardPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 34

    .line 116
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 119
    const-string v1, "com.samsung.android.knox.permission.KNOX_APN"

    const-string v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const-string v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const-string v5, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const-string v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    const-string v7, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const-string v8, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const-string v9, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const-string v10, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const-string v11, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const-string v12, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const-string v13, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const-string v14, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const-string v15, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const-string v16, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string v17, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const-string v18, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const-string v19, "com.samsung.android.knox.permission.KNOX_DEX"

    const-string v20, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const-string v21, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string v22, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const-string v23, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const-string v24, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const-string v25, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const-string v26, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const-string v27, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const-string v28, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    const-string v29, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const-string v30, "com.samsung.android.knox.permission.KNOX_VPN"

    const-string v31, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const-string v32, "com.samsung.android.knox.permission.KNOX_WIFI"

    const-string v33, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    .line 154
    const-string v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const-string v2, "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const-string v4, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const-string v5, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const-string v6, "com.samsung.android.knox.permission.KNOX_NPA"

    const-string v7, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const-string v8, "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const-string v9, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const-string v10, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const-string v11, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const-string v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const-string v13, "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const-string v14, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const-string v15, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const-string v16, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const-string v17, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const-string v18, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const-string v19, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    const-string v20, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const-string v21, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const-string v22, "com.samsung.android.knox.permission.KNOX_HDM"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    .line 178
    const-string v0, "com.samsung.android.knox.permission.CUSTOM_PROKIOSK"

    const-string v1, "com.samsung.android.knox.permission.CUSTOM_SETTING"

    const-string v2, "com.samsung.android.knox.permission.CUSTOM_SYSTEM"

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    .line 185
    const-string v0, "EnterpriseUtils"

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    .line 186
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    return-void

    :array_9c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .registers 9
    .param p0, "arr"    # [B

    .line 726
    if-eqz p0, :cond_4c

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 728
    .local v0, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v3, p0

    if-ge v1, v3, :cond_47

    .line 729
    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 731
    .local v4, "l":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2c

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 733
    :cond_2c
    if-le v4, v2, :cond_34

    .line 734
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 735
    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ge v1, v6, :cond_44

    .line 737
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "l":I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 739
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 741
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_4c
    const-string v0, ""

    return-object v0
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 769
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_23

    .line 772
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 773
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_22

    .line 774
    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 775
    const/4 v0, 0x1

    return v0

    .line 778
    :cond_22
    return v0

    .line 770
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_23
    :goto_23
    return v0
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 980
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 992
    const/4 v0, 0x0

    if-eqz p2, :cond_51

    if-nez p1, :cond_6

    goto :goto_51

    .line 996
    :cond_6
    const/4 v1, 0x0

    .line 997
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 999
    .local v2, "token":J
    const/16 v4, 0x40

    if-nez p3, :cond_19

    .line 1000
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    goto :goto_29

    .line 1002
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1, v4, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_21} :catch_25
    .catchall {:try_start_f .. :try_end_21} :catchall_23

    move-object v1, v4

    goto :goto_29

    .line 1008
    :catchall_23
    move-exception v0

    goto :goto_4d

    .line 1005
    :catch_25
    move-exception v4

    .line 1006
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_26
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    .line 1008
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_29
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    nop

    .line 1011
    if-eqz v1, :cond_4c

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_4c

    .line 1012
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1013
    .local v4, "signs":[Landroid/content/pm/Signature;
    array-length v5, v4

    move v6, v0

    :goto_37
    if-ge v6, v5, :cond_4c

    aget-object v7, v4, v6

    .line 1014
    .local v7, "sign":Landroid/content/pm/Signature;
    if-eqz v7, :cond_49

    .line 1015
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 1016
    const/4 v0, 0x1

    return v0

    .line 1013
    .end local v7    # "sign":Landroid/content/pm/Signature;
    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 1020
    .end local v4    # "signs":[Landroid/content/pm/Signature;
    :cond_4c
    return v0

    .line 1008
    :goto_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    throw v0

    .line 993
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "token":J
    :cond_51
    :goto_51
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return v0
.end method

.method public static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_4e

    move-object v0, v2

    .line 949
    nop

    .line 950
    if-nez v0, :cond_19

    .line 951
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "Could not Read package info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_19
    if-eqz v0, :cond_4d

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4d

    if-eqz p1, :cond_4d

    .line 954
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 955
    .local v2, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v1

    :goto_2a
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    .line 956
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 958
    :cond_34
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 959
    .local v3, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v1

    :goto_3b
    if-ge v5, v4, :cond_45

    aget-object v6, p1, v5

    .line 960
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 963
    :cond_45
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 964
    const/4 v1, 0x1

    return v1

    .line 969
    .end local v2    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v3    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_4d
    return v1

    .line 946
    :catch_4e
    move-exception v2

    .line 947
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 948
    return v1
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 525
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 526
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "list"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 521
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 902
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating context as user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 907
    .local v1, "token":J
    :try_start_1b
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_24} :catch_2c
    .catchall {:try_start_1b .. :try_end_24} :catchall_2a

    move-object v0, v3

    .line 912
    nop

    :goto_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    goto :goto_51

    .line 912
    :catchall_2a
    move-exception v3

    goto :goto_52

    .line 909
    :catch_2c
    move-exception v3

    .line 910
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2d
    sget-object v4, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_2a

    .line 912
    nop

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_26

    .line 914
    :goto_51
    return-object v0

    .line 912
    :goto_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    throw v3
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 4
    .param p0, "b"    # [B

    .line 465
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 467
    .local v1, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 468
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 469
    return-object v2

    .line 472
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "object":Ljava/lang/Object;
    :catch_13
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    return-object v0

    .line 470
    .end local v1    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return-object v0
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p0, "objectString"    # Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 495
    return-object v0

    .line 497
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_e} :catch_5c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_44

    .line 498
    .local v1, "arrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_e
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3a

    .line 499
    .local v2, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    :try_start_13
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_30

    .line 500
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_26

    .line 501
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_30

    :try_start_1f
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_25} :catch_5c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_44

    .line 500
    return-object v4

    .line 496
    :catchall_26
    move-exception v4

    :try_start_27
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v5

    :try_start_2c
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local p0    # "objectString":Ljava/lang/String;
    :goto_2f
    throw v4
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local p0    # "objectString":Ljava/lang/String;
    :catchall_30
    move-exception v3

    :try_start_31
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v4

    :try_start_36
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local p0    # "objectString":Ljava/lang/String;
    :goto_39
    throw v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .end local v2    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "objectString":Ljava/lang/String;
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "objectString":Ljava/lang/String;
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_44} :catch_5c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 504
    .end local v1    # "arrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "objectString":Ljava/lang/String;
    :catch_44
    move-exception v1

    .line 505
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException to Deserialize Object from String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-object v0

    .line 501
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v0
.end method

.method private static digestBytes([BLjava/lang/String;)[B
    .registers 4
    .param p0, "bytesToDigest"    # [B
    .param p1, "encryptionType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 664
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 667
    :cond_5
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 668
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1

    .line 665
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encodeToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .line 649
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "userId":I
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 819
    .local v1, "userManager":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v2, "userListList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 822
    .local v3, "token":J
    :try_start_13
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 823
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 824
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move v0, v8

    .line 825
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_3c
    .catchall {:try_start_13 .. :try_end_37} :catchall_3a

    .line 826
    nop

    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1b

    .line 823
    .end local v5    # "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_39
    goto :goto_40

    .line 830
    :catchall_3a
    move-exception v5

    goto :goto_45

    .line 827
    :catch_3c
    move-exception v5

    .line 828
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 830
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_40
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    nop

    .line 832
    return-object v2

    .line 830
    :goto_45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    throw v5
.end method

.method public static getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 701
    if-eqz p1, :cond_35

    if-nez p0, :cond_5

    goto :goto_35

    .line 704
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v0, "appPubKeyMD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 707
    .local v1, "appPubKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_34

    .line 708
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 709
    .local v3, "appPubKey":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "MD5"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object v4

    .line 710
    .local v4, "bytes":[B
    if-eqz v4, :cond_33

    .line 711
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v3    # "appPubKey":Ljava/lang/String;
    .end local v4    # "bytes":[B
    :cond_33
    goto :goto_14

    .line 716
    :cond_34
    return-object v0

    .line 702
    .end local v0    # "appPubKeyMD5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "appPubKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getApplicationPubKeys(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 676
    if-eqz p0, :cond_35

    if-nez p1, :cond_5

    goto :goto_35

    .line 680
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v0, "appPubKeys":Ljava/util/ArrayList;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 682
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_34

    .line 683
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 684
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v3

    .line 685
    .local v3, "endcodedPubKey":[B
    if-eqz v3, :cond_31

    .line 686
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v3    # "endcodedPubKey":[B
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 691
    .end local v2    # "i":I
    :cond_34
    return-object v0

    .line 677
    .end local v0    # "appPubKeys":Ljava/util/ArrayList;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 627
    if-eqz p0, :cond_3d

    if-nez p1, :cond_5

    goto :goto_3d

    .line 631
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "appSignatures":Ljava/util/ArrayList;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 633
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_3c

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3c

    .line 634
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    .line 635
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    move-result-object v3

    .line 636
    .local v3, "encodedPubKey":[B
    if-eqz v3, :cond_39

    .line 637
    const-string v4, "SHA-256"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->digestBytes([BLjava/lang/String;)[B

    move-result-object v4

    .line 638
    .local v4, "bytes":[B
    if-eqz v4, :cond_39

    .line 639
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->byte2HexFormatted([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v3    # "encodedPubKey":[B
    .end local v4    # "bytes":[B
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 645
    .end local v2    # "i":I
    :cond_3c
    return-object v0

    .line 628
    .end local v0    # "appSignatures":Ljava/util/ArrayList;
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 4
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 848
    if-nez p0, :cond_c

    .line 849
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p0, v0

    .line 852
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_12

    .line 853
    const/4 v0, 0x0

    return v0

    .line 856
    :cond_12
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 857
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    return v0

    .line 860
    :cond_36
    sget v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_4f

    .line 861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 863
    .local v0, "token":J
    :try_start_42
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_4a

    .line 865
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return v2

    .line 865
    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 866
    throw v2

    .line 870
    .end local v0    # "token":J
    :cond_4f
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 3
    .param p0, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 875
    if-nez p0, :cond_7

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0

    .line 879
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v0, :cond_14

    .line 880
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPseudoAdminUid()I

    move-result v0

    return v0

    .line 883
    :cond_14
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 884
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    .line 886
    :cond_25
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    return v0
.end method

.method private static getEncodedPubKey(Landroid/content/pm/Signature;)[B
    .registers 6
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 604
    if-nez p0, :cond_4

    .line 605
    const/4 v0, 0x0

    return-object v0

    .line 608
    :cond_4
    const/4 v0, 0x0

    .line 609
    .local v0, "cert":Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .line 610
    .local v1, "encondedPubKey":[B
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 611
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 612
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_25

    .line 614
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 615
    .local v4, "pubKey":Ljava/security/PublicKey;
    if-eqz v4, :cond_25

    .line 616
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 619
    .end local v4    # "pubKey":Ljava/security/PublicKey;
    :cond_25
    return-object v1
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 575
    const-string v0, "com.android.mms"

    .line 576
    .local v0, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    .line 577
    const-string v2, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 579
    return-object v0

    .line 586
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 587
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1b} :catch_1d

    .line 590
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_1f

    .line 588
    :catch_1d
    move-exception v2

    .line 589
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    .line 592
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1f
    return-object v1
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 330
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_14

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "count":I
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 334
    :cond_b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 336
    :cond_13
    return v0

    .line 338
    .end local v0    # "count":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static getPermissionType(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "type":I
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 785
    .local v1, "hasStandardPermission":Z
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 786
    .local v2, "hasCustomPermission":Z
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_23

    .line 787
    .local v3, "hasPremiumPermission":Z
    if-eqz v1, :cond_1d

    .line 788
    if-nez v2, :cond_17

    .line 789
    if-nez v3, :cond_15

    .line 790
    const/4 v0, 0x1

    goto :goto_22

    .line 792
    :cond_15
    const/4 v0, 0x2

    goto :goto_22

    .line 795
    :cond_17
    if-nez v3, :cond_1b

    .line 796
    const/4 v0, 0x3

    goto :goto_22

    .line 798
    :cond_1b
    const/4 v0, 0x4

    goto :goto_22

    .line 802
    :cond_1d
    if-nez v2, :cond_22

    .line 803
    if-nez v3, :cond_22

    .line 804
    const/4 v0, 0x0

    .line 810
    .end local v1    # "hasStandardPermission":Z
    .end local v2    # "hasCustomPermission":Z
    .end local v3    # "hasPremiumPermission":Z
    :cond_22
    :goto_22
    goto :goto_2b

    .line 808
    :catch_23
    move-exception v1

    .line 809
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2b
    return v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .registers 7
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .param p1, "proxyUid"    # I

    .line 1025
    const-string v0, "adminUid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    .local v2, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "proxyUid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 1033
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    .line 1034
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1035
    .local v0, "proxyUidFromDB":Ljava/lang/Integer;
    if-eqz v0, :cond_32

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1039
    .end local v0    # "proxyUidFromDB":Ljava/lang/Integer;
    :cond_32
    return p1
.end method

.method private static hasCustomPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 750
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 759
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p2, v2

    .line 760
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/utils/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 761
    .local v4, "permissionGranted":Z
    if-eqz v4, :cond_f

    .line 762
    const/4 v0, 0x1

    return v0

    .line 759
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionGranted":Z
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 765
    :cond_12
    return v1
.end method

.method private static hasPremiumPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasStandardPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/utils/Utils;->hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .registers 7
    .param p0, "i"    # I
    .param p1, "minWidth"    # I

    .line 836
    const/16 v0, 0x8

    .line 837
    .local v0, "bufLen":I
    new-array v1, v0, [C

    .line 838
    .local v1, "buf":[C
    move v2, v0

    .line 841
    .local v2, "cursor":I
    :goto_5
    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 842
    ushr-int/lit8 v3, p0, 0x4

    move p0, v3

    if-nez v3, :cond_20

    sub-int v3, v0, v2

    if-lt v3, p1, :cond_20

    .line 844
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 842
    :cond_20
    goto :goto_5
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;TT;TT;)Z"
        }
    .end annotation

    .line 428
    .local p0, "effective":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "wildCardEntry":Ljava/lang/Object;, "TT;"
    .local p2, "input":Ljava/lang/Object;, "TT;"
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 429
    return v1

    .line 430
    :cond_10
    const-string v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 431
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    .line 434
    :cond_2b
    return v1

    .line 432
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 533
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_7

    .line 538
    nop

    .line 540
    const/4 v0, 0x1

    return v0

    .line 536
    :catch_7
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 534
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 342
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "wildcardEntry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_a

    .line 343
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 344
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 918
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 919
    return v0

    .line 921
    :cond_4
    const/4 v1, 0x0

    .line 923
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_11

    move-object v1, v2

    .line 926
    goto :goto_15

    .line 924
    :catch_11
    move-exception v2

    .line 925
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 927
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_15
    if-nez v1, :cond_2e

    .line 928
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt get Package Info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return v0

    .line 932
    :cond_2e
    const/4 v2, 0x0

    .line 934
    .local v2, "ret":Z
    :try_start_2f
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, v3}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_37

    .line 938
    .end local v2    # "ret":Z
    .local v0, "ret":Z
    nop

    .line 939
    return v0

    .line 935
    .end local v0    # "ret":Z
    .restart local v2    # "ret":Z
    :catch_37
    move-exception v3

    .line 936
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 937
    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z
    .registers 6
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "sysSign"    # [Landroid/content/pm/Signature;

    .line 553
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-nez p0, :cond_6

    goto :goto_33

    .line 558
    :cond_6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_32

    .line 561
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_32

    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_30

    .line 563
    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 564
    return v0

    .line 562
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 567
    .end local v1    # "i":I
    :cond_30
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_32
    return v0

    .line 554
    :cond_33
    :goto_33
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid param, pkgInfo or signature null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v0
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 370
    .local p0, "admin1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p1, "admin2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .local p2, "wildcardEntry":Ljava/lang/Object;, "TT;"
    const-string v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 371
    return-object p1

    .line 372
    :cond_f
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 373
    return-object p0

    .line 376
    :cond_1c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v1, "effectiveListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const-string v3, "BLACKLIST"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 382
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 384
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v2, v4, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v2

    .line 390
    .local v2, "wildcardSetCount":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9b

    .line 393
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 394
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    goto :goto_e6

    .line 395
    :cond_9b
    const/4 v4, 0x1

    if-ne v2, v4, :cond_c8

    .line 400
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 401
    move-object v4, v1

    .line 402
    .local v4, "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v5, p1

    .local v5, "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_af

    .line 404
    .end local v4    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v5    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :cond_ad
    move-object v4, p1

    .line 405
    .restart local v4    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    move-object v5, v1

    .line 407
    .restart local v5    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    :goto_af
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 408
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 409
    .end local v4    # "nonWildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    .end local v5    # "wildCardListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<TT;>;>;"
    goto :goto_e6

    .line 411
    :cond_c8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 414
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 418
    :goto_e6
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 421
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 423
    return-object v1
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aFileName"    # Ljava/lang/String;

    .line 198
    const-string v0, "="

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "lFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 200
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Not Found : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v3

    .line 206
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2a} :catch_a8

    .line 211
    .local v2, "lFReader":Ljava/io/FileReader;
    nop

    .line 213
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 215
    .local v4, "lBufReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 216
    .local v5, "lLine":Ljava/lang/String;
    :cond_33
    :try_start_33
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_70

    .line 217
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 219
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "lParsedString":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_53

    const/4 v6, 0x1

    aget-object v6, v0, v6

    goto :goto_55

    :cond_53
    const-string v6, ""

    .line 221
    .local v6, "result":Ljava/lang/String;
    :goto_55
    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5c} :catch_83
    .catchall {:try_start_33 .. :try_end_5c} :catchall_81

    if-eqz v3, :cond_5f

    .line 222
    const/4 v6, 0x0

    .line 223
    :cond_5f
    nop

    .line 231
    nop

    .line 232
    :try_start_61
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 233
    const/4 v2, 0x0

    .line 235
    nop

    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_6b

    .line 237
    const/4 v4, 0x0

    .line 241
    goto :goto_6f

    .line 239
    :catch_6b
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6f
    return-object v6

    .line 231
    .end local v0    # "lParsedString":[Ljava/lang/String;
    .end local v5    # "lLine":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :cond_70
    nop

    .line 232
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 233
    const/4 v2, 0x0

    .line 235
    nop

    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7b

    .line 237
    const/4 v4, 0x0

    .line 241
    goto :goto_80

    .line 239
    :catch_7b
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 243
    :goto_80
    return-object v3

    .line 230
    :catchall_81
    move-exception v0

    goto :goto_98

    .line 226
    :catch_83
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_81

    .line 228
    nop

    .line 231
    nop

    .line 232
    :try_start_89
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 233
    const/4 v2, 0x0

    .line 235
    nop

    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_91} :catch_93

    .line 237
    const/4 v4, 0x0

    .line 241
    goto :goto_97

    .line 239
    :catch_93
    move-exception v5

    .line 240
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    .end local v5    # "e":Ljava/io/IOException;
    :goto_97
    return-object v3

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_98
    nop

    .line 232
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 233
    const/4 v2, 0x0

    .line 235
    nop

    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a1} :catch_a3

    .line 237
    const/4 v4, 0x0

    .line 241
    goto :goto_a7

    .line 239
    :catch_a3
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    .end local v3    # "e":Ljava/io/IOException;
    :goto_a7
    throw v0

    .line 207
    .end local v2    # "lFReader":Ljava/io/FileReader;
    .end local v4    # "lBufReader":Ljava/io/BufferedReader;
    :catch_a8
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 209
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File access error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v3
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 4
    .param p0, "o"    # Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 445
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 446
    .local v1, "out":Ljava/io/ObjectOutput;
    invoke-interface {v1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 447
    invoke-interface {v1}, Ljava/io/ObjectOutput;->close()V

    .line 450
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    .line 451
    .local v2, "buf":[B
    return-object v2

    .line 452
    .end local v1    # "out":Ljava/io/ObjectOutput;
    .end local v2    # "buf":[B
    :catch_15
    move-exception v1

    .line 453
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    const/4 v2, 0x0

    return-object v2
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "object"    # Ljava/lang/Object;

    .line 478
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 479
    return-object v0

    .line 481
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_4f

    .line 482
    .local v1, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_9
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_45

    .line 483
    .local v2, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_e
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3b

    .line 484
    .local v3, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_13
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 486
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_31

    .line 487
    :try_start_27
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3b

    :try_start_2a
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_45

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4f

    .line 486
    return-object v4

    .line 480
    :catchall_31
    move-exception v4

    :try_start_32
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception v5

    :try_start_37
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "object":Ljava/lang/Object;
    :goto_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "object":Ljava/lang/Object;
    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v4

    :try_start_41
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "object":Ljava/lang/Object;
    :goto_44
    throw v3
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .end local v2    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "object":Ljava/lang/Object;
    :catchall_45
    move-exception v2

    :try_start_46
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception v3

    :try_start_4b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "object":Ljava/lang/Object;
    :goto_4e
    throw v2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 487
    .end local v1    # "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "object":Ljava/lang/Object;
    :catch_4f
    move-exception v1

    .line 488
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException to Serialize Object to String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 511
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 514
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "aPropName"    # Ljava/lang/String;
    .param p1, "aPropValue"    # Ljava/lang/String;
    .param p2, "aFileName"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "lSuccess":Z
    const/4 v1, 0x0

    .line 263
    .local v1, "ps":Ljava/io/PrintStream;
    const/4 v2, 0x0

    .line 264
    .local v2, "lFReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 266
    .local v3, "lBufReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v4, "lFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 269
    nop

    .line 271
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a4

    .line 270
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 278
    :cond_1d
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 279
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v5, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v5

    .line 281
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 282
    .local v5, "lStrBuffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 283
    .local v6, "lFound":Z
    :goto_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_ae
    .catchall {:try_start_4 .. :try_end_37} :catchall_ac

    move-object v8, v7

    .local v8, "lLine":Ljava/lang/String;
    const-string/jumbo v9, "line.separator"

    const-string v10, "="

    if-eqz v7, :cond_6b

    .line 284
    :try_start_3f
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aget-object v7, v7, v11

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 286
    const/4 v6, 0x1

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 289
    :cond_60
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 294
    :cond_6b
    if-nez v6, :cond_89

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 301
    const/4 v3, 0x0

    .line 302
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_9a} :catch_ae
    .catchall {:try_start_3f .. :try_end_9a} :catchall_ac

    .line 304
    const/4 v0, 0x1

    .line 309
    .end local v4    # "lFile":Ljava/io/File;
    .end local v5    # "lStrBuffer":Ljava/lang/StringBuffer;
    .end local v6    # "lFound":Z
    .end local v8    # "lLine":Ljava/lang/String;
    nop

    .line 310
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 311
    const/4 v2, 0x0

    .line 314
    if-eqz v3, :cond_a6

    .line 315
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a5} :catch_a7

    .line 316
    const/4 v3, 0x0

    .line 320
    :cond_a6
    goto :goto_ab

    .line 318
    :catch_a7
    move-exception v4

    .line 319
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    .end local v4    # "e":Ljava/io/IOException;
    :goto_ab
    goto :goto_c9

    .line 308
    :catchall_ac
    move-exception v4

    goto :goto_ce

    .line 305
    :catch_ae
    move-exception v4

    .line 306
    .local v4, "e":Ljava/lang/Exception;
    :try_start_af
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ac

    .line 309
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_bb

    .line 310
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 311
    const/4 v2, 0x0

    goto :goto_bb

    .line 318
    :catch_b9
    move-exception v4

    goto :goto_c2

    .line 314
    :cond_bb
    :goto_bb
    if-eqz v3, :cond_c6

    .line 315
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c0} :catch_b9

    .line 316
    const/4 v3, 0x0

    goto :goto_c6

    .line 319
    .local v4, "e":Ljava/io/IOException;
    :goto_c2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c7

    .line 320
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c6
    :goto_c6
    nop

    .line 321
    :goto_c7
    if-eqz v1, :cond_cd

    .line 322
    :goto_c9
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 323
    const/4 v1, 0x0

    .line 326
    :cond_cd
    return v0

    .line 309
    :goto_ce
    if-eqz v2, :cond_d7

    .line 310
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 311
    const/4 v2, 0x0

    goto :goto_d7

    .line 318
    :catch_d5
    move-exception v5

    goto :goto_de

    .line 314
    :cond_d7
    :goto_d7
    if-eqz v3, :cond_e2

    .line 315
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_dc} :catch_d5

    .line 316
    const/4 v3, 0x0

    goto :goto_e2

    .line 319
    .local v5, "e":Ljava/io/IOException;
    :goto_de
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e3

    .line 320
    .end local v5    # "e":Ljava/io/IOException;
    :cond_e2
    :goto_e2
    nop

    .line 321
    :goto_e3
    if-eqz v1, :cond_e9

    .line 322
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 323
    const/4 v1, 0x0

    .line 325
    :cond_e9
    throw v4
.end method
