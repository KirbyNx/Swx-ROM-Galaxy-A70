.class public Lcom/samsung/android/knox/analytics/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final IS_ENG:Z

.field private static final IS_SHIP:Z

.field private static final SERVICE_KEEPER_METHOD_NAME:Ljava/lang/String; = "log"

.field private static final SERVICE_KEEPER_SERVICE_NAME:Ljava/lang/String; = "KnoxAnalytics"

.field private static final TAG:Ljava/lang/String;

.field private static final WHITELIST_FOR_TEST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_ENG:Z

    .line 18
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_SHIP:Z

    .line 22
    const-string v1, "com.android.frameworks.knoxservicestests"

    const-string v2, "com.samsung.android.knox.analytics.testapp"

    const-string v3, "com.samsung.android.knox.kpu.demo"

    const-string v4, "com.samsung.android.knox.kpu.poc"

    const-string v5, "com.samsung.knoxautomation"

    const-string v6, "android"

    const-string v7, "root"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->WHITELIST_FOR_TEST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceCallingPermissionForLog(Landroid/content/Context;II)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 67
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string v1, "enforceCallingPermissionForLog(): MyPid"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void

    .line 71
    :cond_e
    const-string v0, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    .line 73
    return-void

    .line 76
    :cond_17
    const-string v0, "KnoxAnalytics"

    const-string v1, "log"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    .line 82
    return-void

    .line 85
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "callingPackage":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 87
    return-void

    .line 91
    :cond_31
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Security Exception Occurred while pid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] with uid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] trying to access methodName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] in ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] service"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final enforceInternalOnly(Ljava/lang/String;I)V
    .registers 5
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .line 51
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 53
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string v1, "enforceInternalOnly(): MyPid"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_e
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 57
    return-void

    .line 60
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Security Exception Occurred while caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to access Content Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforcePackageNameForContentProvider(Ljava/lang/String;I)V
    .registers 5
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 35
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string v1, "enforcePackageNameForContentProvider(): MyPid"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_e
    const-string v0, "com.samsung.android.knox.analytics.uploader"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 39
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    const-string v1, "enforcePackageNameForContentProvider(): allowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_1e
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 43
    return-void

    .line 46
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Security Exception Occurred while caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tried to access Content Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isPackageWhitelisted(Ljava/lang/String;)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 99
    return v0

    .line 101
    :cond_4
    sget-boolean v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_SHIP:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->IS_ENG:Z

    if-nez v1, :cond_d

    .line 103
    return v0

    .line 105
    :cond_d
    sget-object v1, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->WHITELIST_FOR_TEST:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 106
    .local v4, "whitelistedPackage":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 107
    sget-object v0, Lcom/samsung/android/knox/analytics/util/SecurityUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allowing whitelisted package for tests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v4    # "whitelistedPackage":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 111
    :cond_36
    return v0
.end method
