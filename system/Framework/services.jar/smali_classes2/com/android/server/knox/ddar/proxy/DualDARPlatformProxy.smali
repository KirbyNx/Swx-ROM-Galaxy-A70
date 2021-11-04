.class public Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DualDARPlatformProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualDARPlatformProxy"

.field private static mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARPlatformProxy"

    const-string v2, "DualDARPlatformProxy() constructor"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "params"    # Landroid/os/Bundle;

    .line 61
    const-string v0, "DualDARPlatformProxy"

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "userId":I
    const/4 v2, -0x1

    .line 65
    .local v2, "adminUid":I
    const/4 v3, 0x0

    :try_start_b
    const-string v4, "DualDARPolicy"

    .line 66
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_51

    .line 67
    .local v4, "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    if-eqz v4, :cond_50

    .line 69
    :try_start_17
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 70
    .local v5, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_29} :catch_51

    move v2, v6

    .line 73
    .end local v5    # "cn":Landroid/content/ComponentName;
    goto :goto_46

    .line 71
    :catch_2b
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConfig failed ! Component may be null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_46
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v4, v5}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4f} :catch_51

    return-object v0

    .line 78
    .end local v4    # "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    :cond_50
    goto :goto_59

    .line 76
    :catch_51
    move-exception v4

    .line 77
    .local v4, "e":Landroid/os/RemoteException;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "getConfig Failed"

    invoke-static {v0, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_59
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    if-nez v1, :cond_e

    .line 30
    new-instance v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    .line 32
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mInstance:Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 28
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setClientInfo(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "params"    # Landroid/os/Bundle;

    .line 86
    const-string v0, "DualDARPlatformProxy"

    const/4 v1, -0x1

    .line 87
    .local v1, "adminUid":I
    const/4 v2, -0x1

    .line 90
    .local v2, "userId":I
    const/4 v3, 0x0

    :try_start_5
    const-string/jumbo v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 91
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 92
    .local v4, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_21

    move v1, v5

    .line 95
    .end local v4    # "cn":Landroid/content/ComponentName;
    goto :goto_3d

    .line 93
    :catch_21
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setClientInfo failed ! Component may be null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3d
    const-string v4, "CLIENT_PACKAGE_NAME"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "CLIENT_PACKAGE_SIGNATURE"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "packageSignature":Ljava/lang/String;
    const-string v6, "CLIENT_VERSION"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "clientVersion":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setClientInfo packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "packageSig "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "client version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "user id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    :try_start_80
    const-string v7, "DualDARPolicy"

    .line 104
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v7

    .line 105
    .local v7, "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    if-eqz v7, :cond_94

    .line 106
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v7, v8, v4, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_94} :catch_95

    .line 110
    .end local v7    # "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    :cond_94
    goto :goto_9e

    .line 108
    :catch_95
    move-exception v7

    .line 109
    .local v7, "e":Landroid/os/RemoteException;
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "setClientInfo Failed"

    invoke-static {v0, v8, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_9e
    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 38
    :try_start_0
    const-string v0, "DualDARPlatformProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "out":Landroid/os/Bundle;
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x67735fdb

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3a

    const v2, -0x21c8630f

    if-eq v3, v2, :cond_30

    :cond_2f
    goto :goto_43

    :cond_30
    const-string v2, "GET_DUALDAR_CONFIG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v5

    goto :goto_44

    :cond_3a
    const-string v3, "SET_CLIENT_INFO"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_5c

    if-eqz v3, :cond_2f

    goto :goto_44

    :goto_43
    move v2, v1

    :goto_44
    const-string v1, "dual_dar_response"

    if-eqz v2, :cond_54

    if-eq v2, v5, :cond_4b

    goto :goto_5b

    .line 46
    :cond_4b
    :try_start_4b
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->getConfig(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 47
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5b

    .line 42
    :cond_54
    invoke-direct {p0, p3}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->setClientInfo(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5a} :catch_5c

    .line 44
    nop

    .line 50
    :goto_5b
    return-object v0

    .line 51
    .end local v0    # "out":Landroid/os/Bundle;
    :catch_5c
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
