.class public Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.super Ljava/lang/Thread;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;,
        Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;
    }
.end annotation


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final DBG:Z = true

.field private static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HEADER_PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final HTTP_OK:Ljava/lang/String; = "HTTP/1.1 200 OK\n"

.field private static final MEMORY_RAM_PERCENTAGE:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "EnterpriseProxyServer"

.field private static final sAuthPriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/proxy/auth/AuthenticationState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

.field private static sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProxyInfoCache:Landroid/net/ProxyInfo;


# instance fields
.field private mCacheCleanerTimer:Ljava/util/Timer;

.field private mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

.field public mIsRunning:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 136
    const-string v0, "Basic"

    const-string v1, "NTLM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    .line 171
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnterpriseProxyHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    .line 180
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .param p1, "x1"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getConnectivityManagerService()Lcom/android/server/ConnectivityService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/ProxyInfo;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 1
    .param p0, "x0"    # Landroid/net/ProxyInfo;

    .line 106
    sput-object p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Lcom/android/server/ConnectivityService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 106
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .param p0, "requestLine"    # [Ljava/lang/String;

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "HEAD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v1, v3, :cond_12

    aget-object v1, p0, v2

    goto :goto_15

    :cond_12
    const/4 v1, 0x0

    aget-object v1, p0, v1

    :goto_15
    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    array-length v1, p0

    if-le v1, v3, :cond_27

    aget-object v1, p0, v3

    goto :goto_29

    :cond_27
    aget-object v1, p0, v2

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    const-string v2, "Connection: keep-alive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    const-string v2, "Proxy-Connection: keep-alive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    return-object v0
.end method

