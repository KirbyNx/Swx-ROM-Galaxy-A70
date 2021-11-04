.class Landroid/net/NetworkStackClient$DependenciesImpl;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"

# interfaces
.implements Landroid/net/NetworkStackClient$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependenciesImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetworkStackClient$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/net/NetworkStackClient$1;

    .line 89
    invoke-direct {p0}, Landroid/net/NetworkStackClient$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addToServiceManager(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "service"    # Landroid/os/IBinder;

    .line 92
    const-string/jumbo v0, "network_stack"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 94
    return-void
.end method

.method public checkCallerUid()V
    .registers 4

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 104
    .local v0, "caller":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x431

    if-eq v0, v1, :cond_1d

    .line 106
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_15

    goto :goto_1d

    .line 107
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system server should try to bind to the network stack."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1d
    :goto_1d
    return-void
.end method

.method public getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;
    .registers 2

    .line 114
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    return-object v0
.end method
