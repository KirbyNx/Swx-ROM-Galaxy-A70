.class public Lcom/android/server/telecom/InternalServiceRepository;
.super Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;
.source "InternalServiceRepository.java"


# instance fields
.field private final mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field private final mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleInternal;)V
    .registers 3
    .param p1, "deviceIdleController"    # Lcom/android/server/DeviceIdleInternal;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;-><init>()V

    .line 35
    new-instance v0, Lcom/android/server/telecom/InternalServiceRepository$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InternalServiceRepository$1;-><init>(Lcom/android/server/telecom/InternalServiceRepository;)V

    iput-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;

    .line 48
    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/InternalServiceRepository;)Lcom/android/server/DeviceIdleInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/telecom/InternalServiceRepository;

    .line 33
    iget-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    return-object v0
.end method

.method private ensureSystemProcess()V
    .registers 3

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 62
    return-void

    .line 60
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SYSTEM ONLY API."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/android/server/telecom/InternalServiceRepository;->ensureSystemProcess()V

    .line 54
    iget-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleControllerAdapter:Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;

    return-object v0
.end method
