.class public Lcom/android/server/ibs/SARR/SmartAdaptRRAction;
.super Ljava/lang/Object;
.source "SmartAdaptRRAction.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SmartAdaptRRAction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

.field private mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/SARR/SmartAdaptRRManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sarr"    # Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 25
    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    .line 28
    iput-object p2, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    .line 29
    iput-object p1, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->getDisplayManagerInternal()V

    .line 31
    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->getDisplayManagerServices()V

    .line 32
    return-void
.end method


# virtual methods
.method public getDisplayManagerInternal()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_e

    .line 61
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 63
    :cond_e
    return-void
.end method

.method public getDisplayManagerServices()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_10

    .line 67
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 69
    :cond_10
    return-void
.end method

.method public setRefreshRate(Z)Z
    .registers 5
    .param p1, "allow"    # Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setRefreshRate start! allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAdaptRRAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_1d

    .line 37
    invoke-virtual {p0}, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->getDisplayManagerServices()V

    .line 39
    :cond_1d
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v0, :cond_5b

    .line 41
    if-eqz p1, :cond_45

    .line 42
    :try_start_23
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mSmartAdaptRRManager:Lcom/android/server/ibs/SARR/SmartAdaptRRManager;

    invoke-virtual {v0}, Lcom/android/server/ibs/SARR/SmartAdaptRRManager;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_34

    goto :goto_43

    .line 43
    :cond_34
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->acquireLowRefreshRateToken(Ljava/lang/String;)Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    .line 44
    const-string/jumbo v0, "set success!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 42
    :cond_43
    :goto_43
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_45
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    if-eqz v0, :cond_51

    .line 47
    iget-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ILowRefreshRateToken;->release()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/SARR/SmartAdaptRRAction;->mLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_51} :catch_52

    .line 54
    :cond_51
    :goto_51
    goto :goto_5b

    .line 51
    :catch_52
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 53
    const-string v2, "binder call failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    return v0
.end method
