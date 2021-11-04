.class public Lcom/android/server/GrdmIcccManagerService;
.super Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;
.source "GrdmIcccManagerService.java"


# static fields
.field private static final KNOX_ATTESTATION_AGENT:Ljava/lang/String; = "com.samsung.android.knox.attestation"

.field static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "GrdmIcccManagerService"

    sput-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/icccgrdm/IGrdmIntegrityControlCheckCenter$Stub;-><init>()V

    .line 39
    sget-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Start GrdmIcccManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sput-object p1, Lcom/android/server/GrdmIcccManagerService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private getCallerPackageName(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .line 45
    sget-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCallerPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "packageName":Ljava/lang/String;
    :try_start_9
    sget-object v1, Lcom/android/server/GrdmIcccManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 49
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_19

    move-object v0, v2

    .line 51
    .end local v1    # "am":Landroid/app/ActivityManager;
    goto :goto_1a

    .line 50
    :catch_19
    move-exception v1

    .line 52
    :goto_1a
    return-object v0
.end method

.method static native grdm_iccc_attestation_platform([B)[B
.end method

.method static native grdm_iccc_load()I
.end method

.method static native grdm_iccc_unload()I
.end method


# virtual methods
.method public declared-synchronized grdmSetAttestationData([B)[B
    .registers 5
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    sget-object v0, Lcom/android/server/GrdmIcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "grdmSetAttestationData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "response":[B
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/GrdmIcccManagerService;->getCallerPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.samsung.android.knox.attestation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 74
    invoke-static {p1}, Lcom/android/server/GrdmIcccManagerService;->grdm_iccc_attestation_platform([B)[B

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_21

    move-object v0, v2

    .line 84
    .end local p0    # "this":Lcom/android/server/GrdmIcccManagerService;
    :cond_1f
    monitor-exit p0

    return-object v0

    .line 56
    .end local v0    # "response":[B
    .end local v1    # "packageName":Ljava/lang/String;
    .end local p1    # "blob":[B
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
