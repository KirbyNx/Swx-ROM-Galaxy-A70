.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 109
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 111
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    nop

    .line 112
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 113
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    .line 114
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1e

    move v4, v3

    goto :goto_1f

    :cond_1e
    move v4, v2

    .line 116
    .local v4, "hasCarrierPrivileges":Z
    :goto_1f
    if-eqz v0, :cond_2a

    const/4 v5, -0x2

    invoke-virtual {v0, p1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v3

    goto :goto_2b

    :cond_2a
    move v5, v2

    .line 118
    .local v5, "isDeviceOwner":Z
    :goto_2b
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 119
    .local v6, "appId":I
    if-nez v4, :cond_5d

    if-nez v5, :cond_5d

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_5d

    const/16 v7, 0x431

    if-ne v6, v7, :cond_3c

    goto :goto_5d

    .line 126
    :cond_3c
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 127
    .local v7, "hasAppOpsPermission":Z
    if-nez v7, :cond_5b

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4b

    goto :goto_5b

    .line 132
    :cond_4b
    if-eqz v0, :cond_56

    const/4 v8, -0x1

    invoke-virtual {v0, p1, v8}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v8

    if-eqz v8, :cond_56

    move v8, v3

    goto :goto_57

    :cond_56
    move v8, v2

    .line 134
    .local v8, "isProfileOwner":Z
    :goto_57
    if-eqz v8, :cond_5a

    .line 137
    return v3

    .line 141
    :cond_5a
    return v2

    .line 129
    .end local v8    # "isProfileOwner":Z
    :cond_5b
    :goto_5b
    const/4 v2, 0x2

    return v2

    .line 123
    .end local v7    # "hasAppOpsPermission":Z
    :cond_5d
    :goto_5d
    const/4 v2, 0x3

    return v2
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    if-eqz p2, :cond_23

    .line 179
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 182
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1f

    .line 187
    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    .line 189
    .local v3, "permissionCheck":I
    if-nez v3, :cond_1e

    move v0, v4

    :cond_1e
    return v0

    .line 191
    .end local v3    # "permissionCheck":I
    :cond_1f
    if-nez v2, :cond_22

    move v0, v4

    :cond_22
    return v0

    .line 193
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "mode":I
    :cond_23
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .registers 9
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I
    .param p2, "accessLevel"    # I

    .line 150
    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_32

    const/4 v5, 0x2

    if-eq p2, v5, :cond_13

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    .line 172
    if-ne p0, p1, :cond_11

    move v3, v4

    :cond_11
    return v3

    .line 153
    :cond_12
    return v4

    .line 158
    :cond_13
    if-eq p0, v2, :cond_30

    if-eq p0, v1, :cond_30

    if-eq p0, v0, :cond_30

    const/4 v0, -0x1

    if-eq p0, v0, :cond_30

    .line 160
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_30

    .line 162
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsAccess;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_30
    move v3, v4

    .line 158
    :cond_31
    return v3

    .line 166
    :cond_32
    if-eq p0, v2, :cond_42

    if-eq p0, v1, :cond_42

    if-eq p0, v0, :cond_42

    .line 168
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_43

    :cond_42
    move v3, v4

    .line 166
    :cond_43
    return v3
.end method

.method private static isSecureFolderId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 198
    const/16 v0, 0x96

    if-lt p0, v0, :cond_a

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
