.class public Lcom/android/server/ibs/dnba/NetSpeedUtil;
.super Ljava/lang/Object;
.source "NetSpeedUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static instance:Lcom/android/server/ibs/dnba/NetSpeedUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->instance:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    .line 15
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->mPm:Landroid/content/pm/PackageManager;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ibs/dnba/NetSpeedUtil;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->instance:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/dnba/NetSpeedUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->instance:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    .line 26
    :cond_b
    sget-object v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->instance:Lcom/android/server/ibs/dnba/NetSpeedUtil;

    return-object v0
.end method


# virtual methods
.method public getPackageNameFromUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 43
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidForPackageName(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 34
    goto :goto_c

    .line 33
    :catch_b
    move-exception v1

    .line 35
    :goto_c
    if-eqz v0, :cond_11

    .line 36
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1

    .line 38
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/server/ibs/dnba/NetSpeedUtil;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_7
    return-void
.end method
