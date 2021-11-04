.class public Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"


# static fields
.field private static final MSG_SERVICE_DIED:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field info:Lcom/android/server/ContainerServiceInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContainerService:Lcom/samsung/android/knox/IContainerService;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "knoxService"    # Lcom/android/server/pm/PersonaServiceProxy;
    .param p3, "arg"    # Lcom/android/server/ContainerServiceInfo;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "KnoxService::ContainerServiceWrapper"

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 99
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    .line 34
    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 36
    iget v0, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput v0, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    .line 37
    iget-object v0, p3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->category:Ljava/lang/String;

    .line 38
    iget-object v0, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;

    .line 18
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;

    .line 18
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)Lcom/samsung/android/knox/IContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;
    .param p1, "x1"    # Lcom/samsung/android/knox/IContainerService;

    .line 18
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/ContainerServiceWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;

    .line 18
    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/ContainerServiceWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ContainerServiceWrapper;

    .line 18
    invoke-direct {p0}, Lcom/android/server/ContainerServiceWrapper;->triggerRestart()V

    return-void
.end method

.method private triggerRestart()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 7

    .line 42
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 51
    if-nez v1, :cond_67

    .line 52
    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t bind to container service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_67
    iget-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v1
.end method

.method public disconnect()Z
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 60
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 63
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Ubinding service is successful..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_1c
    return v1
.end method

.method public isBound()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return v0
.end method

.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v0

    .line 118
    :cond_b
    goto :goto_34

    .line 114
    :catch_c
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 116
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    const/4 v0, 0x0

    return-object v0
.end method
