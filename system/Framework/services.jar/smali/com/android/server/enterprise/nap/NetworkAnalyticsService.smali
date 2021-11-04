.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.super Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;
.source "NetworkAnalyticsService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;,
        Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
    }
.end annotation


# static fields
.field private static final BIND_AVAILABLE_PROCEED:I = 0x0

.field private static final BIND_NOT_OK:I = -0x1

.field private static final BIND_OK:I = 0x1

.field public static final DBG:Z

.field private static final NPA_VERSION_STRING:Ljava/lang/String; = "0"

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:Service"

.field private static mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private static mDeviceUniqueId:Ljava/lang/String;


# instance fields
.field private mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 94
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    .line 100
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 84
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 85
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 87
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 88
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 89
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 90
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 91
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/knox/net/nap/INetworkAnalytics$Stub;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 84
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 85
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 86
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 87
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 88
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 89
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 90
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 91
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 110
    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Adding network analytics service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 113
    :try_start_21
    const-string v2, "Network Platform analytics Service is going to be added to the ServiceManager list "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 115
    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 116
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 117
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 118
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeHandlerThread()V

    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->initializeNapData()V

    .line 121
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_5b

    .line 122
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_21 .. :try_end_5b} :catchall_5c

    .line 125
    :cond_5b
    goto :goto_62

    .line 123
    :catchall_5c
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Error occured while trying to start NPA as a system service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_62
    return-void
.end method

