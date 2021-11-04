.class public Lcom/android/server/VaultKeeperService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VaultKeeperService$Lifecycle"


# instance fields
.field private mVaultKeeperService:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 59
    const-string v0, "Unknown"

    .line 60
    .local v0, "current":Ljava/lang/String;
    const/16 v1, 0x64

    if-eq p1, v1, :cond_31

    const/16 v2, 0x1e0

    if-eq p1, v2, :cond_2e

    const/16 v2, 0x1f4

    if-eq p1, v2, :cond_2b

    const/16 v2, 0x208

    if-eq p1, v2, :cond_28

    const/16 v2, 0x226

    if-eq p1, v2, :cond_25

    const/16 v2, 0x258

    if-eq p1, v2, :cond_22

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_1f

    goto :goto_34

    .line 80
    :cond_1f
    const-string v0, "PHASE_BOOT_COMPLETED"

    goto :goto_34

    .line 77
    :cond_22
    const-string v0, "PHASE_THIRD_PARTY_APPS_CAN_START"

    .line 78
    goto :goto_34

    .line 74
    :cond_25
    const-string v0, "PHASE_ACTIVITY_MANAGER_READY"

    .line 75
    goto :goto_34

    .line 71
    :cond_28
    const-string v0, "PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    .line 72
    goto :goto_34

    .line 68
    :cond_2b
    const-string v0, "PHASE_SYSTEM_SERVICES_READY"

    .line 69
    goto :goto_34

    .line 65
    :cond_2e
    const-string v0, "PHASE_LOCK_SETTINGS_READY"

    .line 66
    goto :goto_34

    .line 62
    :cond_31
    const-string v0, "PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    .line 63
    nop

    .line 84
    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VaultKeeperService$Lifecycle"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-ne p1, v1, :cond_56

    .line 87
    iget-object v1, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    invoke-virtual {v1}, Lcom/android/server/VaultKeeperService;->systemReady()V

    .line 89
    :cond_56
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 51
    const-string v0, "VaultKeeperService$Lifecycle"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/android/server/VaultKeeperService;

    invoke-virtual {p0}, Lcom/android/server/VaultKeeperService$LifeCycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    .line 53
    const-string v1, "VaultKeeperService"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/VaultKeeperService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    return-void
.end method
