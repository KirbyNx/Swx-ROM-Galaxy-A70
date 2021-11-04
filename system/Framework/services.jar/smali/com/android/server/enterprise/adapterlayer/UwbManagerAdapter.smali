.class public Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
.super Ljava/lang/Object;
.source "UwbManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

.field private static mUwbAdapter:Lsamsung/uwb/UwbAdapter;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    if-nez v1, :cond_18

    .line 44
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mContext:Landroid/content/Context;

    .line 45
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    .line 46
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsamsung/uwb/UwbAdapter;->getUwbAdapter(Landroid/content/Context;)Lsamsung/uwb/UwbAdapter;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    .line 49
    :cond_18
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    .line 42
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableUWB(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .line 53
    const/4 v0, 0x1

    .line 55
    .local v0, "result":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    .line 56
    :try_start_5
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    invoke-virtual {v3}, Lsamsung/uwb/UwbAdapter;->enable()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    move v0, v1

    goto :goto_1c

    .line 58
    :cond_11
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mUwbAdapter:Lsamsung/uwb/UwbAdapter;

    invoke-virtual {v3}, Lsamsung/uwb/UwbAdapter;->disable()I

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_1d

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    move v0, v1

    .line 61
    :goto_1c
    goto :goto_27

    .line 59
    :catch_1d
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UwbManagerAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    return v0
.end method
