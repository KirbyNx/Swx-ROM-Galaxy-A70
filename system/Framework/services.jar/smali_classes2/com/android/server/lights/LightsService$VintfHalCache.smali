.class Lcom/android/server/lights/LightsService$VintfHalCache;
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
    name = "VintfHalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/hardware/light/ILights;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private mInstance:Landroid/hardware/light/ILights;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/lights/LightsService$1;

    .line 901
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 2

    monitor-enter p0

    .line 924
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 925
    monitor-exit p0

    return-void

    .line 923
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfHalCache;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Landroid/hardware/light/ILights;
    .registers 6

    monitor-enter p0

    .line 907
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    if-nez v0, :cond_35

    .line 908
    const-string v0, "android.hardware.light.ILights/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_35

    .line 911
    invoke-static {v0}, Landroid/hardware/light/ILights$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/light/ILights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_39

    .line 913
    const/4 v1, 0x0

    :try_start_18
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_39

    .line 916
    goto :goto_35

    .line 914
    .end local p0    # "this":Lcom/android/server/lights/LightsService$VintfHalCache;
    :catch_1c
    move-exception v1

    .line 915
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register DeathRecipient for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Landroid/hardware/light/ILights;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object v0

    .line 906
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 901
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$VintfHalCache;->get()Landroid/hardware/light/ILights;

    move-result-object v0

    return-object v0
.end method
