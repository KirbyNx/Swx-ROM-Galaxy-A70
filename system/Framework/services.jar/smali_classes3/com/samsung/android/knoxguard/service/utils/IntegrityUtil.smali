.class public Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;
.super Ljava/lang/Object;
.source "IntegrityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KG."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "rlcState"    # Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkKGClientIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rlcState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz p1, :cond_8d

    .line 24
    const-string v0, "Completed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 25
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_8d

    .line 30
    :cond_30
    :try_start_30
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v0

    .line 31
    .local v0, "checkSig":Z
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isSystemApp(Landroid/content/Context;)Z

    move-result v1

    .line 32
    .local v1, "isSysapp":Z
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 34
    .local v2, "isEnabled":Z
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSignatures : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSystemApp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_7e} :catch_81

    .line 39
    and-int v3, v0, v2

    return v3

    .line 40
    .end local v0    # "checkSig":Z
    .end local v1    # "isSysapp":Z
    .end local v2    # "isEnabled":Z
    :catch_81
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v1, 0x0

    return v1

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8d
    :goto_8d
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkKGClientIntegrity() RLC_STATE_COMPLETED || RLC_STATE_NULL. Do nothing."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .registers 8
    .param p0, "mContext"    # Landroid/content/Context;

    .line 48
    const-string v0, "com.samsung.android.kgclient"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 49
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 51
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    const/16 v4, 0x40

    :try_start_a
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v2, v4

    .line 52
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkgInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v4, "android"

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    .line 55
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v4, "KG Client signature doesn\'t match with platform."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v3

    .line 58
    :cond_39
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v4, "KG Client signature match with platform."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_42

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :catch_42
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkKGClientIntegrity Exception. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "com.samsung.android.kgclient"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 84
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_e

    return v1

    .line 85
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_e
    move-exception v2

    .line 86
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnabled NameNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "com.samsung.android.kgclient"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 71
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_13

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 72
    return v4

    .line 76
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_12
    goto :goto_2a

    .line 74
    :catch_13
    move-exception v2

    .line 75
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSystemApp NameNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2a
    return v1
.end method

.method public static setInitialState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "rlcState"    # Ljava/lang/String;

    .line 92
    const-string v0, "com.samsung.android.kgclient"

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v2, "setInitialState"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 97
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_1b

    .line 98
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v2, "DPM is not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_20
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_23} :catch_c9

    .line 108
    nop

    .line 111
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 113
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v3, "KGClient is malicious, it will be locked"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_32
    if-eqz p1, :cond_c8

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c8

    const-string v4, "Completed"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 118
    :try_start_44
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 119
    .local v4, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 120
    .local v5, "iPm":Landroid/content/pm/IPackageManager;
    invoke-interface {v5, v0, v4}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 121
    invoke-interface {v5, v0, v3, v4}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_55} :catch_56

    .line 125
    .end local v4    # "userId":I
    .end local v5    # "iPm":Landroid/content/pm/IPackageManager;
    :cond_55
    goto :goto_71

    .line 123
    :catch_56
    move-exception v4

    .line 124
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_71
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.kgclient.receiver.KGAdminReceiver"

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v4, "adminReceiver":Landroid/content/ComponentName;
    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 131
    :try_start_7e
    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    .line 134
    goto :goto_99

    .line 132
    :catch_82
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.samsung.android.kgclientsetActiveAdmin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_99
    :goto_99
    :try_start_99
    const-string v5, "appops"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    .line 143
    .local v5, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 144
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3f

    invoke-virtual {v5, v8, v7, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 146
    .local v7, "mode":I
    if-eqz v7, :cond_bf

    .line 147
    sget-object v9, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v10, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8, v9, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_bf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_99 .. :try_end_bf} :catch_c0

    .line 164
    .end local v7    # "mode":I
    :cond_bf
    goto :goto_c8

    .line 162
    .end local v5    # "appOps":Landroid/app/AppOpsManager;
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :catch_c0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    const-string v5, "com.samsung.android.kgclientNot found??"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "adminReceiver":Landroid/content/ComponentName;
    :cond_c8
    :goto_c8
    return-void

    .line 105
    :catch_c9
    move-exception v0

    .line 106
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/knoxguard/service/utils/IntegrityUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client Notfound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
