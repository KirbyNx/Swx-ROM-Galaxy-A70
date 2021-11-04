.class public Lcom/android/server/enterprise/auditlog/IptablesLogging;
.super Ljava/lang/Object;
.source "IptablesLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;,
        Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEL_FORWARD_LOG:Ljava/lang/String; = "-D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final DEL_INPUT_LOG:Ljava/lang/String; = "-D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final DEL_OUTPUT_LOG:Ljava/lang/String; = "-D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final FORWARD_LOG:Ljava/lang/String; = "-I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final INPUT_LOG:Ljava/lang/String; = "-I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field private static final OUTPUT_LOG:Ljava/lang/String; = "-I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

.field private static final TAG:Ljava/lang/String; = "IptablesLogging"

.field private static mNetdService:Landroid/net/INetd;

.field private static mOemNetdService:Lcom/android/internal/net/IOemNetd;


# instance fields
.field private mIsLogging:Z

.field private mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    .line 70
    new-instance v0, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    .line 71
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->start()V

    .line 72
    return-void
.end method

.method static synthetic access$000()Landroid/net/INetd;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 47
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/internal/net/IOemNetd;
    .registers 1

    .line 47
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/net/IOemNetd;)Lcom/android/internal/net/IOemNetd;
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/net/IOemNetd;

    .line 47
    sput-object p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method static synthetic access$300()Lcom/android/internal/net/IOemNetd;
    .registers 1

    .line 47
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    return-object v0
.end method

.method private static connectNativeNetdService()V
    .registers 3

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "nativeServiceAvailable":Z
    :try_start_1
    const-string/jumbo v1, "netd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    .line 104
    if-nez v1, :cond_11

    .line 105
    return-void

    .line 107
    :cond_11
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_17

    move v0, v1

    .line 110
    goto :goto_1b

    .line 108
    :catch_17
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    if-nez v0, :cond_28

    .line 112
    sget-boolean v1, Lcom/android/server/enterprise/auditlog/IptablesLogging;->DBG:Z

    if-eqz v1, :cond_28

    const-string v1, "IptablesLogging"

    const-string v2, "Can\'t connect to NativeNetdService netd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_28
    return-void
.end method

.method private static getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .registers 3

    .line 117
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_5

    .line 118
    return-object v0

    .line 119
    :cond_5
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_c

    .line 120
    invoke-static {}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->connectNativeNetdService()V

    .line 121
    :cond_c
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_36

    .line 123
    :try_start_10
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1b

    .line 126
    goto :goto_36

    .line 124
    :catch_1b
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get OemNetd listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IptablesLogging"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_36
    :goto_36
    sget-object v0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method


# virtual methods
.method public isNetworkLogOn()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    return v0
.end method

.method turnNetworkLogOff()V
    .registers 5

    .line 88
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-eqz v0, :cond_33

    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 90
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "input"

    const-string v3, "-D INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "output"

    const-string v3, "-D OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "forward"

    const-string v3, "-D FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    .line 98
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_33
    return-void
.end method

.method turnNetworkLogOn()V
    .registers 5

    .line 75
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    if-nez v0, :cond_33

    .line 76
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 77
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "input"

    const-string v3, "-I INPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "output"

    const-string v3, "-I OUTPUT -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "forward"

    const-string v3, "-I FORWARD -j LOG --log-uid --log-prefix IPT_MDM_LOG"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mLooperThread:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/IptablesLogging;->mIsLogging:Z

    .line 85
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_33
    return-void
.end method
