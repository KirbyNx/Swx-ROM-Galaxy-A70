.class public Lcom/android/server/enterprise/utils/KpuHelper;
.super Ljava/lang/Object;
.source "KpuHelper.java"


# static fields
.field private static final KPU_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.kpu"

.field private static final TAG:Ljava/lang/String; = "KpuHelper"

.field private static sInstance:Lcom/android/server/enterprise/utils/KpuHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKpuPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/utils/KpuHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/KpuHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    .line 48
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    return-object v0
.end method

.method private getSepSignature()Ljava/lang/String;
    .registers 2

    .line 150
    const-string v0, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    return-object v0
.end method

.method private isDoPresent()Z
    .registers 7

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_1c
    .catchall {:try_start_5 .. :try_end_13} :catchall_1a

    .line 115
    .local v4, "deviceOwnerComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_16

    const/4 v2, 0x1

    .line 120
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return v2

    .line 120
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "deviceOwnerComponent":Landroid/content/ComponentName;
    :catchall_1a
    move-exception v2

    goto :goto_2d

    .line 116
    :catch_1c
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v4, "KpuHelper"

    const-string v5, "Failed to retrieve DO on device"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    .line 120
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    nop

    .line 122
    return v2

    .line 120
    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    throw v2
.end method


# virtual methods
.method public getKpuPackageName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "com.samsung.android.knox.kpu"

    :goto_7
    return-object v0
.end method

.method public isCallerKpu()Z
    .registers 5

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 165
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "callingPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 168
    return v2

    .line 171
    :cond_12
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 172
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_20

    .line 175
    :cond_1f
    return v2

    .line 173
    :cond_20
    :goto_20
    const/4 v2, 0x1

    return v2
.end method

.method public isCallerValidKpu(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 63
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "callingPackage":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 66
    return v2

    .line 69
    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    .line 75
    :cond_22
    return v2

    .line 71
    :cond_23
    :goto_23
    const-string/jumbo v3, "ro.product_ship"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_40

    .line 72
    :cond_38
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "KPU app does not have a valid signature.."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_40
    :goto_40
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 81
    .local v3, "userId":I
    iget-boolean v5, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez v5, :cond_55

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ne v3, v5, :cond_4d

    goto :goto_55

    .line 82
    :cond_4d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU userId does not match with ContextInfo.mContainerId.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_55
    :goto_55
    if-nez v3, :cond_68

    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->isDoPresent()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 91
    iput-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 92
    return v4

    .line 89
    :cond_60
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU cannot apply policies in user 0 space if DO is not present on device.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_68
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 96
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result v2

    if-nez v2, :cond_77

    .line 99
    iput-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 100
    return v4

    .line 97
    :cond_77
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "KPU must be inside PO to be able to call container or parent APIs.."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_7f
    return v2
.end method

.method public isKpuPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 180
    const-string v0, "com.samsung.android.knox.kpu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKpuPermissionGranted(I)Z
    .registers 4
    .param p1, "installerUid"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "callerPackage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isKpuPermissionGranted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 191
    const-string v0, "KpuHelper"

    const-string v1, "Caller does not have KPU permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public isKpuPlatformSigned(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 132
    .local v0, "SEP_LITE":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getSepSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3, p2}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 135
    return v1

    .line 138
    :cond_1c
    iget-object v2, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2c

    if-nez v2, :cond_2b

    .line 139
    return v1

    .line 143
    .end local v0    # "SEP_LITE":Z
    :cond_2b
    goto :goto_30

    .line 141
    :catch_2c
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    const/4 v0, 0x0

    return v0
.end method