.method private _activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z
    .registers 14
    .param p1, "handlerObj"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .param p2, "activationState"    # I
    .param p3, "opUserId"    # I

    .line 871
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    .line 872
    .local v0, "service":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    const/4 v1, 0x0

    .line 873
    .local v1, "jsonData":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    .line 874
    .local v2, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-eqz v2, :cond_1d

    .line 875
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v1

    .line 878
    :cond_1d
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v4, "NetworkAnalytics:Service"

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_activateNAPClient: activation:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_37
    const/4 v3, 0x0

    if-eqz v0, :cond_c7

    if-nez v1, :cond_3e

    goto/16 :goto_c7

    .line 883
    :cond_3e
    const/4 v5, -0x1

    .line 885
    .local v5, "returnValue":I
    const/4 v6, 0x1

    if-ne v6, p2, :cond_7d

    .line 886
    :try_start_42
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDeviceUniqueKey()Ljava/lang/String;

    move-result-object v7

    .line 887
    .local v7, "deviceKey":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_5e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_activateNAPClient: Device unique Key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_5e
    invoke-interface {v0, v1, p3, v7}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onActivateProfile(Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    move v5, v8

    .line 889
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_7c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActivateProfile: returnValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v7    # "deviceKey":Ljava/lang/String;
    :cond_7c
    goto :goto_9d

    .line 892
    :cond_7d
    iget-object v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-interface {v0, v7, p3}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->onDeactivateProfile(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 893
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_9d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDeactivateProfile: returnValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_9d
    :goto_9d
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_b5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_activateNAPClient: onActivate from client is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_b5
    iget-object v7, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 897
    .local v7, "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    if-eqz v7, :cond_bc

    .line 898
    invoke-interface {v7, v5}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_bc} :catch_bd

    .line 901
    .end local v7    # "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    :cond_bc
    goto :goto_c3

    .line 899
    :catch_bd
    move-exception v7

    .line 900
    .local v7, "re":Landroid/os/RemoteException;
    const-string v8, "_activateNAPClient: Remote Exception"

    invoke-static {v4, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    .end local v7    # "re":Landroid/os/RemoteException;
    :goto_c3
    if-nez v5, :cond_c6

    move v3, v6

    :cond_c6
    return v3

    .line 880
    .end local v5    # "returnValue":I
    :cond_c7
    :goto_c7
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_e7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_activateNAPClient: Null values found. INetworkAnalyticsService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " or json = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_e7
    return v3
.end method

.method private _bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .registers 24
    .param p1, "handleObj"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .param p2, "opUserId"    # I
    .param p3, "activationStatus"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 909
    const/4 v4, 0x1

    const-string v5, "NetworkAnalytics:Service"

    move/from16 v6, p3

    if-ne v4, v6, :cond_285

    .line 910
    :try_start_d
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_16

    const-string v7, "_bindAndActivate:PROFILE_ACTIVATED: Doing bind and activate."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_16
    new-instance v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-direct {v7, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 912
    .local v7, "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 913
    const/4 v8, 0x0

    .local v8, "activateReturn":Z
    const/4 v9, 0x0

    .line 914
    .local v9, "countDownTimeout":Z
    const/4 v10, -0x1

    .line 915
    .local v10, "bindReturn":I
    invoke-direct {v1, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I

    move-result v11

    move v10, v11

    .line 916
    iget-object v11, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 918
    .local v11, "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    const/4 v12, -0x1

    const/16 v13, -0xb

    if-ne v12, v10, :cond_40

    .line 919
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3a

    const-string v0, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient did not succeed"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_3a
    if-eqz v11, :cond_3f

    invoke-interface {v11, v13}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    .line 921
    :cond_3f
    return-void

    .line 922
    :cond_40
    if-nez v10, :cond_77

    .line 923
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 924
    invoke-static {v15, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 923
    invoke-virtual {v12, v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 925
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    .line 926
    return-void

    .line 928
    :cond_5c
    sget-boolean v12, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v12, :cond_65

    const-string v12, "_bindAndActivate:PROFILE_ACTIVATED: Honoring previous bind."

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_65
    const/4 v7, 0x0

    .line 930
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v12

    move-object v7, v12

    .line 931
    const/4 v9, 0x1

    goto :goto_82

    .line 933
    :cond_77
    iget-object v12, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v14, 0xbb8

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v14, v15, v13}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v12

    move v9, v12

    .line 937
    :goto_82
    const/4 v12, 0x0

    iput-object v12, v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 939
    if-eqz v9, :cond_24e

    if-ltz v10, :cond_24e

    .line 940
    sget-boolean v12, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v12, :cond_a5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_bindAndActivate:PROFILE_ACTIVATED: _bindToClient & countdown: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_a5
    invoke-direct {v1, v2, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v12

    move v8, v12

    .line 942
    if-nez v8, :cond_ad

    .line 943
    return-void

    .line 945
    :cond_ad
    const-string v12, "_bindAndActivate:PROFILE_ACTIVATED: Adding to data delivery"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget v12, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-nez v12, :cond_bf

    .line 950
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .local v12, "configProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    goto :goto_c7

    .line 952
    .end local v12    # "configProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    :cond_bf
    iget-object v12, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v12, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v12

    .line 956
    .restart local v12    # "configProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    :goto_c7
    if-nez v12, :cond_cf

    .line 957
    const-string v0, "_bindAndActivate: no profile found for user. Not adding profile to recipient list on NetworkAnalyticsDataDelivery"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void

    .line 960
    :cond_cf
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 961
    .local v14, "profileNap":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 962
    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    iget v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    if-ne v0, v15, :cond_12c

    .line 963
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v0, v15, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_12c

    .line 964
    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    .line 965
    .local v0, "operationUserId":I
    new-instance v4, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v4, v14, v7, v0}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    .line 966
    .local v4, "deliveryObj":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "operationUserId":I
    .local v16, "operationUserId":I
    const-string v0, "Adding the profile to the delivery list _bindAndActivate "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->addNAPDataRecipient(Lcom/android/server/enterprise/nap/DataDeliveryHelper;)V

    .line 970
    .end local v4    # "deliveryObj":Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .end local v14    # "profileNap":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v16    # "operationUserId":I
    :cond_12c
    const/4 v4, 0x1

    goto :goto_d3

    .line 972
    :cond_12e
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13a} :catch_30e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13a} :catch_307

    const-string v4, "_bindAndActivate:PROFILE_ACTIVATED:Opening of character device failed."

    if-eqz v0, :cond_24a

    .line 973
    :try_start_13e
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "supportedVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    .line 975
    .local v13, "currentVersion":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_164

    .line 976
    iget-object v14, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v14

    .line 977
    .local v14, "success":I
    if-gez v14, :cond_163

    .line 978
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void

    .line 981
    .end local v14    # "success":I
    :cond_163
    goto :goto_171

    .line 982
    :cond_164
    iget-object v14, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v14

    .line 983
    .restart local v14    # "success":I
    if-gez v14, :cond_171

    .line 984
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 988
    .end local v0    # "supportedVersion":Ljava/lang/String;
    .end local v13    # "currentVersion":Ljava/lang/String;
    .end local v14    # "success":I
    :cond_171
    :goto_171
    nop

    .line 993
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v4, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v13, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 994
    invoke-static {v13, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 993
    invoke-virtual {v0, v4, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    .line 996
    .local v0, "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v0, :cond_195

    .line 997
    const-string v4, "_bindAndActivate: no profile found. Not begining to record data"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void

    .line 1000
    :cond_195
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v4
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_19b} :catch_30e
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_19b} :catch_307

    .line 1001
    .local v4, "ncmVersionCheck":I
    const-string v13, " but data collection will not happen."

    if-gez v4, :cond_1e1

    .line 1002
    const/4 v14, 0x0

    :try_start_1a0
    invoke-direct {v1, v0, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v15

    move v4, v15

    .line 1003
    if-gez v4, :cond_1c1

    .line 1004
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_bindAndActivate: version mismatch deactivation failed for profile : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void

    .line 1007
    :cond_1c1
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v1, v15, v14, v13, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 1008
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_bindAndActivate:PROFILE_ACTIVATED:Version mismatch between user and kernel space. Deactivated this profile : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1011
    :cond_1e1
    const/4 v15, 0x1

    iget-object v14, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v4

    .end local v4    # "ncmVersionCheck":I
    .local v16, "ncmVersionCheck":I
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-static {v15, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v4

    .line 1012
    .local v4, "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-nez v4, :cond_1fe

    .line 1013
    const-string v13, "_bindAndActivate: no active profile found. Not begining to record data"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 1016
    :cond_1fe
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v14

    .line 1017
    .local v14, "flowType":I
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v15

    .line 1018
    .local v15, "intervalValue":I
    if-nez v14, :cond_240

    move-object/from16 v17, v0

    .end local v0    # "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .local v17, "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    const/16 v0, 0x3c

    if-lt v15, v0, :cond_23d

    const/16 v0, 0x3840

    if-gt v15, v0, :cond_23d

    .line 1019
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setIntervalValueForFlow(I)I

    move-result v0

    .line 1020
    .local v0, "intervalValueSetReturnValue":I
    if-gez v0, :cond_238

    .line 1021
    move/from16 v18, v0

    .end local v0    # "intervalValueSetReturnValue":I
    .local v18, "intervalValueSetReturnValue":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .local v19, "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    const-string v4, "_bindAndActivate: set interval value and deactivation failed for profile : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return-void

    .line 1020
    .end local v18    # "intervalValueSetReturnValue":I
    .end local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v0    # "intervalValueSetReturnValue":I
    .restart local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    :cond_238
    move/from16 v18, v0

    move-object/from16 v19, v4

    .end local v0    # "intervalValueSetReturnValue":I
    .end local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v18    # "intervalValueSetReturnValue":I
    .restart local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    goto :goto_244

    .line 1018
    .end local v18    # "intervalValueSetReturnValue":I
    .end local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    :cond_23d
    move-object/from16 v19, v4

    .end local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    goto :goto_244

    .end local v17    # "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .local v0, "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .restart local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    :cond_240
    move-object/from16 v17, v0

    move-object/from16 v19, v4

    .line 1025
    .end local v0    # "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v4    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v17    # "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .restart local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    :goto_244
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->beginDataRecording(I)V

    goto :goto_24e

    .line 989
    .end local v14    # "flowType":I
    .end local v15    # "intervalValue":I
    .end local v16    # "ncmVersionCheck":I
    .end local v17    # "configProfileToActivate":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v19    # "activeProfileToRecord":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    :cond_24a
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 1028
    .end local v12    # "configProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    :cond_24e
    :goto_24e
    if-eqz v11, :cond_27a

    .line 1029
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_26f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bindAndActivate: callback return = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v10, :cond_264

    if-eqz v8, :cond_264

    const/4 v4, 0x1

    goto :goto_265

    :cond_264
    const/4 v4, 0x0

    :goto_265
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_26f
    if-ltz v10, :cond_275

    if-eqz v8, :cond_275

    const/4 v0, 0x0

    goto :goto_277

    .line 1031
    :cond_275
    const/16 v0, -0xb

    .line 1030
    :goto_277
    invoke-interface {v11, v0}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    .line 1033
    :cond_27a
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_283

    const-string v0, "_bindAndActivate:PROFILE_ACTIVATED: bind and activate complete."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .end local v7    # "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .end local v8    # "activateReturn":Z
    .end local v9    # "countDownTimeout":Z
    .end local v10    # "bindReturn":I
    .end local v11    # "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    :cond_283
    goto/16 :goto_314

    .line 1035
    :cond_285
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_28e

    const-string v0, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Doing deactivate and unbind."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_28e
    const/4 v0, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_activateNAPClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)Z

    move-result v0

    .line 1037
    .local v0, "deactivate":Z
    if-nez v0, :cond_29e

    .line 1038
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_29e

    const-string v4, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate did not succeed"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_29e
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v7, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1041
    invoke-static {v8, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1040
    invoke-virtual {v4, v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v7, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeNAPDataRecipient(Ljava/lang/String;I)V

    .line 1044
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v7, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v7, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d2

    .line 1045
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_2d1

    const-string v4, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Wont unbind."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_2d1
    return-void

    .line 1047
    :cond_2d2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 1049
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v4

    if-gtz v4, :cond_2ee

    .line 1050
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_2e6

    const-string v4, "_bindAndActivate:PROFILE_NOT_ACTIVATED: Will stop data recording."

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_2e6
    iget-object v4, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->endDataRecording()V

    .line 1052
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->clearHashCacheEntire()V

    .line 1054
    :cond_2ee
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_314

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_bindAndActivate:PROFILE_NOT_ACTIVATED: deactivate complete: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_306
    .catch Landroid/os/RemoteException; {:try_start_1a0 .. :try_end_306} :catch_30e
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_306} :catch_307

    goto :goto_314

    .line 1058
    .end local v0    # "deactivate":Z
    :catch_307
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "_bindAndActivate Exception"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_315

    .line 1056
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_30e
    move-exception v0

    .line 1057
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "_bindAndActivate RemoteException"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_314
    :goto_314
    nop

    .line 1061
    :goto_315
    return-void
.end method

.method private _bindAndActivate(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "isActivation"    # Z

    .line 1076
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_bindAndActivate:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1a
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v0

    .line 1078
    .local v0, "activeProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-nez v0, :cond_3b

    .line 1079
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivate: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_3a
    return-void

    .line 1082
    :cond_3b
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v2

    if-nez v2, :cond_4b

    .line 1083
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_4a

    const-string v2, "_bindAndActivate: ERROR NAPActivationProfile is not activated. No need to bind."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_4a
    return-void

    .line 1086
    :cond_4b
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v2

    .line 1087
    .local v2, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v2, :cond_6a

    .line 1088
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_bindAndActivate: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_69
    return-void

    .line 1091
    :cond_6a
    if-eqz p2, :cond_9b

    .line 1092
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v5

    .line 1092
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1094
    .local v3, "isValidAppPresent":I
    if-gez v3, :cond_9b

    .line 1095
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_9a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_bindAndActivate: ERROR Valid package has not been installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_9a
    return-void

    .line 1099
    .end local v3    # "isValidAppPresent":I
    :cond_9b
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1100
    .local v1, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1101
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1102
    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v3

    iput v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1103
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1104
    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_bd

    const/4 v4, 0x1

    goto :goto_be

    .line 1105
    :cond_bd
    const/4 v4, 0x0

    .line 1104
    :goto_be
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    .line 1106
    return-void
.end method

.method private _bindAndActivateOnReboot()V
    .registers 5

    .line 1112
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    .line 1113
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 1114
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 1116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1117
    .local v3, "profile":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 1118
    .end local v3    # "profile":Ljava/lang/String;
    goto :goto_34

    .line 1120
    :cond_44
    return-void
.end method

.method private _bindAndActivateOnReboot(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "map"    # Landroid/os/Bundle;

    .line 1126
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    .line 1127
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_92

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_92

    .line 1128
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v2, "NetworkAnalytics:Service"

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_bindAndActivateOnReboot:ACTION_INITIALIZE_NAP: Found profile sizes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_2c
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 1130
    const/16 v3, -0x2710

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1131
    .local v3, "userIdFromBundle":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1132
    .local v5, "profile":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v6

    .line 1133
    .local v6, "activeProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-nez v6, :cond_69

    .line 1134
    sget-boolean v7, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v7, :cond_3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_bindAndActivateOnReboot: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1137
    :cond_69
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v7

    .line 1138
    .local v7, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v7, :cond_88

    .line 1139
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_3c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindAndActivateOnReboot: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 1142
    :cond_88
    invoke-virtual {v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v8

    .line 1143
    .local v8, "profileBindUserId":I
    if-ne v3, v8, :cond_91

    .line 1144
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 1146
    .end local v5    # "profile":Ljava/lang/String;
    .end local v6    # "activeProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .end local v7    # "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v8    # "profileBindUserId":I
    :cond_91
    goto :goto_3c

    .line 1148
    .end local v3    # "userIdFromBundle":I
    :cond_92
    return-void
.end method

.method private _bindToClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)I
    .registers 20
    .param p1, "serviceConnection"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    .line 784
    move-object/from16 v1, p0

    const-string v2, "NetworkAnalytics:Service"

    const/4 v3, 0x0

    .local v3, "bindSuccess":Z
    const/4 v4, 0x0

    .line 785
    .local v4, "countDownTimeout":Z
    const-wide/16 v5, 0x0

    .line 787
    .local v5, "token":J
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getHandlerObject()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    move-result-object v0

    .line 788
    .local v0, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_1b6
    .catchall {:try_start_8 .. :try_end_e} :catchall_1ae

    if-eqz v8, :cond_38

    :try_start_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_bindToClient:handlerObj.profileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_30
    .catchall {:try_start_10 .. :try_end_28} :catchall_29

    goto :goto_38

    .line 824
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    :catchall_29
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v4

    goto/16 :goto_1cf

    .line 821
    :catch_30
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v4

    const/4 v14, 0x1

    goto/16 :goto_1be

    .line 789
    .restart local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    :cond_38
    :goto_38
    const/4 v8, 0x0

    .line 790
    .local v8, "binder":Landroid/os/IBinder;
    :try_start_39
    iget-object v9, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v10, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v9
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_1b6
    .catchall {:try_start_39 .. :try_end_47} :catchall_1ae

    .line 791
    .local v9, "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    if-eqz v9, :cond_4e

    :try_start_49
    invoke-interface {v9}, Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    move-object v8, v10

    .line 792
    :cond_4e
    const/4 v10, 0x0

    if-eqz v9, :cond_7a

    .line 793
    invoke-interface {v8}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v11

    if-eqz v11, :cond_77

    .line 794
    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_71

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_bindToClient:Binder is already available for package = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_71} :catch_30
    .catchall {:try_start_49 .. :try_end_71} :catchall_29

    .line 795
    :cond_71
    const/4 v2, 0x0

    .line 796
    .end local p1    # "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .local v2, "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    nop

    .line 824
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    return v10

    .line 798
    .end local v2    # "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .restart local p1    # "serviceConnection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    :cond_77
    :try_start_77
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_30
    .catchall {:try_start_77 .. :try_end_7a} :catchall_29

    .line 800
    :cond_7a
    :try_start_7a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_namonitoraction"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 801
    .local v11, "vendorAction":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    move-wide v5, v12

    .line 802
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    .local v12, "intent":Landroid/content/Intent;
    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 804
    .local v13, "pm":Landroid/content/pm/PackageManager;
    iget v14, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v13, v12, v10, v14}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    .line 805
    .local v10, "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a7} :catch_1b6
    .catchall {:try_start_7a .. :try_end_a7} :catchall_1ae

    if-lez v14, :cond_167

    .line 806
    :try_start_a9
    sget-boolean v14, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ab} :catch_15f
    .catchall {:try_start_a9 .. :try_end_ab} :catchall_157

    if-eqz v14, :cond_b2

    :try_start_ad
    const-string v14, "_bindToClient:vendorServices.size() > 0"

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b2} :catch_30
    .catchall {:try_start_ad .. :try_end_b2} :catchall_29

    .line 807
    :cond_b2
    :try_start_b2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_152

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 808
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_15f
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_157

    move/from16 v16, v3

    .end local v3    # "bindSuccess":Z
    .local v16, "bindSuccess":Z
    :try_start_c8
    iget-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 809
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d2} :catch_148
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_13f

    if-eqz v3, :cond_100

    :try_start_d4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_bindToClient:resolveInfo.serviceInfo.packageName = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_ec} :catch_f6
    .catchall {:try_start_d4 .. :try_end_ec} :catchall_ed

    goto :goto_100

    .line 824
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vendorAction":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_ed
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v4

    move/from16 v3, v16

    goto/16 :goto_1cf

    .line 821
    :catch_f6
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v4

    move/from16 v3, v16

    const/4 v14, 0x1

    goto/16 :goto_1be

    .line 810
    .restart local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .restart local v8    # "binder":Landroid/os/IBinder;
    .restart local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .restart local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "vendorAction":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_100
    :goto_100
    :try_start_100
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_102} :catch_148
    .catchall {:try_start_100 .. :try_end_102} :catchall_13f

    if-eqz v3, :cond_11c

    :try_start_104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_bindToClient:resolveInfo.serviceInfo.name = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_11c} :catch_f6
    .catchall {:try_start_104 .. :try_end_11c} :catchall_ed

    .line 811
    :cond_11c
    :try_start_11c
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_122} :catch_148
    .catchall {:try_start_11c .. :try_end_122} :catchall_13f

    move/from16 v17, v4

    .end local v4    # "countDownTimeout":Z
    .local v17, "countDownTimeout":Z
    :try_start_124
    iget-object v4, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12e} :catch_12f
    .catchall {:try_start_124 .. :try_end_12e} :catchall_1a1

    goto :goto_139

    .line 821
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vendorAction":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_12f
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v3, v16

    const/4 v14, 0x1

    goto/16 :goto_1be

    .line 808
    .end local v17    # "countDownTimeout":Z
    .restart local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .restart local v4    # "countDownTimeout":Z
    .restart local v8    # "binder":Landroid/os/IBinder;
    .restart local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .restart local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "vendorAction":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_137
    move/from16 v17, v4

    .line 816
    .end local v4    # "countDownTimeout":Z
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v17    # "countDownTimeout":Z
    :goto_139
    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_b6

    .line 824
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vendorAction":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "countDownTimeout":Z
    .restart local v4    # "countDownTimeout":Z
    :catchall_13f
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v7, p1

    move/from16 v3, v16

    .end local v4    # "countDownTimeout":Z
    .restart local v17    # "countDownTimeout":Z
    goto/16 :goto_1cf

    .line 821
    .end local v17    # "countDownTimeout":Z
    .restart local v4    # "countDownTimeout":Z
    :catch_148
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v7, p1

    move/from16 v3, v16

    const/4 v14, 0x1

    .end local v4    # "countDownTimeout":Z
    .restart local v17    # "countDownTimeout":Z
    goto/16 :goto_1be

    .line 807
    .end local v16    # "bindSuccess":Z
    .end local v17    # "countDownTimeout":Z
    .restart local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .restart local v3    # "bindSuccess":Z
    .restart local v4    # "countDownTimeout":Z
    .restart local v8    # "binder":Landroid/os/IBinder;
    .restart local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .restart local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "vendorAction":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_152
    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "bindSuccess":Z
    .end local v4    # "countDownTimeout":Z
    .restart local v16    # "bindSuccess":Z
    .restart local v17    # "countDownTimeout":Z
    goto :goto_16b

    .line 824
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vendorAction":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "bindSuccess":Z
    .end local v17    # "countDownTimeout":Z
    .restart local v3    # "bindSuccess":Z
    .restart local v4    # "countDownTimeout":Z
    :catchall_157
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v7, p1

    goto :goto_1b5

    .line 821
    :catch_15f
    move-exception v0

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v7, p1

    goto :goto_1bd

    .line 805
    .restart local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .restart local v8    # "binder":Landroid/os/IBinder;
    .restart local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .restart local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "vendorAction":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_167
    move/from16 v16, v3

    move/from16 v17, v4

    .line 818
    .end local v3    # "bindSuccess":Z
    .end local v4    # "countDownTimeout":Z
    .restart local v16    # "bindSuccess":Z
    .restart local v17    # "countDownTimeout":Z
    :goto_16b
    :try_start_16b
    iget-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v3, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_179} :catch_1a7
    .catchall {:try_start_16b .. :try_end_179} :catchall_1a1

    move-object/from16 v7, p1

    const/4 v14, 0x1

    :try_start_17c
    invoke-virtual {v3, v12, v7, v14, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_180} :catch_19f
    .catchall {:try_start_17c .. :try_end_180} :catchall_19b

    .line 820
    .end local v16    # "bindSuccess":Z
    .restart local v3    # "bindSuccess":Z
    :try_start_180
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_198

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_bindToClient:bindSuccess = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_198} :catch_199
    .catchall {:try_start_180 .. :try_end_198} :catchall_1ce

    .line 824
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v8    # "binder":Landroid/os/IBinder;
    .end local v9    # "ibinder":Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .end local v10    # "vendorServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "vendorAction":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_198
    goto :goto_1c4

    .line 821
    :catch_199
    move-exception v0

    goto :goto_1be

    .line 824
    .end local v3    # "bindSuccess":Z
    .restart local v16    # "bindSuccess":Z
    :catchall_19b
    move-exception v0

    move/from16 v3, v16

    goto :goto_1cf

    .line 821
    :catch_19f
    move-exception v0

    goto :goto_1ab

    .line 824
    :catchall_1a1
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v3, v16

    goto :goto_1cf

    .line 821
    :catch_1a7
    move-exception v0

    move-object/from16 v7, p1

    const/4 v14, 0x1

    :goto_1ab
    move/from16 v3, v16

    goto :goto_1be

    .line 824
    .end local v16    # "bindSuccess":Z
    .end local v17    # "countDownTimeout":Z
    .restart local v3    # "bindSuccess":Z
    .restart local v4    # "countDownTimeout":Z
    :catchall_1ae
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "bindSuccess":Z
    .end local v4    # "countDownTimeout":Z
    .restart local v16    # "bindSuccess":Z
    .restart local v17    # "countDownTimeout":Z
    :goto_1b5
    goto :goto_1cf

    .line 821
    .end local v16    # "bindSuccess":Z
    .end local v17    # "countDownTimeout":Z
    .restart local v3    # "bindSuccess":Z
    .restart local v4    # "countDownTimeout":Z
    :catch_1b6
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v16, v3

    move/from16 v17, v4

    :goto_1bd
    const/4 v14, 0x1

    .line 822
    .end local v4    # "countDownTimeout":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "countDownTimeout":Z
    :goto_1be
    :try_start_1be
    const-string v4, "_bindToClient:Exception"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c3
    .catchall {:try_start_1be .. :try_end_1c3} :catchall_1ce

    .line 824
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    nop

    .line 826
    if-eqz v3, :cond_1cb

    goto :goto_1cd

    :cond_1cb
    const/4 v0, -0x1

    move v14, v0

    :goto_1cd
    return v14

    .line 824
    :catchall_1ce
    move-exception v0

    :goto_1cf
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw v0
.end method

