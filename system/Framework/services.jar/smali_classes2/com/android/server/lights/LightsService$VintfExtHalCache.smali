.class Lcom/android/server/lights/LightsService$VintfExtHalCache;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VintfExtHalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lvendor/samsung/hardware/light/ISehLights;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private mInstance:Lvendor/samsung/hardware/light/ISehLights;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/lights/LightsService$1;

    .line 929
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$VintfExtHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 2

    monitor-enter p0

    .line 952
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 953
    monitor-exit p0

    return-void

    .line 951
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfExtHalCache;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 929
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$VintfExtHalCache;->get()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized get()Lvendor/samsung/hardware/light/ISehLights;
    .registers 6

    monitor-enter p0

    .line 935
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    if-nez v0, :cond_39

    .line 936
    const-string v0, "android.hardware.light.ILights/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3d

    .line 938
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_39

    .line 940
    :try_start_11
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/light/ISehLights$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    .line 941
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_20
    .catchall {:try_start_11 .. :try_end_1f} :catchall_3d

    .line 944
    goto :goto_39

    .line 942
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfExtHalCache;
    :catch_20
    move-exception v1

    .line 943
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register DeathRecipient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    .line 934
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