.method private checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z
    .registers 10
    .param p1, "credentials"    # Ljava/lang/String;
    .param p2, "stateCache"    # Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .param p3, "callback"    # Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 1046
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    move-result-object v0

    .line 1047
    .local v0, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    const/4 v1, -0x1

    .line 1049
    .local v1, "authenticationState":I
    if-eqz v0, :cond_3d

    .line 1050
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getRequestLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "splitLine":[Ljava/lang/String;
    nop

    .line 1053
    invoke-virtual {p2}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-interface {v0, p1, v3, v2}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I

    move-result v1

    .line 1055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCredentialsReceived: authentication status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EnterpriseProxyServer"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    if-eqz p3, :cond_3d

    .line 1059
    :try_start_33
    invoke-interface {p3, v1}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;->onAuthenticationResult(I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1062
    goto :goto_3d

    .line 1060
    :catch_37
    move-exception v3

    .line 1061
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "Failed talking with proxy credentials callback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    .end local v2    # "splitLine":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3d
    :goto_3d
    if-nez v1, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    const/4 v2, 0x0

    :goto_42
    return v2
.end method

.method private static convertUrlForAuth(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "urlString"    # Ljava/lang/String;

    .line 1215
    if-eqz p0, :cond_23

    .line 1217
    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    :cond_23
    return-object p0
.end method

.method private static getAvailableMemory()J
    .registers 4

    .line 1121
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 1122
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1123
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1125
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method private getConnectivityManagerService()Lcom/android/server/ConnectivityService;
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    if-nez v0, :cond_f

    .line 961
    nop

    .line 962
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 964
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 157
    .local v0, "result":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    if-nez v0, :cond_19

    .line 158
    const-class v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    monitor-enter v1

    .line 159
    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    move-object v0, v2

    .line 160
    if-nez v0, :cond_14

    .line 161
    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    sput-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    .line 163
    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 165
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    return-object v1
.end method

.method public static getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "diffEmptyLine"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;
    .registers 18
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "diffEmptyLine"    # Z
    .param p2, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    move/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1143
    .local v2, "byteBuffer":I
    const-string v3, ""

    if-gez v2, :cond_14

    .line 1144
    if-eqz p1, :cond_13

    const/4 v3, 0x0

    return-object v3

    .line 1145
    :cond_13
    return-object v3

    .line 1149
    :cond_14
    invoke-static {}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getAvailableMemory()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-long v4, v4

    .line 1151
    .local v4, "maxLineSize":J
    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v6, :cond_25

    move v6, v7

    goto :goto_26

    :cond_25
    move v6, v8

    .line 1152
    .local v6, "checkContentLength":Z
    :goto_26
    const-wide/16 v9, 0x2

    .line 1154
    .local v9, "bytesRead":J
    :cond_28
    const/16 v11, 0xd

    if-eq v2, v11, :cond_30

    .line 1155
    int-to-char v11, v2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1158
    :cond_30
    const-wide/16 v11, 0x2

    if-eqz v6, :cond_3b

    int-to-long v13, v0

    mul-long/2addr v13, v11

    cmp-long v13, v9, v13

    if-ltz v13, :cond_3b

    .line 1159
    goto :goto_65

    .line 1160
    :cond_3b
    cmp-long v13, v9, v4

    if-lez v13, :cond_5a

    .line 1161
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 1162
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v7

    .line 1161
    const-string v7, "Read more bytes (%d) than the maximum supported (%d) for a single line"

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EnterpriseProxyServer"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-object v3

    .line 1165
    :cond_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1166
    add-long/2addr v9, v11

    .line 1167
    const/16 v11, 0xa

    if-eq v2, v11, :cond_65

    if-gez v2, :cond_28

    .line 1169
    :cond_65
    :goto_65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getRequiredAuthenticationType(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .registers 15
    .param p1, "proxyString"    # Ljava/lang/String;
    .param p2, "requestLine"    # [Ljava/lang/String;

    .line 815
    const-string v0, "EnterpriseProxyServer"

    new-instance v1, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;

    invoke-direct {v1}, Lcom/android/server/enterprise/proxy/auth/NoCredentialsAuthenticator;-><init>()V

    .line 818
    .local v1, "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    const/4 v2, 0x0

    .line 819
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 820
    .local v3, "authType":Ljava/lang/String;
    :try_start_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v4, "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 824
    .local v5, "authenticationRequired":Z
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, "splitProxy":[Ljava/lang/String;
    new-instance v7, Ljava/net/Socket;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v7, v8, v10}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_24} :catch_c7

    .line 826
    .local v7, "server":Ljava/net/Socket;
    :try_start_24
    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    .line 827
    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 830
    .local v8, "is":Ljava/io/InputStream;
    :cond_33
    invoke-static {v8}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_bd

    move-object v2, v10

    .line 831
    const-string v10, " "

    if-eqz v2, :cond_5a

    :try_start_3c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5a

    if-eqz v5, :cond_5a

    .line 832
    const-string v11, "Proxy-Authenticate:"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 833
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 834
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_5a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_75

    const-string v11, "HTTP/1."

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 839
    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    const-string v11, "407"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move v5, v10

    .line 841
    :cond_75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_79
    .catchall {:try_start_3c .. :try_end_79} :catchall_bd

    if-gtz v10, :cond_33

    .line 842
    .end local v8    # "is":Ljava/io/InputStream;
    :try_start_7b
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 846
    .end local v7    # "server":Ljava/net/Socket;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_82
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 847
    .local v8, "item":Ljava/lang/String;
    if-eqz v8, :cond_a5

    const-string v9, "NTLM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 848
    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 849
    new-instance v9, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;

    invoke-direct {v9}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;-><init>()V

    move-object v1, v9

    goto :goto_bb

    .line 850
    :cond_a5
    if-eqz v8, :cond_bb

    const-string v9, "Basic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 851
    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 852
    new-instance v9, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;

    invoke-direct {v9}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;-><init>()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_ba} :catch_c7

    move-object v1, v9

    .line 854
    .end local v8    # "item":Ljava/lang/String;
    :cond_bb
    :goto_bb
    goto :goto_82

    .line 858
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "authType":Ljava/lang/String;
    .end local v4    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "authenticationRequired":Z
    .end local v6    # "splitProxy":[Ljava/lang/String;
    :cond_bc
    goto :goto_e4

    .line 825
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "authType":Ljava/lang/String;
    .restart local v4    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "authenticationRequired":Z
    .restart local v6    # "splitProxy":[Ljava/lang/String;
    .restart local v7    # "server":Ljava/net/Socket;
    :catchall_bd
    move-exception v8

    :try_start_be
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    goto :goto_c6

    :catchall_c2
    move-exception v9

    :try_start_c3
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .end local p1    # "proxyString":Ljava/lang/String;
    .end local p2    # "requestLine":[Ljava/lang/String;
    :goto_c6
    throw v8
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c7} :catch_c7

    .line 855
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "authType":Ljava/lang/String;
    .end local v4    # "authTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "authenticationRequired":Z
    .end local v6    # "splitProxy":[Ljava/lang/String;
    .end local v7    # "server":Ljava/net/Socket;
    .restart local v1    # "proxyAuthenticator":Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .restart local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    .restart local p1    # "proxyString":Ljava/lang/String;
    .restart local p2    # "requestLine":[Ljava/lang/String;
    :catch_c7
    move-exception v2

    .line 856
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRequiredAuthenticationType IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 860
    .end local v2    # "e":Ljava/io/IOException;
    :goto_e4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning authType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-object v1
.end method

.method private hasPriority(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)Z
    .registers 6
    .param p1, "newAuth"    # Ljava/lang/String;
    .param p2, "current"    # Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    .line 875
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 876
    .local v0, "currentAuth":Ljava/lang/String;
    :goto_9
    sget-object v1, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthPriorities:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-le v1, v2, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method private onCredentialsReceived(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V
    .registers 13
    .param p1, "info"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    .line 998
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 999
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;->getCallback()Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v1

    .line 1001
    .local v1, "callback":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    if-nez v0, :cond_b

    return-void

    .line 1003
    :cond_b
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1004
    .local v2, "result":I
    const-string/jumbo v3, "proxy"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, "proxyString":Ljava/lang/String;
    const-string v4, "credentials"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, "credentials":Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1009
    .local v5, "stateCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/proxy/auth/AuthenticationState;>;"
    if-eqz v5, :cond_9b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9b

    .line 1010
    const-string v6, "EnterpriseProxyServer"

    if-nez v2, :cond_71

    const/4 v7, 0x0

    .line 1011
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    invoke-direct {p0, v4, v7, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->checkCredentialsReceived(Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1012
    const-string/jumbo v7, "onCredentialsReceived: retrying proxy connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .line 1016
    .local v8, "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    new-instance v9, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v8, v4, v10}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/auth/AuthenticationState;Ljava/lang/String;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    .line 1017
    .local v9, "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    iget-object v10, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1018
    .end local v8    # "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .end local v9    # "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    goto :goto_4a

    .line 1021
    :cond_62
    sget-object v7, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v7, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v8, 0x3e1

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_9b

    .line 1025
    :cond_71
    const/4 v7, -0x2

    if-ne v2, v7, :cond_9b

    .line 1026
    const-string/jumbo v7, "onCredentialsReceived: canceling dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;

    .line 1030
    .local v7, "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->getSource()Ljava/net/Socket;

    move-result-object v8

    .line 1031
    .local v8, "clientConnection":Ljava/net/Socket;
    if-eqz v8, :cond_95

    .line 1033
    :try_start_90
    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 1035
    goto :goto_95

    .line 1034
    :catch_94
    move-exception v9

    .line 1037
    .end local v7    # "stateCache":Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
    .end local v8    # "clientConnection":Ljava/net/Socket;
    :cond_95
    :goto_95
    goto :goto_7e

    .line 1039
    :cond_96
    sget-object v6, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    :cond_9b
    :goto_9b
    return-void
.end method

.method private refreshCredentialsDialogFails()V
    .registers 5

    .line 914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 916
    .local v0, "token":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.mdm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 920
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    nop

    .line 922
    return-void

    .line 920
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    throw v2
.end method

.method public static sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1178
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1179
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 1180
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 1181
    return-void
.end method

.method public static sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1173
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1174
    return-void
.end method


# virtual methods
.method public declared-synchronized clearCaches()V
    .registers 2

    monitor-enter p0

    .line 893
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->clearCaches(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 894
    monitor-exit p0

    return-void

    .line 892
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCaches(Z)V
    .registers 4
    .param p1, "clearCredentials"    # Z

    monitor-enter p0

    .line 897
    :try_start_1
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Clearing caches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-eqz p1, :cond_f

    .line 900
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyCredentialsCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 902
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :cond_f
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sAuthenticationStateCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 903
    sget-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyAuthenticationTypeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 904
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sProxyInfoCache:Landroid/net/ProxyInfo;

    .line 906
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->refreshCredentialsDialogFails()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 907
    monitor-exit p0

    return-void

    .line 896
    .end local p1    # "clearCredentials":Z
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPort()I
    .registers 2

    monitor-enter p0

    .line 968
    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 968
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCredentialsReceived(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    .line 989
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    if-eqz v0, :cond_13

    .line 990
    const/4 v1, 0x1

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    invoke-direct {v2, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;-><init>(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 993
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mHandler:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    .end local v0    # "msg":Landroid/os/Message;
    :cond_13
    return-void
.end method

.method public run()V
    .registers 7

    .line 260
    const-string v0, "Failed to start proxy server "

    const-string v1, "EnterpriseProxyServer"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 262
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->setPort(I)V

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting clients to connect. Port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_2b
    iget-boolean v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z
    :try_end_2d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_2d} :catch_68
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2d} :catch_54

    if-eqz v3, :cond_7b

    .line 268
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 271
    .local v3, "socket":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 272
    new-instance v4, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$1;)V

    .line 273
    .local v4, "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 274
    .end local v4    # "parser":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$ProxyConnection;
    goto :goto_53

    .line 275
    :cond_4b
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4e} :catch_4f
    .catch Ljava/net/SocketException; {:try_start_2f .. :try_end_4e} :catch_68

    goto :goto_53

    .line 277
    .end local v3    # "socket":Ljava/net/Socket;
    :catch_4f
    move-exception v3

    .line 278
    .local v3, "e":Ljava/io/IOException;
    :try_start_50
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catch Ljava/net/SocketException; {:try_start_50 .. :try_end_53} :catch_68
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 279
    .end local v3    # "e":Ljava/io/IOException;
    :goto_53
    goto :goto_2b

    .line 283
    :catch_54
    move-exception v3

    .line 284
    .local v3, "e1":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 281
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_68
    move-exception v3

    .line 282
    .local v3, "e":Ljava/net/SocketException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_7b
    nop

    .line 287
    :goto_7c
    iput-boolean v2, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    .line 288
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    monitor-enter p0

    .line 953
    :try_start_1
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 954
    iget v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    .line 956
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :cond_b
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 957
    monitor-exit p0

    return-void

    .line 952
    .end local p1    # "callback":Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPort(I)V
    .registers 3
    .param p1, "port"    # I

    monitor-enter p0

    .line 946
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    if-eqz v0, :cond_a

    .line 947
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCallback:Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;

    invoke-interface {v0, p1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyCallback;->setProxyPort(I)V

    .line 949
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :cond_a
    iput p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mPort:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 950
    monitor-exit p0

    return-void

    .line 945
    .end local p1    # "port":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startServer()V
    .registers 10

    monitor-enter p0

    .line 880
    :try_start_1
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Calling startServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    if-nez v0, :cond_33

    .line 883
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Enterprise Proxy server not running, starting it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    .line 886
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$CacheCleaner;-><init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 887
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 886
    move-wide v3, v5

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 888
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->start()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 890
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :cond_33
    monitor-exit p0

    return-void

    .line 879
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopServer()V
    .registers 5

    monitor-enter p0

    .line 925
    :try_start_1
    const-string v0, "EnterpriseProxyServer"

    const-string v1, "Calling stopServer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mIsRunning:Z

    .line 928
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_34

    if-eqz v0, :cond_1e

    .line 930
    :try_start_f
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 932
    sput-object v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sEnterpriseProxyServer:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_1a
    .catchall {:try_start_f .. :try_end_19} :catchall_34

    .line 935
    goto :goto_1e

    .line 933
    .end local p0    # "this":Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
    :catch_1a
    move-exception v0

    .line 934
    .local v0, "e":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 937
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_27

    .line 938
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mCacheCleanerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 942
    :cond_27
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "EnterpriseProxyServer"

    const/16 v2, 0x3e1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_34

    .line 943
    monitor-exit p0

    return-void

    .line 924
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