.method private _cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 6
    .param p1, "handlerObj"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 862
    iget-object v0, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "tableKey":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_cleanUpConnectionDetails tableKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_22
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeProfileForPackage(Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->removeBinderForPackage(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->removeDataRecipientsForPackage(Ljava/lang/String;I)V

    .line 867
    return-void
.end method

.method private _deactivateAllProfiles()V
    .registers 5

    .line 1169
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    .line 1170
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 1171
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_deactivateAllProfiles: Found profile sizes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_2c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 1173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1174
    .local v3, "profile":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    .line 1175
    .end local v3    # "profile":Ljava/lang/String;
    goto :goto_34

    .line 1177
    :cond_44
    return-void
.end method

.method private _deactivateAllProfiles(I)V
    .registers 13
    .param p1, "adminUid"    # I

    .line 1182
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    .line 1183
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_f9

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_f9

    .line 1184
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v2, "NetworkAnalytics:Service"

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_deactivateAllConnections: Found profile sizes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_2c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1186
    .local v3, "profile":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_deactivateAllProfiles:ACTION_INITIALIZE_NAP: adding profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_54
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v4

    .line 1188
    .local v4, "activeProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-nez v4, :cond_75

    .line 1189
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR NAPActivationProfile is null for profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1192
    :cond_75
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getAdminUid()I

    move-result v5

    if-eq p1, v5, :cond_94

    .line 1193
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_deactivateAllProfiles: ERROR Not the same adminUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1196
    :cond_94
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    .line 1197
    .local v5, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v5, :cond_b4

    .line 1198
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_deactivateAllProfiles: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 1201
    :cond_b4
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v7

    .line 1202
    .local v7, "returnValue":I
    if-gez v7, :cond_d5

    .line 1203
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_deactivateAllProfiles: ERROR deactivateProfile for profile: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 1206
    :cond_d5
    new-instance v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v8, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1207
    .local v8, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1208
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1209
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v9

    iput v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1210
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1211
    const/4 v9, 0x1

    .line 1212
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v10

    .line 1211
    invoke-direct {p0, v9, v6, v10, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 1213
    .end local v3    # "profile":Ljava/lang/String;
    .end local v4    # "activeProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .end local v5    # "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v7    # "returnValue":I
    .end local v8    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    goto/16 :goto_30

    .line 1215
    :cond_f9
    return-void
.end method

.method private _getDataDeliveryHelper(Ljava/lang/String;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)Lcom/android/server/enterprise/nap/DataDeliveryHelper;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "serviceConnection"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .param p3, "opUserId"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    .line 1067
    .local v0, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v0, :cond_24

    .line 1068
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_getDataDeliveryHelper: ERROR NAPConfigProfile is null for profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_22
    const/4 v1, 0x0

    return-object v1

    .line 1071
    :cond_24
    new-instance v1, Lcom/android/server/enterprise/nap/DataDeliveryHelper;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V

    return-object v1
.end method

.method private _handleNewProfileRegistration(Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .line 1233
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v0

    .line 1234
    .local v0, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    const-string v1, "NetworkAnalytics:Service"

    if-nez v0, :cond_23

    .line 1235
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_handleNewProfileRegistration: profile is null for name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_22
    return-void

    .line 1238
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 1240
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_handleNewProfileRegistration: profile activated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_47
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getUserIdLocationOfPackage(Ljava/lang/String;)I

    move-result v3

    .line 1242
    .local v3, "userIdLocation":I
    if-gez v3, :cond_6c

    .line 1243
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_6b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_handleNewProfileRegistration: bind userId location fail for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_6b
    return-void

    .line 1246
    :cond_6c
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v4

    .line 1247
    .local v4, "returnValue":I
    if-gez v4, :cond_95

    .line 1248
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_94

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: bind userId updation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_94
    return-void

    .line 1251
    :cond_95
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v4

    .line 1252
    if-gez v4, :cond_b9

    .line 1253
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_b8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_handleNewProfileRegistration: activation failed for profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_b8
    return-void

    .line 1256
    :cond_b9
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1257
    .local v1, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1258
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1259
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    iput v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1260
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1261
    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v6

    invoke-direct {p0, v1, v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    .line 1263
    .end local v1    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v3    # "userIdLocation":I
    .end local v4    # "returnValue":I
    :cond_da
    return-void
.end method

.method private _packageAddedAction(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 1270
    const-string v0, "NetworkAnalytics:Service"

    :try_start_2
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "_packageAddedAction called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1272
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_ad

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ad

    .line 1273
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_packageAddedAction activatedProfiles.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1275
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v4

    .line 1276
    .local v4, "active":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-eqz v4, :cond_ac

    .line 1277
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_56

    const-string v5, "_packageAddedAction: ACTIVATING FOR PACKAGE ADDED."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_56
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    .line 1279
    .local v5, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_ac

    .line 1281
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1282
    .local v6, "installedAppPkgSig":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v6, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1283
    .local v7, "signValid":Z
    if-nez v7, :cond_89

    .line 1284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "__packageAddedAction: Package signature could not be matched for profile entry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    goto :goto_39

    .line 1288
    :cond_89
    new-instance v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v8, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1289
    .local v8, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1290
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1291
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v9

    iput v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1292
    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1293
    nop

    .line 1295
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v9

    .line 1293
    const/4 v10, 0x1

    invoke-direct {p0, v10, v10, v9, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_ac} :catch_ae

    .line 1298
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "active":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .end local v5    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v6    # "installedAppPkgSig":Ljava/lang/String;
    .end local v7    # "signValid":Z
    .end local v8    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    :cond_ac
    goto :goto_39

    .line 1302
    .end local v1    # "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ad
    goto :goto_b4

    .line 1300
    :catch_ae
    move-exception v1

    .line 1301
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "_packageAddedAction Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1303
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b4
    return-void
.end method

.method private _packageRemovedAction(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .line 1309
    const-string v0, "NetworkAnalytics:Service"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1310
    .local v1, "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5f

    .line 1311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1312
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v4

    .line 1313
    .local v4, "active":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-eqz v4, :cond_5e

    .line 1314
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_31

    const-string v5, "_packageRemovedAction: DEACTIVATING FOR PACKAGE REMOVED."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_31
    invoke-virtual {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v5

    .line 1316
    .local v5, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v6

    if-ne v6, p2, :cond_5e

    .line 1317
    new-instance v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1318
    .local v6, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 1319
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 1320
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v7

    iput v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 1321
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 1323
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1325
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getCidFromTransformedName(Ljava/lang/String;)I

    move-result v9

    .line 1323
    invoke-direct {p0, v7, v8, v9, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_60

    .line 1328
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "active":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .end local v5    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v6    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    :cond_5e
    goto :goto_14

    .line 1332
    .end local v1    # "activatedProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5f
    goto :goto_66

    .line 1330
    :catch_60
    move-exception v1

    .line 1331
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "_packageRemovedAction Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method private _unbindClient(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V
    .registers 8
    .param p1, "handlerObj"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    .line 833
    const-string v0, "NetworkAnalytics:Service"

    :try_start_2
    iget v1, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_12

    .line 834
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "_unbindClient: The profile was never activated. Returning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_11
    return-void

    .line 837
    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    .line 838
    .local v1, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    iget-object v2, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 839
    .local v2, "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    if-nez v1, :cond_2d

    .line 840
    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_27

    const-string v3, "_unbindClient: profile object null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_27
    if-eqz v2, :cond_2d

    const/4 v3, -0x4

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    .line 843
    :cond_2d
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iget-object v4, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    move-result-object v3

    .line 844
    .local v3, "connection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    if-eqz v3, :cond_49

    .line 845
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 846
    if-eqz v2, :cond_50

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    goto :goto_50

    .line 848
    :cond_49
    if-eqz v2, :cond_50

    const/16 v4, -0xb

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/net/nap/IStatusCallback;->onCallComplete(I)V

    .line 850
    :cond_50
    :goto_50
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_cleanUpConnectionDetails(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    .line 851
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_6a

    const-string v4, "_unbindClient: Done"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_5d

    goto :goto_6a

    .line 854
    .end local v1    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v2    # "callback":Lcom/samsung/android/knox/net/nap/IStatusCallback;
    .end local v3    # "connection":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    :catch_5d
    move-exception v1

    .line 855
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "_unbindClient: Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b

    .line 852
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_64
    move-exception v1

    .line 853
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "_unbindClient: RemoteException"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_6a
    :goto_6a
    nop

    .line 857
    :goto_6b
    return-void
.end method

.method private _unregisterAllProfiles(I)V
    .registers 6
    .param p1, "adminUid"    # I

    .line 1153
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v0

    .line 1154
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_f

    goto :goto_50

    .line 1157
    :cond_f
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_unregisterAllProfiles: Found profile sizes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalytics:Service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_2d
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 1159
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 1160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1161
    .local v2, "profile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateTablesForProfileRemoval(ILjava/lang/String;)V

    .line 1162
    .end local v2    # "profile":Ljava/lang/String;
    goto :goto_3d

    .line 1164
    :cond_4f
    return-void

    .line 1155
    :cond_50
    :goto_50
    return-void
.end method

.method private _userRemovedAction(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "map"    # Landroid/os/Bundle;

    .line 1386
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1387
    .local v0, "userId":I
    const/4 v2, -0x1

    .line 1388
    .local v2, "adminId":I
    const/4 v3, 0x0

    .line 1390
    .local v3, "profileName":Ljava/lang/String;
    const-string v4, "NetworkAnalytics:Service"

    if-ne v0, v1, :cond_27

    .line 1391
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Invalid userId received:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_26
    return-void

    .line 1394
    :cond_27
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_userRemovedAction: Received for"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_3f
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForUser(I)Ljava/util/List;

    move-result-object v1

    .line 1396
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    if-eqz v1, :cond_85

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_85

    .line 1397
    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_69

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_userRemovedAction: List of profiles for removed userId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    .line 1399
    .local v5, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    .line 1400
    .end local v5    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    goto :goto_6d

    .line 1402
    :cond_85
    return-void
.end method

.method private _validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .line 745
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "installedAppPkgSig":Ljava/lang/String;
    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    .line 748
    const-string v2, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 749
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForAllProfiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .local v2, "signValid":Z
    goto :goto_23

    .line 751
    .end local v2    # "signValid":Z
    :cond_1d
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validatePkgSignForSingleProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 753
    .restart local v2    # "signValid":Z
    :goto_23
    if-nez v2, :cond_2d

    .line 754
    const-string v3, "_validateNAPClient: Package signature could not be matched for profile entry/entries"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/16 v1, -0xd

    return v1

    .line 758
    .end local v2    # "signValid":Z
    :cond_2d
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v2, :cond_36

    const-string v2, "_validateNAPClient: Package validation complete."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_36
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendStatusToClient(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDataDelivery:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_handleNewProfileRegistration(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivate(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_bindAndActivateOnReboot(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageRemovedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_packageAddedAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_userRemovedAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_deactivateAllProfiles(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_unregisterAllProfiles(I)V

    return-void
.end method

.method private activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I
    .registers 9
    .param p1, "profile"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .param p2, "activate"    # I

    .line 528
    const/4 v0, -0x1

    .line 529
    .local v0, "returnValue":I
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v2, "NetworkAnalytics:Service"

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called activateProfile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, p2, :cond_36

    .line 532
    const-string v1, "activateProfile:Profile is already in the activated state for the user."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, -0x8

    return v1

    .line 535
    :cond_36
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getAdminUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->activateProfile(ILjava/lang/String;II)I

    move-result v1

    move v0, v1

    .line 536
    if-gez v0, :cond_68

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activate profile config storage returned = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_67} :catch_69

    .line 538
    return v0

    .line 543
    :cond_68
    goto :goto_70

    .line 540
    :catch_69
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Add profile to database falied. Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/4 v0, -0x1

    .line 544
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_70
    return v0
.end method

.method private constructObjectForBroadcast(IILjava/lang/String;)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "userId"    # I
    .param p3, "jsonProfile"    # Ljava/lang/String;

    .line 1803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v1, "profile_name"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "profileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1805
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v3, "package_signature"

    invoke-virtual {v2, v3, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1806
    .local v2, "signature":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1807
    .local v3, "bundle":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    .local v4, "profileInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    const-string/jumbo v5, "profileInfo"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1814
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v5, :cond_50

    .line 1815
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v6, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 1819
    .end local v0    # "profileName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "signature":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "profileInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_50
    goto :goto_59

    .line 1817
    :catch_51
    move-exception v0

    .line 1818
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while constructing the profile object for broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method

.method private enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .line 1342
    const-string v0, "NetworkAnalytics:Service"

    const-string v1, "enforceNetworkAnalyticsPermission: knox version above 3.0. Validating NPA Permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.permission.KNOX_NPA"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCidFromTransformedName(Ljava/lang/String;)I
    .registers 4
    .param p0, "vendorNameWithCid"    # Ljava/lang/String;

    .line 1370
    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1371
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1372
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getConnectivityService()Landroid/net/IConnectivityManager;
    .registers 3

    .line 1414
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v0, :cond_12

    .line 1415
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1416
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 1417
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 1420
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConnectivityService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method private static declared-synchronized getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    monitor-enter v0

    .line 647
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v1, :cond_e

    .line 648
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 650
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 646
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDeviceUniqueKey()Ljava/lang/String;
    .registers 4

    .line 1220
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 1221
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getDRKService(Landroid/content/Context;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    move-result-object v0

    .line 1222
    .local v0, "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    if-eqz v0, :cond_1f

    .line 1223
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "getDeviceUniqueKey: drkService not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    .line 1227
    .end local v0    # "drkService":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    :cond_1f
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 1352
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 1353
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 1355
    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 656
    const-string v0, "NetworkAnalytics:Service"

    const/4 v1, 0x0

    .line 657
    .local v1, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 659
    .local v2, "token":J
    :try_start_7
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageCertForPkgname: User id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_20
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    .line 661
    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    .line 662
    .local v4, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v5, 0x40

    invoke-virtual {v4, p2, v5, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 664
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_3d

    .line 665
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_38

    const-string/jumbo v6, "getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_38} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_57
    .catchall {:try_start_7 .. :try_end_38} :catchall_55

    .line 666
    :cond_38
    const/4 v0, 0x0

    .line 680
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    return-object v0

    .line 668
    :cond_3d
    :try_start_3d
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 669
    .local v6, "signs":[Landroid/content/pm/Signature;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_41
    if-ge v8, v7, :cond_50

    aget-object v9, v6, v8

    .line 670
    .local v9, "sign":Landroid/content/pm/Signature;
    if-eqz v9, :cond_4d

    .line 671
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_4b} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_57
    .catchall {:try_start_3d .. :try_end_4b} :catchall_55

    .line 672
    .end local v1    # "pkgCert":Ljava/lang/String;
    .local v0, "pkgCert":Ljava/lang/String;
    move-object v1, v0

    goto :goto_50

    .line 669
    .end local v0    # "pkgCert":Ljava/lang/String;
    .end local v9    # "sign":Landroid/content/pm/Signature;
    .restart local v1    # "pkgCert":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 680
    .end local v4    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "signs":[Landroid/content/pm/Signature;
    :cond_50
    :goto_50
    nop

    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    goto :goto_67

    .line 680
    :catchall_55
    move-exception v0

    goto :goto_68

    .line 677
    :catch_57
    move-exception v4

    .line 678
    .local v4, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v5, "In getPackageCertForPkgname: Exception"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_51

    .line 675
    :catch_5f
    move-exception v4

    .line 676
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_55

    .line 680
    nop

    .end local v4    # "npe":Ljava/lang/NullPointerException;
    goto :goto_51

    .line 682
    :goto_67
    return-object v1

    .line 680
    :goto_68
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    throw v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "callerPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 767
    .local v1, "isPackageActive":Z
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 768
    .local v2, "packageNames":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 769
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isAddedPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 770
    const/4 v1, 0x1

    .line 771
    move-object v0, v5

    .line 768
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 774
    :cond_1f
    if-eqz v1, :cond_25

    if-nez v0, :cond_24

    goto :goto_25

    .line 778
    :cond_24
    return-object v0

    .line 775
    :cond_25
    :goto_25
    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "start: Package name could not be found in activated list."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "vendorName"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "vendorNameWithCid"    # Ljava/lang/String;

    .line 1379
    const-string v0, "__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1380
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeHandlerThread()V
    .registers 4

    .line 622
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NapHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 623
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 624
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    .line 625
    return-void
.end method

.method private initializeNapData()V
    .registers 4

    .line 631
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setupIntentFilter()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 634
    goto :goto_c

    .line 632
    :catch_4
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkAnalytics:Service"

    const-string v2, "Error occured while trying to ini the BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z
    .registers 8
    .param p1, "profile"    # Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .param p2, "clientUserId"    # I

    .line 517
    const-string v0, "NetworkAnalytics:Service"

    const/4 v1, 0x1

    if-nez p2, :cond_c

    .line 518
    const-string/jumbo v2, "isAllowedRecordingForUsers: App is installed in User 0. Can record for any user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v1

    .line 521
    :cond_c
    sget-boolean v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllowedRecordingForUsers: App allowed to record profile? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v4

    if-ne v4, p2, :cond_24

    move v4, v1

    goto :goto_25

    :cond_24
    move v4, v3

    :goto_25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v0

    if-ne v0, p2, :cond_36

    goto :goto_37

    :cond_36
    move v1, v3

    :goto_37
    return v1
.end method

.method private isDomainFilterOnIptablesEnabled()Z
    .registers 5

    .line 1407
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1408
    .local v0, "whereClause":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1409
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mStorageHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    const-string v3, "DomainFilterOnIptablesApiStatus"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 1410
    .local v2, "count":I
    if-lez v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method private isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageCert"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    .local v0, "identity":J
    nop

    .line 690
    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 691
    .local v2, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v2, :cond_41

    .line 692
    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v3

    const-string v4, "NetworkAnalytics:Service"

    if-nez v3, :cond_23

    .line 693
    const-string/jumbo v3, "isValidAppInstalled: Monitor app not installed"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    const/16 v3, -0xf

    return v3

    .line 697
    :cond_23
    invoke-direct {p0, p3, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "installedAppPkgSig":Ljava/lang/String;
    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_41

    .line 699
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 700
    const-string/jumbo v5, "isValidAppInstalled: Monitor app signature is not matched."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    const/16 v4, -0xd

    return v4

    .line 707
    .end local v3    # "installedAppPkgSig":Ljava/lang/String;
    :cond_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    const/4 v3, 0x0

    return v3
.end method

.method private listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;",
            ">;"
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    if-eqz p2, :cond_2a

    .line 396
    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 397
    if-nez p3, :cond_14

    .line 398
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    .line 400
    :cond_14
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllProfilesForPackageinUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_2a

    .line 402
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 403
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method private sendMessageToHandler(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_d

    .line 641
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    .end local v0    # "msg":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method private sendStatusToClient(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "data"    # Landroid/os/Bundle;

    .line 1825
    const-string/jumbo v0, "profileInfo"

    const-string v1, "NetworkAnalytics:Service"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1827
    .local v2, "token":J
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1828
    .local v4, "profile":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1829
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1830
    .local v6, "signature":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1831
    .local v7, "userId":I
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1832
    .local v0, "status":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The System is going to send broadcast of the profile status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string/jumbo v8, "package"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 1834
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v8, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v9

    .line 1835
    .local v9, "isPackageInstalled":Z
    if-eqz v9, :cond_ef

    .line 1836
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has been installed in the user space "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    invoke-direct {p0, v7, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1838
    .local v10, "installedAppPkgSig":Ljava/lang/String;
    if-eqz v10, :cond_ef

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_ef

    .line 1839
    sget-boolean v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v11, :cond_c6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The signature of the package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "confirmed by OS is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_c6
    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ef

    .line 1841
    const-string v11, "The signature mentioned by the admin and the signature of the package present in the device matches"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.android.knox.intent.action.NPA_STATUS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v11, "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1844
    const-string v12, "com.samsung.android.knox.intent.extra.PROFILE_NAME"

    invoke-virtual {v11, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1845
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    iget-object v12, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v11, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ef
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_ef} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_ef} :catch_f2
    .catchall {:try_start_9 .. :try_end_ef} :catchall_f0

    .line 1855
    .end local v0    # "status":I
    .end local v4    # "profile":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "userId":I
    .end local v8    # "pm":Landroid/content/pm/IPackageManager;
    .end local v9    # "isPackageInstalled":Z
    .end local v10    # "installedAppPkgSig":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_ef
    goto :goto_101

    :catchall_f0
    move-exception v0

    goto :goto_106

    .line 1852
    :catch_f2
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f3
    const-string v4, "Error occured while trying to send the NPA profile status to the client"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_101

    .line 1850
    :catch_fa
    move-exception v0

    .line 1851
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v4, "Null pointer exception error occured while trying to send the NPA profile status to the client"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_f0

    .line 1855
    nop

    .end local v0    # "ne":Ljava/lang/NullPointerException;
    :goto_101
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1855
    :goto_106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    throw v0
.end method

.method private setFeatureProperty(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 1426
    invoke-direct {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isDomainFilterOnIptablesEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1429
    .local v0, "token":J
    const-string/jumbo v2, "net.redirect_socket_calls.hooked"

    const-string/jumbo v3, "net.knox.nap"

    if-eqz p1, :cond_1e

    .line 1430
    :try_start_12
    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 1433
    :cond_1e
    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_2b
    .catchall {:try_start_12 .. :try_end_28} :catchall_29

    .line 1439
    :goto_28
    goto :goto_34

    :catchall_29
    move-exception v2

    goto :goto_38

    .line 1436
    :catch_2b
    move-exception v2

    .line 1437
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v3, "NetworkAnalytics:Service"

    const-string v4, "Unable to set NPA feature property"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_29

    .line 1439
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1440
    goto :goto_3c

    .line 1439
    :goto_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1440
    throw v2

    .line 1442
    .end local v0    # "token":J
    :cond_3c
    :goto_3c
    return-void
.end method

.method private setupIntentFilter()V
    .registers 11

    .line 1447
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v1, "setup intent filter is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_c
    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 1451
    .local v3, "receiver":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1452
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1456
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1459
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 1460
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1466
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1470
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 1471
    const-string v1, "enterprise.container.uninstalled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1474
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 1475
    const-string v1, "enterprise.container.admin.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1478
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 1479
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1481
    return-void
.end method

.method private unregisterNetworkMonitorProfile(ILjava/lang/String;)I
    .registers 16
    .param p1, "adminUid"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .line 550
    const/4 v0, -0x1

    .line 552
    .local v0, "returnValue":I
    const/4 v1, 0x0

    .line 553
    .local v1, "opUserId":I
    const/4 v2, 0x0

    .line 556
    .local v2, "jsonValue":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "NetworkAnalytics:Service"

    if-lez p1, :cond_105

    if-nez p2, :cond_d

    goto/16 :goto_105

    .line 560
    :cond_d
    :try_start_d
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v6

    move v0, v6

    .line 561
    if-gez v0, :cond_3d

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterNetworkMonitorProfile: Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "is absent or does not belong to adminUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " return="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v0

    .line 566
    :cond_3d
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v6

    .line 567
    .local v6, "profileInfo":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-eqz v6, :cond_4f

    .line 568
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v7

    move v1, v7

    .line 569
    invoke-virtual {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getJsonString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 572
    :cond_4f
    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 573
    .local v7, "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_d3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d3

    .line 574
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_61
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 575
    .local v9, "profile":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-static {v9}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getVendorNameFromTransformedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileforName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-result-object v10

    .line 576
    .local v10, "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v10, :cond_8f

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile config profile obj is null for profile: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v0

    .line 580
    :cond_8f
    invoke-direct {p0, v10, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v11

    move v0, v11

    .line 581
    if-gez v0, :cond_b0

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unregisterNetworkMonitorProfile: deactivation failed for profile:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v0

    .line 585
    :cond_b0
    new-instance v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v11, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 586
    .local v11, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 587
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 588
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    iput v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 589
    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 590
    nop

    .line 591
    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    .line 590
    invoke-direct {p0, v3, v4, v12, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 592
    .end local v9    # "profile":Ljava/lang/String;
    .end local v10    # "configProfile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v11    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    goto :goto_61

    .line 594
    :cond_d3
    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v8, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->removeProfileFromDatabase(ILjava/lang/String;)I

    move-result v8

    move v0, v8

    .line 595
    if-gez v0, :cond_e6

    .line 596
    sget-boolean v8, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v8, :cond_e5

    const-string v8, "Remove profile from database falied."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_e5
    return v0

    .line 599
    :cond_e6
    if-nez v0, :cond_104

    .line 600
    iget-object v8, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v8, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v8

    .line 601
    .local v8, "profileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_f8

    if-eqz v8, :cond_104

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_104

    .line 602
    :cond_f8
    sget-boolean v9, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v9, :cond_101

    const-string v9, "The Knox NAP feature has been disabled"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_101
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 609
    .end local v6    # "profileInfo":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v7    # "activeProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "profileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_104
    goto :goto_115

    .line 557
    :cond_105
    :goto_105
    const-string/jumbo v6, "unregisterNetworkMonitorProfile: Invalid parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10b} :catch_10d

    .line 558
    const/4 v3, -0x4

    return v3

    .line 606
    :catch_10d
    move-exception v6

    .line 607
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "unregisterNetworkMonitorProfile. Exception"

    invoke-static {v5, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    const/4 v0, -0x1

    .line 610
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_115
    if-nez v0, :cond_11f

    .line 611
    if-eqz v1, :cond_11c

    .line 612
    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 614
    :cond_11c
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 616
    :cond_11f
    return v0
.end method

.method private validateNAPClient(IIZLjava/lang/String;)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "doBindCheck"    # Z
    .param p4, "profileName"    # Ljava/lang/String;

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "callerPackageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    if-nez v0, :cond_12

    .line 736
    const-string v1, "NetworkAnalytics:Service"

    const-string/jumbo v2, "validateNAPClient: NAP client caller cannot be validated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/16 v1, -0xc

    return v1

    .line 739
    :cond_12
    invoke-direct {p0, v0, p2, p4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->_validateNAPClient(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private validateNAPClient(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageSignature"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 714
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "validateNAPClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_c
    const/4 v0, -0x1

    .line 717
    .local v0, "returnValue":I
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isValidAppInstalled(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    .line 718
    if-gez v0, :cond_2a

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNAPClient:Valid monitor application is not installed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_2c

    .line 720
    return v0

    .line 722
    :cond_2a
    const/4 v0, 0x0

    .line 726
    goto :goto_34

    .line 723
    :catch_2c
    move-exception v2

    .line 724
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "validateNAPClient: Add profile to database failed. Exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    const/4 v0, -0x1

    .line 727
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_34
    return v0
.end method


# virtual methods
.method public declared-synchronized getNPAVersion()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "npaVersion":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    if-nez v1, :cond_9c

    .line 484
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 485
    sget-object v1, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "supportedVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "currentVersion":Ljava/lang/String;
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportedVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "currentVersion  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_75

    .line 489
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    .line 490
    .local v3, "returnValue":I
    if-gez v3, :cond_74

    .line 491
    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_71} :catch_ce
    .catchall {:try_start_2 .. :try_end_71} :catchall_cc

    move-object v0, v4

    .line 493
    monitor-exit p0

    return-object v0

    .line 495
    .end local v3    # "returnValue":I
    .end local p0    # "this":Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    :cond_74
    goto :goto_9c

    .line 496
    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v3

    .line 497
    .restart local v3    # "returnValue":I
    if-gez v3, :cond_9c

    .line 498
    const-string v4, "NetworkAnalytics:Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNPAVersion: Failed to open char device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_99} :catch_ce
    .catchall {:try_start_75 .. :try_end_99} :catchall_cc

    move-object v0, v4

    .line 500
    monitor-exit p0

    return-object v0

    .line 506
    .end local v1    # "supportedVersion":Ljava/lang/String;
    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "returnValue":I
    :cond_9c
    :goto_9c
    :try_start_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->ncmVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ca} :catch_ce
    .catchall {:try_start_9c .. :try_end_ca} :catchall_cc

    move-object v0, v1

    .line 509
    goto :goto_d7

    .line 479
    .end local v0    # "npaVersion":Ljava/lang/String;
    :catchall_cc
    move-exception v0

    goto :goto_d9

    .line 507
    .restart local v0    # "npaVersion":Ljava/lang/String;
    :catch_ce
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    :try_start_cf
    const-string v2, "NetworkAnalytics:Service"

    const-string/jumbo v3, "getNPAVersion Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d7
    .catchall {:try_start_cf .. :try_end_d7} :catchall_cc

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d7
    monitor-exit p0

    return-object v0

    .line 479
    .end local v0    # "npaVersion":Ljava/lang/String;
    :goto_d9
    monitor-exit p0

    throw v0
.end method

.method public getNetworkMonitorProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 413
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNetworkMonitorProfiles API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_3c
    const/4 v0, 0x0

    .line 417
    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(II)Ljava/util/List;

    move-result-object v1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_49

    move-object v0, v1

    .line 420
    goto :goto_4f

    .line 418
    :catch_49
    move-exception v2

    .line 419
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Get NVM client profiles. Exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4f
    return-object v0
.end method

.method public getProfiles(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/nap/Profile;",
            ">;"
        }
    .end annotation

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/nap/Profile;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 429
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 430
    .local v2, "bindUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, "callerPackageName":Ljava/lang/String;
    const-string v4, "NetworkAnalytics:Service"

    if-nez v3, :cond_18

    .line 432
    const-string/jumbo v5, "getProfiles: NAP client caller cannot be validated. PackageName null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v0

    .line 436
    :cond_18
    :try_start_18
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_20

    move-object v0, v4

    .line 439
    goto :goto_26

    .line 437
    :catch_20
    move-exception v5

    .line 438
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "Get NVM client profiles. Exception"

    invoke-static {v4, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_26
    return-object v0
.end method

.method public declared-synchronized handleNAPClientCall(Ljava/lang/String;Landroid/os/Bundle;Z)I
    .registers 24
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "flowTypeBunble"    # Landroid/os/Bundle;
    .param p3, "doStart"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p0

    .line 231
    const/4 v5, -0x1

    .line 232
    .local v5, "returnValue":I
    const/4 v6, 0x0

    .line 234
    .local v6, "isPackageActive":Z
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 235
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 236
    .local v7, "bindUserId":I
    invoke-direct {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_3f4

    if-eqz v8, :cond_3f4

    if-gez v7, :cond_21

    move/from16 v18, v0

    goto/16 :goto_3f6

    .line 243
    :cond_21
    invoke-direct {v1, v0, v7, v4, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->validateNAPClient(IIZLjava/lang/String;)I

    move-result v9

    move v5, v9

    .line 244
    if-gez v5, :cond_49

    .line 245
    const-string v9, "NetworkAnalytics:Service"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleNAPClientCall: Caller validation failed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " doStart:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_47} :catch_412
    .catchall {:try_start_b .. :try_end_47} :catchall_410

    .line 246
    monitor-exit p0

    return v5

    .line 249
    .end local p0    # "this":Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
    :cond_49
    :try_start_49
    invoke-direct {v1, v8, v2, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->listOfProfilesForOperation(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 250
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    if-eqz v9, :cond_3f1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3f1

    .line 251
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_59} :catch_412
    .catchall {:try_start_49 .. :try_end_59} :catchall_410

    :goto_59
    :try_start_59
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3e8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_65} :catch_3ed
    .catchall {:try_start_59 .. :try_end_65} :catchall_410

    .line 252
    .local v11, "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    if-nez v11, :cond_8a

    .line 253
    :try_start_67
    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: Profile does not exist for name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v5, -0x3

    .line 255
    const-string v12, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_85} :catch_412
    .catchall {:try_start_67 .. :try_end_85} :catchall_410

    if-eqz v12, :cond_88

    goto :goto_59

    :cond_88
    monitor-exit p0

    return v5

    .line 257
    :cond_8a
    :try_start_8a
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_3ed
    .catchall {:try_start_8a .. :try_end_92} :catchall_410

    if-nez v12, :cond_b8

    .line 258
    :try_start_94
    const-string v12, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: NAP client activating un-owned profile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v5, -0x12

    .line 260
    const-string v12, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b3} :catch_412
    .catchall {:try_start_94 .. :try_end_b3} :catchall_410

    if-eqz v12, :cond_b6

    goto :goto_59

    :cond_b6
    monitor-exit p0

    return v5

    .line 262
    :cond_b8
    if-eqz v4, :cond_d5

    :try_start_ba
    invoke-direct {v1, v11, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->isAllowedRecordingForUsers(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)Z

    move-result v12

    if-nez v12, :cond_d5

    .line 263
    const-string v12, "NetworkAnalytics:Service"

    const-string/jumbo v13, "handleNAPClientCall: Client installed in wrong user trying to collect data"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v5, -0x11

    .line 265
    const-string v12, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d0} :catch_412
    .catchall {:try_start_ba .. :try_end_d0} :catchall_410

    if-eqz v12, :cond_d3

    goto :goto_59

    :cond_d3
    monitor-exit p0

    return v5

    .line 267
    :cond_d5
    if-nez v4, :cond_e9

    .line 268
    :try_start_d7
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v12

    if-eq v12, v7, :cond_e9

    .line 269
    const-string v10, "NetworkAnalytics:Service"

    const-string/jumbo v12, "handleNAPClientCall: NAP client failed to stop the connection since not started by same user"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e5} :catch_412
    .catchall {:try_start_d7 .. :try_end_e5} :catchall_410

    .line 270
    const/16 v5, -0x12

    .line 271
    monitor-exit p0

    return v5

    .line 274
    :cond_e9
    const/16 v14, -0x3e7

    if-eqz v4, :cond_2d6

    .line 275
    if-nez v3, :cond_fa

    .line 276
    :try_start_ef
    const-string v10, "NetworkAnalytics:Service"

    const-string/jumbo v12, "handleNAPClientCall: Client trying to collect data with null bundle flow information"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f7} :catch_412
    .catchall {:try_start_ef .. :try_end_f7} :catchall_410

    .line 277
    const/4 v5, -0x4

    .line 278
    monitor-exit p0

    return v5

    .line 280
    :cond_fa
    :try_start_fa
    const-string/jumbo v15, "record_type"

    const/4 v12, -0x1

    invoke-virtual {v3, v15, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 281
    .local v12, "flowTypeFromBundle":I
    if-ltz v12, :cond_2c2

    const/4 v15, 0x2

    if-le v12, v15, :cond_10d

    move/from16 v18, v0

    move/from16 v17, v5

    goto/16 :goto_2c6

    .line 286
    :cond_10d
    const-string/jumbo v15, "interval_value"

    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_114} :catch_3ed
    .catchall {:try_start_fa .. :try_end_114} :catchall_410

    .line 287
    .local v15, "intervalValueFromBundle":I
    const/16 v13, 0x3c

    if-eq v15, v14, :cond_129

    if-lt v15, v13, :cond_11e

    const/16 v13, 0x3840

    if-le v15, v13, :cond_129

    .line 288
    :cond_11e
    :try_start_11e
    const-string v10, "NetworkAnalytics:Service"

    const-string/jumbo v13, "handleNAPClientCall: Client trying to collect data with Invalid interval information"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_126} :catch_412
    .catchall {:try_start_11e .. :try_end_126} :catchall_410

    .line 289
    const/4 v5, -0x4

    .line 290
    monitor-exit p0

    return v5

    .line 293
    :cond_129
    if-eq v15, v14, :cond_190

    const/16 v13, 0x3c

    if-lt v15, v13, :cond_190

    const/16 v13, 0x3840

    if-gt v15, v13, :cond_190

    .line 294
    :try_start_133
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18b

    .line 295
    sget-object v13, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "supportedVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 297
    .local v17, "currentVersion":Ljava/lang/String;
    const-string v14, "NetworkAnalytics:Service"

    move/from16 v18, v0

    .end local v0    # "callingUid":I
    .local v18, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleNAPClientCall: intermediate flows : current knox version : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    .end local v17    # "currentVersion":Ljava/lang/String;
    .local v3, "currentVersion":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_169} :catch_3ed
    .catchall {:try_start_133 .. :try_end_169} :catchall_410

    move/from16 v17, v5

    .end local v5    # "returnValue":I
    .local v17, "returnValue":I
    :try_start_16b
    const-string v5, " supported knox version : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v3, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_194

    .line 299
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleNAPClientCall: Client trying to collect data not supported in current version"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_188} :catch_2d1
    .catchall {:try_start_16b .. :try_end_188} :catchall_410

    .line 300
    const/4 v0, -0x4

    .line 301
    .end local v17    # "returnValue":I
    .local v0, "returnValue":I
    monitor-exit p0

    return v0

    .line 294
    .end local v3    # "currentVersion":Ljava/lang/String;
    .end local v13    # "supportedVersion":Ljava/lang/String;
    .end local v18    # "callingUid":I
    .local v0, "callingUid":I
    .restart local v5    # "returnValue":I
    :cond_18b
    move/from16 v18, v0

    move/from16 v17, v5

    .end local v0    # "callingUid":I
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    .restart local v18    # "callingUid":I
    goto :goto_194

    .line 293
    .end local v17    # "returnValue":I
    .end local v18    # "callingUid":I
    .restart local v0    # "callingUid":I
    .restart local v5    # "returnValue":I
    :cond_190
    move/from16 v18, v0

    move/from16 v17, v5

    .line 306
    .end local v0    # "callingUid":I
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    .restart local v18    # "callingUid":I
    :cond_194
    :goto_194
    :try_start_194
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getSetActivatedProfiles()Ljava/util/Set;

    move-result-object v0

    .line 307
    .local v0, "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1e1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1e1

    .line 308
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 309
    .local v5, "activationMapProfile":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v13, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getActiveStateForName(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;

    move-result-object v13

    .line 310
    .local v13, "profileFromActivationMap":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    if-nez v13, :cond_1bb

    .line 311
    goto :goto_1a6

    .line 313
    :cond_1bb
    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationState()I

    move-result v14

    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-ne v0, v14, :cond_1db

    .line 314
    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationFlowType()I

    move-result v0

    if-ne v0, v12, :cond_1d0

    invoke-virtual {v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;->getActivationIntervalValue()I

    move-result v0

    if-eq v0, v15, :cond_1db

    .line 315
    :cond_1d0
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v3, "handleNAPClientCall: Client trying to collect data with wrong flow or interval"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1d8} :catch_2d1
    .catchall {:try_start_194 .. :try_end_1d8} :catchall_410

    .line 316
    const/4 v0, -0x4

    .line 317
    .end local v17    # "returnValue":I
    .local v0, "returnValue":I
    monitor-exit p0

    return v0

    .line 320
    .end local v0    # "returnValue":I
    .end local v5    # "activationMapProfile":Ljava/lang/String;
    .end local v13    # "profileFromActivationMap":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPProfileActivation;
    .restart local v17    # "returnValue":I
    :cond_1db
    move-object/from16 v0, v19

    goto :goto_1a6

    .line 308
    .end local v19    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1de
    move-object/from16 v19, v0

    .end local v0    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1e3

    .line 307
    .end local v19    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e1
    move-object/from16 v19, v0

    .line 322
    .end local v0    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1e3
    :try_start_1e3
    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setFlowTypeForProfile(I)V

    .line 323
    invoke-virtual {v11, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->setIntervalValueForProfile(I)V

    .line 325
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29b

    .line 326
    sget-object v0, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_3:Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "supportedVersion":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v3

    .line 328
    .restart local v3    # "currentVersion":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_23d

    .line 329
    iget-object v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v5
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_216} :catch_2d1
    .catchall {:try_start_1e3 .. :try_end_216} :catchall_410

    .line 330
    .end local v17    # "returnValue":I
    .local v5, "returnValue":I
    if-gez v5, :cond_26c

    .line 331
    :try_start_218
    const-string v10, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23b
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_23b} :catch_412
    .catchall {:try_start_218 .. :try_end_23b} :catchall_410

    .line 332
    monitor-exit p0

    return v5

    .line 335
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    :cond_23d
    const/4 v13, 0x0

    :try_start_23e
    iget-object v5, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openCharDevice(I)I

    move-result v5
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_245} :catch_2d1
    .catchall {:try_start_23e .. :try_end_245} :catchall_410

    .line 336
    .end local v17    # "returnValue":I
    .restart local v5    # "returnValue":I
    if-gez v5, :cond_26c

    .line 337
    :try_start_247
    const-string v10, "NetworkAnalytics:Service"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " doStart:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_26a} :catch_412
    .catchall {:try_start_247 .. :try_end_26a} :catchall_410

    .line 338
    monitor-exit p0

    return v5

    .line 341
    .end local v0    # "supportedVersion":Ljava/lang/String;
    .end local v3    # "currentVersion":Ljava/lang/String;
    :cond_26c
    nop

    .line 347
    :try_start_26d
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDriver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->checkNcmVersionMismatch()I

    move-result v0

    move v5, v0

    .line 348
    if-gez v5, :cond_2db

    .line 349
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleNAPClientCall: ncm version match failed for profile:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " doStart:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_299} :catch_412
    .catchall {:try_start_26d .. :try_end_299} :catchall_410

    .line 350
    monitor-exit p0

    return v5

    .line 342
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    :cond_29b
    const/16 v5, -0x13

    .line 343
    .end local v17    # "returnValue":I
    .restart local v5    # "returnValue":I
    :try_start_29d
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleNAPClientCall: file descriptor failed for profile:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " doStart:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2c0} :catch_412
    .catchall {:try_start_29d .. :try_end_2c0} :catchall_410

    .line 344
    monitor-exit p0

    return v5

    .line 281
    .end local v15    # "intervalValueFromBundle":I
    .end local v18    # "callingUid":I
    .end local v19    # "activationMapProfiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "callingUid":I
    :cond_2c2
    move/from16 v18, v0

    move/from16 v17, v5

    .line 282
    .end local v0    # "callingUid":I
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    .restart local v18    # "callingUid":I
    :goto_2c6
    :try_start_2c6
    const-string v0, "NetworkAnalytics:Service"

    const-string/jumbo v3, "handleNAPClientCall: Client trying to collect data with Invalid flow information"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2ce} :catch_2d1
    .catchall {:try_start_2c6 .. :try_end_2ce} :catchall_410

    .line 283
    const/4 v0, -0x4

    .line 284
    .end local v17    # "returnValue":I
    .local v0, "returnValue":I
    monitor-exit p0

    return v0

    .line 384
    .end local v0    # "returnValue":I
    .end local v7    # "bindUserId":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    .end local v11    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .end local v12    # "flowTypeFromBundle":I
    .end local v18    # "callingUid":I
    .restart local v17    # "returnValue":I
    :catch_2d1
    move-exception v0

    move/from16 v5, v17

    goto/16 :goto_413

    .line 274
    .end local v17    # "returnValue":I
    .local v0, "callingUid":I
    .restart local v5    # "returnValue":I
    .restart local v7    # "bindUserId":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    .restart local v11    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    :cond_2d6
    move/from16 v18, v0

    move/from16 v17, v5

    const/4 v13, 0x0

    .line 353
    .end local v0    # "callingUid":I
    .restart local v18    # "callingUid":I
    :cond_2db
    :try_start_2db
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-ne v0, v3, :cond_327

    .line 354
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    invoke-virtual {v0, v3, v12, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    .line 355
    if-gez v5, :cond_383

    .line 356
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " doStart:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_31d} :catch_412
    .catchall {:try_start_2db .. :try_end_31d} :catchall_410

    if-eqz v0, :cond_325

    move-object/from16 v3, p2

    move/from16 v0, v18

    goto/16 :goto_59

    :cond_325
    monitor-exit p0

    return v5

    .line 359
    :cond_327
    :try_start_327
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getUserId()I

    move-result v0

    const/16 v3, -0x3e7

    if-eq v0, v3, :cond_383

    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    .line 360
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    invoke-virtual {v0, v3, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_383

    .line 361
    iget-object v0, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v12

    invoke-virtual {v0, v3, v12, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->updateBindUserIdForProfile(Ljava/lang/String;II)I

    move-result v0

    move v5, v0

    .line 362
    if-gez v5, :cond_383

    .line 363
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: bind userId updation failed for profile after default check:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " doStart:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_379
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_379} :catch_412
    .catchall {:try_start_327 .. :try_end_379} :catchall_410

    if-eqz v0, :cond_381

    move-object/from16 v3, p2

    move/from16 v0, v18

    goto/16 :goto_59

    :cond_381
    monitor-exit p0

    return v5

    .line 367
    :cond_383
    if-eqz v4, :cond_387

    const/4 v0, 0x1

    goto :goto_388

    .line 368
    :cond_387
    move v0, v13

    .line 367
    :goto_388
    :try_start_388
    invoke-direct {v1, v11, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->activateProfile(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;I)I

    move-result v0

    move v5, v0

    .line 369
    if-gez v5, :cond_3bd

    .line 370
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleNAPClientCall: activation failed for profile:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " doStart:"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v0, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_3b8} :catch_412
    .catchall {:try_start_388 .. :try_end_3b8} :catchall_410

    if-eqz v0, :cond_3bb

    goto :goto_3e2

    :cond_3bb
    monitor-exit p0

    return v5

    .line 374
    :cond_3bd
    :try_start_3bd
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    .line 375
    .local v0, "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->profileName:Ljava/lang/String;

    .line 376
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    .line 377
    iput v7, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    .line 378
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->callback:Lcom/samsung/android/knox/net/nap/IStatusCallback;

    .line 379
    nop

    .line 380
    if-eqz v4, :cond_3d8

    const/4 v12, 0x1

    goto :goto_3d9

    .line 381
    :cond_3d8
    move v12, v13

    :goto_3d9
    invoke-virtual {v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getOpUserId()I

    move-result v3

    .line 379
    const/4 v13, 0x1

    invoke-direct {v1, v13, v12, v3, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 382
    .end local v0    # "handlerObj":Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;
    .end local v11    # "profile":Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    nop

    .line 251
    :goto_3e2
    move-object/from16 v3, p2

    move/from16 v0, v18

    goto/16 :goto_59

    .end local v18    # "callingUid":I
    .local v0, "callingUid":I
    :cond_3e8
    move/from16 v18, v0

    move/from16 v17, v5

    .end local v0    # "callingUid":I
    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    .restart local v18    # "callingUid":I
    goto :goto_3f3

    .line 384
    .end local v7    # "bindUserId":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    .end local v17    # "returnValue":I
    .end local v18    # "callingUid":I
    .restart local v5    # "returnValue":I
    :catch_3ed
    move-exception v0

    move/from16 v17, v5

    .end local v5    # "returnValue":I
    .restart local v17    # "returnValue":I
    goto :goto_413

    .line 250
    .end local v17    # "returnValue":I
    .restart local v0    # "callingUid":I
    .restart local v5    # "returnValue":I
    .restart local v7    # "bindUserId":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    :cond_3f1
    move/from16 v18, v0

    .line 387
    .end local v0    # "callingUid":I
    .end local v7    # "bindUserId":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;>;"
    :goto_3f3
    goto :goto_42b

    .line 238
    .restart local v0    # "callingUid":I
    .restart local v7    # "bindUserId":I
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_3f4
    move/from16 v18, v0

    .line 239
    .end local v0    # "callingUid":I
    .restart local v18    # "callingUid":I
    :goto_3f6
    const-string v0, "NetworkAnalytics:Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleNAPClientCall: Invalid parameters. doStart:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_3bd .. :try_end_40d} :catch_412
    .catchall {:try_start_3bd .. :try_end_40d} :catchall_410

    .line 240
    const/4 v0, -0x4

    monitor-exit p0

    return v0

    .line 230
    .end local v5    # "returnValue":I
    .end local v6    # "isPackageActive":Z
    .end local v7    # "bindUserId":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "callingUid":I
    .end local p1    # "profileName":Ljava/lang/String;
    .end local p2    # "flowTypeBunble":Landroid/os/Bundle;
    .end local p3    # "doStart":Z
    :catchall_410
    move-exception v0

    goto :goto_42d

    .line 384
    .restart local v5    # "returnValue":I
    .restart local v6    # "isPackageActive":Z
    .restart local p1    # "profileName":Ljava/lang/String;
    .restart local p2    # "flowTypeBunble":Landroid/os/Bundle;
    .restart local p3    # "doStart":Z
    :catch_412
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    :goto_413
    :try_start_413
    const-string v3, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNAPClientCall: Exception in doStart:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42a
    .catchall {:try_start_413 .. :try_end_42a} :catchall_410

    .line 386
    const/4 v5, -0x1

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42b
    monitor-exit p0

    return v5

    .line 230
    .end local v5    # "returnValue":I
    .end local v6    # "isPackageActive":Z
    .end local p1    # "profileName":Ljava/lang/String;
    .end local p2    # "flowTypeBunble":Landroid/os/Bundle;
    .end local p3    # "doStart":Z
    :goto_42d
    monitor-exit p0

    throw v0
.end method

.method public isProfileActivatedForUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 7
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 445
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 447
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActivatedForUser API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_3c
    const/4 v0, -0x1

    .line 450
    .local v0, "returnValue":I
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_8a

    if-nez p2, :cond_44

    goto :goto_8a

    .line 454
    :cond_44
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->doesAdminOwnProfile(ILjava/lang/String;)I

    move-result v0

    .line 455
    if-gez v0, :cond_77

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActivatedForUser: Profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "is absent or does not belong to adminUid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v0

    .line 460
    :cond_77
    :try_start_77
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, p2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isProfileActivatedForUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7f} :catch_81

    move v0, v1

    .line 464
    goto :goto_89

    .line 461
    :catch_81
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isProfileActivatedForUser: Remove profile to database falied. Exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const/4 v0, -0x1

    .line 465
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_89
    return v0

    .line 451
    :cond_8a
    :goto_8a
    const-string/jumbo v2, "isProfileActivatedForUser: Invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v1, -0x4

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 176
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 146
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    .line 171
    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 172
    :cond_f
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandler:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    .line 158
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->sendMessageToHandler(IIILjava/lang/Object;)V

    .line 159
    :cond_f
    return-void
.end method

.method public registerNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .line 182
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 184
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3c
    if-eqz p1, :cond_f8

    if-nez p2, :cond_42

    goto/16 :goto_f8

    .line 190
    :cond_42
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerNetworkMonitorProfile: allowUserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_65
    const/4 v0, -0x1

    .line 193
    .local v0, "returnValue":I
    :try_start_66
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getJSonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    .local v2, "profileObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->validateJsonContent(Lorg/json/JSONObject;)I

    move-result v3

    move v0, v3

    .line 195
    if-gez v0, :cond_8b

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: JSON validation failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v0

    .line 199
    :cond_8b
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->addProfileToDatabase(ILorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    .line 200
    if-gez v0, :cond_ae

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNetworkMonitorProfile: Add profile to database failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v0

    .line 204
    :cond_ae
    if-nez v0, :cond_cd

    .line 205
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getClientProfileNames(I)Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, "profileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_cd

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_cd

    .line 207
    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_ca

    const-string v4, "The Knox NAP feature has been enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_ca
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->setFeatureProperty(Z)V

    .line 211
    .end local v3    # "profileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_cd
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mConfigStore:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    const-string/jumbo v4, "profile_name"

    invoke-virtual {v3, v4, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getProfileObjectFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_d5} :catch_df
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_d5} :catch_d6

    .end local v2    # "profileObj":Lorg/json/JSONObject;
    goto :goto_e7

    .line 216
    :catch_d6
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "registerNetworkMonitorProfile: Exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const/4 v0, -0x1

    goto :goto_e8

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_df
    move-exception v2

    .line 214
    .local v2, "je":Lorg/json/JSONException;
    const-string/jumbo v3, "registerNetworkMonitorProfile: JSON Parsing Exception"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v0, -0x2

    .line 219
    .end local v2    # "je":Lorg/json/JSONException;
    :goto_e7
    nop

    .line 220
    :goto_e8
    if-nez v0, :cond_f7

    .line 221
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_f2

    .line 222
    invoke-direct {p0, v2, v2, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 224
    :cond_f2
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->constructObjectForBroadcast(IILjava/lang/String;)V

    .line 226
    :cond_f7
    return v0

    .line 187
    .end local v0    # "returnValue":I
    :cond_f8
    :goto_f8
    const-string/jumbo v0, "registerNetworkMonitorProfile: Invalid parameters."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, -0x4

    return v0
.end method

.method public systemReady()V
    .registers 1

    .line 134
    return-void
.end method

.method public unregisterNetworkMonitorProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .registers 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 470
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    const-string v1, "NetworkAnalytics:Service"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->enforceNetworkAnalyticsPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 472
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkMonitorProfile API caller with updated contextInfo is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_3c
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->unregisterNetworkMonitorProfile(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
